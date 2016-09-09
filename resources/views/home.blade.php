@extends('layouts.app')

@section('content')
<div class="container" ng-controller="parseCtrl">
    <div class="row">
        [[gallery]]
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    <div class="uk-grid" >
                        <div class="ul-width-small-1-1 uk-width-medium-1-1 uk-width-large-1-1">
                            {{--<div class="form-group">
                                <label>Метод добавления</label>
                                <br>
                                <select ng-model="Table.Method" >
                                    <option value="" >Выбирите метод добавления</option>
                                    <option value="new" >В новую</option>
                                    <option value="isset">В существующую</option>
                                </select>
                            </div>--}}
                            <div class="form-group">
                                <input type="text" name="table_name" ng-change="issetTable()"  class="form-control" placeholder="Введите название таблицы" value="" ng-model="Table.name" >

                                <span id="table_name_label_error" class="uk-alert-warning" ></span>
                                <span id="table_name_label_success" class="uk-alert-success" ></span>
                                <a ng-if="Table.isset" class=" uk-float-right uk-button uk-button-success" ng-click="getContent()" >Загрузить таблицу</a>

                            </div>
                        </div>
                        <div class="ul-width-small-1-1 uk-width-medium-1-1 uk-width-large-1-1">
                            <div class="file_upload">
                                <i class="uk-icon-cloud-upload uk-icon-medium uk-text-muted uk-margin-small-right"></i>
                                Перетащите изобрадения для загрузки или
                                <label for="upload-file" class="uk-form-file">выберите его</label>.
                                <input id="upload-file" class="file_upload" ng-form="uploadFile()" type="file"
                                       file-model="tempFile" multiple/>
                            </div>
                            <div ng-if="myFile.length" class="box box-primary">
                                <div class="box-header ui-sortable-handle" style="cursor: move;">
                                    <i class="ion ion-clipboard"></i>
                                    <h3 class="box-title">Список файлов</h3>
                                </div>
                                <div class="box-body uk-container uk-container-center">
                                    <div class="uk-grid file">
                                        <div ng-repeat="(key,val) in myFile" data-uk-filter="landing_page"
                                             data-grid-prepared="true"
                                             class="uk-width-small-1-1 uk-width-medium-1-1 uk-width-large-1-1">
                                            <div class="uk-width-small-1-1 uk-width-medium-1-1 uk-width-large-1-1">
                                                <h3>[[val.name]]</h3>
                                                <p>
                                                    [[val.type]]<br>
                                                    Разме: [[val.size/1024 ]]кб <br>
                                                </p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class=" uk-margin-top box-footer clearfix no-border">
                                    <button ng-click="uploadFile()" type="button" class="btn btn-default pull-right"><i
                                                class="fa fa-plus"></i><span
                                                ng-if="myFile.length==1">Загрузить файл</span><span
                                                ng-if="myFile.length>1">Загрузить файлы</span></button>
                                </div>
                            </div>
                        </div>
                        <div class="ul-width-small-1-1 uk-width-medium-1-1 uk-width-large-1-1">
                            <div class="uk-overflow-container">
                                <table class="uk-table">
                                    <thead>
                                    <tr>
                                        <th ng-repeat="(key,val) in Table.column" ng-if="val!='id'">[[val]]</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr ng-repeat="(key,val) in Content">
                                        <td ng-repeat="(key1,val1) in Table.column" ng-if="val1!='id'"><input
                                                    type="text" ng-model="val[val1]"></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <br ng-if="Content.length">
                            <a ng-if="Content.length" class="uk-button uk-button-success" ng-click="UpdateTable()" >Сохранить изменения</a>
                        </div>

                    </div>
            </div>
        </div>
    </div>
</div>
@endsection
