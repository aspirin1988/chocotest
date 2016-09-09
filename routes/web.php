<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::group(['middleware' => ['auth']], function () {

    Route::get('/home', 'HomeController@index');
    Route::get('/foo', function () {return 'Hello World'; });
    Route::get('/angular/getContent/{name}', 'Angular@getTable');
    Route::get('/angular/issetTable/{name}', 'Angular@issetTable');

    /**
     * Роут для загрузки файлов
     */
    Route::post('/upload/file/{name}', 'FileUpload@UploadFile');
    Route::post('/angular/setContent/{name}', 'Angular@setTable');

});
