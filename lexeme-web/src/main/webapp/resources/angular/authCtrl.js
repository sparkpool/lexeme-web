app.controller('authCtrl',function ($scope, $routeParams, $location, $http) {
    //initially set those objects to null to avoid undefined error
	$scope.successMsg = '';
	$scope.formData={};


	/***
	 * This function will be called,once password be updated.
	 */

	
	
	$scope.contactInformation=function(){
		
		$http({
			  method  : 'POST',
			  url     : _contextPath + '/profile/updateContactInfo',
			  data    : $.param($scope.formData),  // pass in data as strings
			  headers : { 'Content-Type': 'application/x-www-form-urlencoded; text/plain;charset=UTF-8' },
		})
			  .success(function(data, status, headers, config)  {
			    console.log("Shrey chutiya:"+response);
			  }).error(function(data, status, headers, config){
				console.log("Error main aa raha hai " + response);  
			  });
		
		
	
		
	};
	
	
	
	$scope.academicInfortion=function(){
		$http.post(
				_contextPath + '/profile/updateUserEdu'
						).success(
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
						).success(
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
						).success(
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



