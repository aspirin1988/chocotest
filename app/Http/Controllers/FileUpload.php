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
            'id-aktsii' => ['type' => 'integer', 'case' => ''],
            'data-nachala-aktsii' => ['type' => 'date:integer', 'case' => ''],
            'data-okonchaniya' => ['type' => 'string', 'case' => ''],
            'nazvanie-aktsii' => ['type' => 'text', 'case' => 'down'],
            'status' => ['type' => 'boolean', 'case' => '', 'true'=>'on'],
        ];

        $file = $request->allFiles()['file'];
        $data = Csv::Translit($file, 'down');
        $data = Csv::CsvToArray($file);
        $file = Csv::ValidateArray($data,$pattern);
        $file=Csv::createTable($name_table,$file,$pattern);

        return response()->json($file);
    }


}
