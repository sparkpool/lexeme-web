var app = angular.module('myApp', ['ngRoute']);

app.controller('validateCtrl', function($scope) {
	$scope.user = 'John Doe';
	$scope.email = "";



});

//to check user name availibilty
app.directive('usernameAvailableValidator', ['$http', function($http) {
	  return {
	    require : 'ngModel',
	    link : function($scope, element, attrs, ngModel) {
	      ngModel.$asyncValidators.usernameAvailable = function(username) {
	        return $http.get('/api/username-exists?u='+ username);
	      };
	    }
	  }
	}])






