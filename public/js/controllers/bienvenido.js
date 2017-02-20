var app = angular.module('dffusion',[]);

app.controller('bienvenidoCtrl', function($scope, $http) {

    $http.get('/moreviews');
    $scope.submit = function(user){
      $http.get('/facebookLogin',{
      }).success(function(response){
      		console.log(response);
      });
    }
}); 

