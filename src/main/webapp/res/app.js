(function(){


var app = angular.module("EmployeeViewer",[]);

var mainContoller = function($scope,$http){

var onSuccess = function(response){
                console.log(response);
                $scope.employees = response.data;
                };

var onFail = function(reason){
                alert(reason);
                };

$scope.search = function(ssn){
$http.get("service/employess/edit-"+ssn+"-employee").then(onSuccess,onFail);
};
};

app.controller("mainContoller",["$scope","$http",mainContoller]);
}());