<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;

class Csv extends Model
{
    /**
     * Создает таблицу по CSV
     *
     * @param $name_table
     * @param $pattern
     */
    public static function createTable($name_table,$data,$pattern)
    {
        if (!Schema::hasTable($name_table)) {
            Schema::create($name_table, function (Blueprint $table) use ($pattern) {
                $table->increments('id');
                foreach ($pattern as $key => $item) {
                    switch ($item['type']) {
                        case 'integer':
                            $table->integer($key);
                            break;
                        case 'date:integer':
                            $table->integer($key);
                            break;
                        case 'date':
                            $table->date($key);
                            break;
                        case 'string':
                            $table->string($key);
                            break;
                        case 'text':
                            $table->text($key);
                            break;
                        case 'boolean':
                            $table->boolean($key);
                            break;
                    }
                }
            });
        };
        return DB::table($name_table)->insert($data);
    }

    /**
     * TODO Валидация CSV файла приведение к ассоциативному массиву
     *
     * @param $file
     * @return array
     */
    public static function CsvToArray($file)
    {
        $result = [];
        $title = false;
        $row = 0;
        if (($handle = fopen($file, "r")) !== FALSE) {

                while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
                    if (!$title) {
                        $title = $data;
                    } else {

                        for ($c = 0; $c < count($data); $c++) {
                            $result[$row][$title[$c]] = $data[$c];
                        }
                        $row++;
                    }
                }
                fclose($handle);
            }
        return $result;
    }

    /**
     * Транслитирует текст и управляет регистром
     *
     * @param $text
     * @param $case
     * @return mixed|string
     */
    public static function Translit($text,$case=false)
    {
        $translit_table = [
            "а" => "a", "ый" => "iy", "ые" => "ie",
            "б" => "b", "в" => "v", "г" => "g",
            "д" => "d", "е" => "e", "ё" => "yo",
            "ж" => "zh", "з" => "z", "и" => "i",
            "й" => "y", "к" => "k", "л" => "l",
            "м" => "m", "н" => "n", "о" => "o",
            "п" => "p", "р" => "r", "с" => "s",
            "т" => "t", "у" => "u", "ф" => "f",
            "х" => "kh", "ц" => "ts", "ч" => "ch",
            "ш" => "sh", "щ" => "shch", "ь" => "",
            "ы" => "y", "ъ" => "", "э" => "e",
            "ю" => "yu", "я" => "ya", "йо" => "yo",
            "ї" => "yi", "і" => "i", "є" => "ye",
            "ґ" => "g", "," => "-", "." => "-",
            ":" => "-", " " => "-",
        ];

        $text = $case == 'up' ? mb_strtoupper($text) : $text;
        $text = $case == 'down' ? mb_strtolower($text) : $text;

        foreach ($translit_table as $key => $char) {
            $text = str_replace($key, $char, $text);
        }
        $text = preg_replace('/(-){3,}/', '-', $text);
        $text = preg_replace('/(-){2,}/', '-', $text);
        $text = preg_replace('/^-/', '', $text);
        return $text;
    }

    /**
     * Проверяет и приводит ктипу в соответствии с pattern
     *
     * @param $data
     * @param bool $pattern
     * @return mixed
     */
    public static function ValidateArray($data,$pattern=false)
    {
        foreach ($data as $key=>$item) {
            foreach ($item as $key1 => $item1) {
                switch ($pattern[$key1]['type']) {
                    case 'integer':
                        settype($data[$key][$key1], 'integer');
                        break;
                    case 'date:integer':
                        $data[$key][$key1] = strtotime($data[$key][$key1]);
                        break;
                    case 'date':
                        /* Возможно поместить операции с датой */
                        break;
                    case 'string':
                        settype($data[$key][$key1], 'string');
                        break;
                    case 'text':
                        settype($data[$key][$key1], 'string');
                        break;
                    case 'boolean':
                        if ($pattern[$key1]['true']) {
                            if ($pattern[$key1]['true'] == $data[$key][$key1]) {
                                $data[$key][$key1] = true;
                            } else {
                                $data[$key][$key1] = false;
                            }
                        }
                        else {
                            settype($data[$key][$key1], 'boolean');
                        }
                        break;
                }

            }
        }
        return $data;

    }

    public static function CreateUrl($fields,$data,$case)
    {
        foreach ($data as $key=>$item){
            $data[$key]['URL']='';
            foreach ($fields as $value) {
                $data[$key]['URL'] =$data[$key]['URL'].self::Translit($item[$value],$case);
                }
        }
        return $data;
    }
}
