var app = angular.module('myApp', [ 'ngRoute' ]);

/*******************************************************************************
 * It will validate that username/email is exist or not
 */



app.controller('validateCtrl', function($scope, $http) {
	// array of edited fields (optional)
	$scope.focusField1 = false;
	$scope.focusField2 = false;
	$scope.userMsg = '';
	$scope.emailMsg = '';
	$scope.link = false;
	
	$scope.sendActivationLink = function() {
		console.log("Hello");

		$http.get(_contextPath + '/user/resendActLink').success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					$scope.userMsg = data;
					console.log("Hello");
					console.log(data);
					$scope.link = true;
				}).error(function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					$scope.userMsg = data;
					console.log(data);

				});
	};

	// handle method for field1 blur
	$scope.checkEmail = function() {

		$http.get(_contextPath + '/validate/user?email=' + $scope.email)
		.success(function(data, status, headers, config) {
			// this callback will be called asynchronously
			// when the response is available
			console.log(status);
			
			
			if(data=="EMAIL ALREADY EXIST"){
				$scope.emailMsg = 'Email already exists';
				$scope.form.email.$setValidity("unique", false);
			}else{
				$scope.emailMsg = '';
				$scope.form.email.$setValidity("unique", true);
				
			}

		
		}).error(function(data, status, headers, config) {
			// called asynchronously if an error occurs
			// or server returns response with an error status.
	
		});
	};

	$scope.checkUserName = function() {
		$http.get(_contextPath + '/validate/user?userName=' + $scope.userName)
		.success(function(data, status, headers, config) {
			// this callback will be called asynchronously
			// when the response is available
			if(data=="USERNAME ALREADY EXIST"){
				$scope.userMsg = 'UserName already exists';
				$scope.form.userName.$setValidity("unique", false);
			}else{
				$scope.userMsg = '';
				$scope.form.userName.$setValidity("unique", true);
				
			}
	
			console.log(status);

		}).error(function(data, status, headers, config) {
			// called asynchronously if an error occurs
			// or server returns response with an error status.
	
		});
	};

});


app.directive("passwordCheck", function() {
	   return {
	      require: "ngModel",
	      scope: {
	    	  passwordCheck: '='
	      },
	      link: function(scope, element, attrs, ctrl) {
	        scope.$watch(function() {
	            var combined;

	            if (scope.passwordCheck || ctrl.$viewValue) {
	               combined = scope.passwordCheck + '_' + ctrl.$viewValue; 
	            }                    
	            return combined;
	        }, function(value) {
	            if (value) {
	                ctrl.$parsers.unshift(function(viewValue) {
	                    var origin = scope.passwordCheck;
	                    if (origin !== viewValue) {
	                        ctrl.$setValidity("passwordCheck", false);
	                        return undefined;
	                    } else {
	                        ctrl.$setValidity("passwordCheck", true);
	                        return viewValue;
	                    }
	                });
	            }
	        });
	     }
	   };
	});
//blur directive
app.directive('myBlur', function() {
	return {
		restrict : 'A',
		link : function(scope, element, attr) {
			element.bind('blur', function() {
				// apply scope (attributes)
				scope.$apply(attr.myBlur);
				// return scope value for focusing to false
				scope.$eval(attr.myFocus + '=false');
			});
		}
	};
});

/*******************************************************************************
 * Autocomplete
 */
app.controller('autocompleteController', [
                                          '$scope',
                                          '$http',
                                          function($scope, $http) {
                                        	  $scope.sol = {
                                        			  course : ''
                                        	  };

                                        	  $http.get(
                                        	  'http://localhost/Company_final/api/v1/searchSolution.php')
                                        	  .success(function(data) {
                                        		  $scope.list = data;
                                        	  });

                                        	  $scope.setDescription = function(data) {
                                        		  window.location.href = '#download';
                                        		  $scope.sol = data;
                                        		  $scope.course = data;
                                        	  };
                                          } ]);

/**
 * Controller for comments
 */
app
.controller(
		'comments',
		[
		 '$scope',
		 '$http',
		 function($scope, $http) {
			 $scope.comment = {
					 author : '',
					 text : ''
			 };
			 $http
			 .get(
					 'http://localhost/Company_final/api/v1/server.php')
					 .success(function(data) {
						 $scope.comment = data;
					 });

			 $scope.search = function() {

				 var dataObj = {
						 author : 'Mukul',
						 text : $scope.text
				 };

				 $http
				 .post(
						 'http://localhost/Company_final/api/v1/postComment.php',
						 dataObj).success(
								 function(data) {
									 // alert( "Pass message: " +
									 // JSON.stringify({data:
									 // data}));
								 }).error(
										 function(data, status, headers,
												 config) {
											 // alert( "failure message:
											 // " + JSON.stringify({data:
											 // data}));
										 });

				 $scope.text = '';

			 };

		 } ]);

/*******************************************************************************
 * Used to filter the data
 * It will used to filter the dashboard data
 *******************************************************************************/
app.filter('QID', function() {
    return function(input, start) {
        if(input) {
            start = +start; //parse to int
            return input.slice(start);
        }
        return [];
    }
});

app.controller('customersCrtl', function ($scope, $http, $timeout){
$http.get('db/dbConfigAccount.php').success(function(data){
        $scope.list = data;
        $scope.currentPage = 1; //current page
        $scope.entryLimit = 5; //max no of items to display in a page
        $scope.filteredItems = $scope.list.length; //Initially for no filter  
        $scope.totalItems = $scope.list.length;
    });


    $scope.setPage = function(pageNo) {
        $scope.currentPage = pageNo;
    };
	
    $scope.filter = function() {
        $timeout(function() { 
            $scope.filteredItems = $scope.filtered.length;
        }, 10);
    };
    $scope.sort_by = function(predicate) {
        $scope.predicate = predicate;
        $scope.reverse = !$scope.reverse;
    };
});


