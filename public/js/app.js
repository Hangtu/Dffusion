var app = angular.module('dffusion', []).config(function ($interpolateProvider) {
  $interpolateProvider.startSymbol('{{');
  $interpolateProvider.endSymbol('}}')
});

	