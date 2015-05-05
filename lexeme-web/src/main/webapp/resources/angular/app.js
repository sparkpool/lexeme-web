var app = angular.module('myApp', ['ngRoute']);

app.controller('validateCtrl', function($scope) {
	$scope.user = 'John Doe';
	$scope.email = "";



});


//to check user name availibilty
app.directive('usernameAvailableValidator', ['$http','$q', function($http,$q) {
	  return {
	    require : 'ngModel',
	    link : function($scope, element, attrs, ngModel) {
	      
	    	ngModel.$asyncValidators.usernameAvailable = function(userName) {
	    	  console.log(_contextPath);
	    	  
	        $http.get(_contextPath+'/validate/user?userName='+ userName).
	        success(function(data, status, headers, config) {
	            // this callback will be called asynchronously
	            // when the response is available
	        	console.log(status);
	        	$q.defer().resolve();
	        }).
	          error(function(data, status, headers, config) {
	            // called asynchronously if an error occurs
	            // or server returns response with an error status.
	        	  	$q.defer().reject();
		        	console.log("UserName already exists");
		        	
	          });
	      };
	    }
	  };
	}]);


//check email avail
app.directive('emailAvailableValidator', ['$http', function($http) {
	  return {
	    require : 'ngModel',
	    link : function($scope, element, attrs, ngModel) {
	     
	    ngModel.$asyncValidators.usernameAvailable = function(email) {
	        return $http.get(_contextPath+'/validate/user?email='+ email);
	      };
	    }
	  };
}]);


//Make all kind of action like edit, delete,
//edit :- user can edit his/her information
//delete :- only moderator/admin has right to delete the content



//Controller 



//Factory services





