var app = angular.module('myApp', [ 'ngRoute' ]);







/***
 * It will validate that username/email is exist or not
 */
app.controller('validateCtrl', function($scope,$http) {
	//array of edited fields (optional)
	$scope.focusField1 = false;
	$scope.focusField2 = false;
	$scope.userMsg = '';
	$scope.emailMsg = '';
	
	//handle method for field1 blur
	$scope.checkEmail = function() {
		
		
		$http.get(
				_contextPath + '/validate/user?email='
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);
					$scope.emailMsg = '';
					$scope.form.email.$setValidity("unique",true);

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					$scope.form.email.$setValidity("unique",false);
					$scope.emailMsg='Email address already exists';


				});
	};
	
	$scope.checkUserName = function() {
		$http.get(
				_contextPath + '/validate/user?userName='
						+ $scope.userName ).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available

					
					console.log(status);
					$scope.userMsg = '';
					$scope.form.userName.$setValidity("unique",true);

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					$scope.form.userName.$setValidity("unique",false);

					$scope.userMsg='UserName already exists';

					
				});
	};

	
});


//blur directive
app.directive('myBlur', function () {
    return {
        restrict: 'A',
        link: function (scope, element, attr) {
            element.bind('blur', function () {
                //apply scope (attributes)
                scope.$apply(attr.myBlur);
                //return scope value for focusing to false
                scope.$eval(attr.myFocus + '=false');
            });
        }
    };
});




/***
 * Autocomplete
 */
app.controller('autocompleteController',['$scope','$http', function($scope, $http) {
	$scope.sol = {course:''};

	$http.get('http://localhost/Company_final/api/v1/searchSolution.php').
  		success(
				function(data){
        			$scope.list = data;
       			}
	   );   
		
		$scope.setDescription= function(data){
			window.location.href='#download';
			$scope.sol=data;
			$scope.course =data;
		};
}
]);




/**
 * Controller for comments
 */
app.controller('comments',['$scope','$http', function($scope, $http) {
	$scope.comment={author:'',text:''};	
	$http.get('http://localhost/Company_final/api/v1/server.php').
  		success(
				function(data){
        			$scope.comment = data;
       			}
	   );   


	$scope.search  =function(){
	
		var dataObj = {
				author:'Mukul',
				text : $scope.text
		};
		
		
		$http.post('http://localhost/Company_final/api/v1/postComment.php', dataObj).
  			success(
					function(data){
		//				alert( "Pass message: " + JSON.stringify({data: data}));
       			}).error(function(data, status, headers, config) {
	//					alert( "failure message: " + JSON.stringify({data: data}));
  				});
	   	
		$scope.text='';
		
	};
	
}]);


/***
 * Used to filter the data
 */
app.filter('startFrom', function() {
    return function(input, start) {
        if(input) {
            start = +start; //parse to int
            return input.slice(start);
        }
        return [];
    }
});

//Make all kind of action like edit, delete,
//edit :- user can edit his/her information
//delete :- only moderator/admin has right to delete the content

//Controller 

//Factory services

