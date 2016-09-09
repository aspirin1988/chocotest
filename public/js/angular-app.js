/**
 * Created by serg on 08.09.16.
 */
var app = angular.module('chocotest',[]);

app.directive('fileModel', ['$parse', function ($parse) {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {
            var model = $parse(attrs.fileModel);
            var modelSetter = model.assign;
            element.bind('change', function(){
                scope.$apply(function(){
                    modelSetter(scope, element[0].files);
                });
            });
        }
    };
}]);

app.service('fileUpload', ['$http', function ($http) {

    this.uploadFileToUrl = function(file, uploadUrl, call){
        var fd = new FormData();
        fd.append('file', file);

        var result=false;

        return $http({
            method: 'POST',
            url: uploadUrl,
            data:fd,
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
        }).then(function success(response) {
            call(response.data);
        }, function error(response) {
            // UIkit.notify("Невозможно загрузить данное изображение!", {pos:'top-right',status:'danger',timeout:2000});
        });
    }
}]);

app.config(function ($interpolateProvider) {
    $interpolateProvider.startSymbol('[[');
    $interpolateProvider.endSymbol(']]');
});

app.controller('parseCtrl',function ($scope, $http, $sce ,fileUpload) {

    $scope.Table = {'name':'data','isset':false};
    $scope.Method = {};
    $scope.Content = {};

    $scope.myFile=[];
    $scope.myPhoto=[];
    $scope.tempFile=[];
    $scope.tempPhoto=[];
    $scope.PostFiles=[];
    $scope.CustomFields=[];
    $scope.All=false;
    $scope.Category=[];
    $scope.Video=[];
    $scope.newVideo={};
    $scope.PageCountI=[];
    $scope.PageCountV=[];
    $scope.PageCurrentI=0;
    $scope.PageCurrentV=0;
    $scope.SearchV='';
    $scope.SearchI='';


    $scope.getIssetT=function (callback) {
        $http({
            method: 'GET',
            url: '/angular/issetTable/'+$scope.Table.name
        }).then(function success(response) {
            $scope.Table.isset=response.data;
            callback();
        }, function error(response) {});
    };

    $scope.issetTable=function () {
        var  id_error = document.getElementById('table_name_label_error');
        var  id_success = document.getElementById('table_name_label_success');
        id_error.innerHTML='';
        id_success.innerHTML='';
        if ($scope.Table.name.length<4){
            id_error.innerHTML="Имя таблицы не может быть меньше 3-х символов";
        }
        else{
            $scope.getIssetT(function () {
                if ($scope.Table.isset){
                    id_error.innerHTML="Данная таблица уже существует!";
                }else{
                    id_success.innerHTML='Данное иимя доступно';
                    $scope.Content=[];
                    $scope.Table.column=[];
                }
            });

        }
    };

    $scope.uploadFile = function(){
        if (!$scope.Table.isset) {
            var file = $scope.myFile;
            var uploadUrl = '/upload/file/' + $scope.Table.name;
            for (var i = 0; i < file.length; i++) {
                fileUpload.uploadFileToUrl(file[i], uploadUrl, function (e) {
                    if (e) {
                        $scope.myFile = [];
                        $scope.getContent();
                    }
                });
            }
        }else{
            UIkit.notify("Данная таблица уже существует!", {status:'danger'});
        }
    };

    $scope.getContent=function(){
        $http({
            method: 'GET',
            url: '/angular/getContent/'+$scope.Table.name
        }).then(function success(response) {
            $scope.Content=response.data.data;
            $scope.Table.column=response.data.column;
        }, function error(response) {});
    };

    $scope.UpdateTable=function(){
        $http({
            method: 'POST',
            url: '/angular/setContent/'+$scope.Table.name,
            data:$scope.Content
        }).then(function success(response) {
            UIkit.notify("Записи успешно обнавлены!", {status:'success'});
        }, function error(response) {});
    };

    $scope.$watch('tempFile', function () {

        if (!$scope.myFile.length) {
            $scope.myFile = $scope.tempFile;
        }
        else {
            var tmp_files = [];
            for (var i = 0; i <= $scope.myFile.length - 1; i++) {
                tmp_files.push($scope.myFile[i]);
            }
            for (i = 0; i <= $scope.tempFile.length - 1; i++) {
                var isset = find(tmp_files, $scope.tempFile[i]);
                if (!isset) {
                    tmp_files.push($scope.tempFile[i]);
                }
            }
            $scope.myFile=tmp_files;
        }

    });


});