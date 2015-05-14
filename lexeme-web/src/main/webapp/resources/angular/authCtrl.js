app.controller('authCtrl',function ($scope, $routeParams, $location, $http) {
    //initially set those objects to null to avoid undefined error
    $scope.login = {};
    $scope.signup = {};
	$scope.list={};
	$scope.dashboard ={};
	$scope.usercontrol = false;
	$scope.askquestion ={};
	$scope.askquestion = {description:'',subject:'',deadline:'',price:''};

	

	/***
	 * This function will be called,once password be updated.
	 */
	$scope.changePassword=function(){
		$http.post(
				_contextPath + '/validate/user?email='
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});

	};
	
	
	$scope.contactInformation=function(){
		$http.post(
				_contextPath + '/validate/user?email='
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
	
	$scope.paymentInformation=function(){
		$http.post(
				_contextPath + '/validate/user?email='
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
	
	$scope.academicInfortion=function(){
		$http.post(
				_contextPath + '/validate/user?email='
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
	
	$scope.userExperience=function(){
		$http.post(
				_contextPath + '/validate/user?email='
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
	
	$scope.userGenInfo=function(){
		$http.post(
				_contextPath + '/validate/user?email='
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
});



