<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class Angular extends Controller
{
    /**
     * Получени данных таблицы
     *
     * @param $name
     * @return \Illuminate\Http\JsonResponse
     */
    public function getTable($name)
    {
        if (Schema::hasTable($name)) {
            if (!in_array($name, ['users', 'migrations'])) {
                $columns = Schema::getColumnListing($name);
                $data = DB::table($name)->get();
                return response()->json(['data' => $data, 'column' => $columns]);
            } else {
                return response()->json(false);
            }
        } else {
            return response()->json(false);
        }
    }

    /**
     * Обновление данных таюлицы
     *
     * @param $name
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function setTable($name,Request $request)
    {
        $data=$request->all();
        foreach ($data as $value){
            $id=$value['id'];
            unset($value['id']);
            $data=DB::table($name)->where('id',$id)->update($value);
        }
        return response()->json($data);
    }

    /**
     * Проверка существование таблицы
     *
     * @param $name
     * @return \Illuminate\Http\JsonResponse
     */
    public function issetTable($name)
    {
        return response()->json(Schema::hasTable($name));
    }
}
