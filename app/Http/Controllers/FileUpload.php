<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Csv;
class FileUpload extends Controller
{
    /**
     * Загрузка файлов
     *
     * @param $name_table
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function UploadFile($name_table,Request $request)
    {
        $pattern = [
            'ID акции' => ['type' => 'integer', 'case' => ''],
            'Название акции' => ['type' => 'text', 'case' => 'down'],
            'Дата начала акции' => ['type' => 'date:integer', 'case' => ''],
            'Дата окончания' => ['type' => 'string', 'case' => ''],
            'Статус' => ['type' => 'boolean', 'case' => '', 'true'=>'on'],
            'URL' => ['type' => 'string', 'case' => 'down'],
        ];


        $file = $request->allFiles()['file'];
        $data = Csv::CsvToArray($file->getRealPath());
        $data = Csv::CreateUrl(['ID акции','Название акции'],$data,'down');
        $data = Csv::ValidateArray($data,$pattern);
        $data=Csv::createTable($name_table,$data,$pattern);
        return response()->json($data);
    }


}
