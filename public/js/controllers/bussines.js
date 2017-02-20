var app = angular.module('dffusion', []);

app.controller('bussinesCtrl', function($scope, $http) {

	$scope.guardarNegocio = function(negocio){
		console.log(negocio);
	}
	
}); 

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#prev').attr('src', e.target.result);
        }
         reader.readAsDataURL(input.files[0]);
    }
}


function readURL2(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#prev2').attr('src', e.target.result);
        }
         reader.readAsDataURL(input.files[0]);
    }
}



