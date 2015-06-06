app.controller('authCtrl',function ($scope, $routeParams, $location, $http) {
    //initially set those objects to null to avoid undefined error
	$scope.successMsg = '';


	/***
	 * This function will be called,once password be updated.
	 */

	
	
	$scope.contactInformation=function(){
		$http.post(
				_contextPath + '/profile/contactInfo'
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);
					
					$scope.successMsg ="Contact Information has been updated!";

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
	
	
	
	$scope.academicInfortion=function(){
		$http.post(
				_contextPath + '/profile/updateUserEdu'
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);
					$scope.successMsg ="User Education Information has been updated!";

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
	
	$scope.userExperience=function(){
		$http.post(
				_contextPath + '/profile/updateUserExp'
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);
					$scope.successMsg ="User Experience Information has been updated!";

				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
	
	$scope.userGenInfo=function(){
		$http.post(
				_contextPath + '/profile/updateUserInfo'
						+ $scope.email).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					console.log(status);
					$scope.successMsg ="User Information has been updated!";


				}).error(
				function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
					
				});
		
	};
});



