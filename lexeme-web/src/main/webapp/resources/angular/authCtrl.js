
/**********************************************************************************
 * This application controller used to update the user information.
 * - Contact information
 * - Academic Information
 * - Contact information
 * - User experience
***********************************************************************************/

app
		.controller(
				'authCtrl',
				function($scope, $routeParams, $location, $http) {
					// initially set those objects to null to avoid undefined
					// error
					
					//will render the the msg in UI
					$scope.successMsg = '';
					$scope.errorMsg='';
					//Hold form data
					$scope.formData = {};

					
					
					/***
					 * Upload Document
					 * 
					 */
					$scope.uploadDocument = function() {

						$http(
								{
									method : 'POST',
									url : _contextPath
											+ '/profile/updateContactInfo',
									data : $.param($scope.formData), // pass
																		// in
																		// data
																		// as
																		// strings
									headers : {
										'Content-Type' : 'application/x-www-form-urlencoded; text/plain;charset=UTF-8'
									},
								}).success(
								function(data, status, headers, config) {
									//set the success message
									
									$scope.successMsg= data;
								}).error(
								function(data, status, headers, config) {
									
									//set the 
									$scope.errorMsg=data;
													
								
								});

					};

					
					
					
					/***********************************************************
					 * This function will be called,once contact information has
					 * been updated.
					 ***********************************************************/
					$scope.contactInformation = function() {

						$http(
								{
									method : 'POST',
									url : _contextPath
											+ '/profile/updateContactInfo',
									data : $.param($scope.formData), // pass
																		// in
																		// data
																		// as
																		// strings
									headers : {
										'Content-Type' : 'application/x-www-form-urlencoded; text/plain;charset=UTF-8'
									},
								}).success(
								function(data, status, headers, config) {
									//set the success message
									
									$scope.successMsg= data;
								}).error(
								function(data, status, headers, config) {
									
									//set the 
									$scope.errorMsg=data;
													
								
								});

					};

					
					/***********************************************************
					 * This function will be called,once academic information has
					 * been updated.
					 ***********************************************************/
					$scope.academicInfortion = function() {
						$http(
								{
									method : 'POST',
									url : _contextPath + '/profile/updateUserEdu',
									data : $.param($scope.formData), // pass
																		// in
																		// data
																		// as
																		// strings
									headers : {
										'Content-Type' : 'application/x-www-form-urlencoded; text/plain;charset=UTF-8'
									},
								}).success(
								function(data, status, headers, config) {
									//set the success message
									$scope.successMsg= data;
													
								}).error(
								function(data, status, headers, config) {
									
									//set the 
									$scope.errorMsg=data;
																					
								
								});
					};

					
					/***********************************************************
					 * This function will be called,once userexp information has
					 * been updated.
					 ***********************************************************/
					$scope.userExperience = function() {
						$http(
								{
									method : 'POST',
									url : _contextPath + '/profile/updateUserExp',
									data : $.param($scope.formData), // pass
																		// in
																		// data
																		// as
																		// strings
									headers : {
										'Content-Type' : 'application/x-www-form-urlencoded; text/plain;charset=UTF-8'
									},
								}).success(
								function(data, status, headers, config) {
									//set the success message
									console.log($scope.formData.fromTime);
									$scope.successMsg= data;
														
								}).error(
								function(data, status, headers, config) {
									
									//set the 
									$scope.errorMsg=data;
																						
								
								});
					};

					
					/***********************************************************
					 * This function will be called,once userinfo information has
					 * been updated.
					 ***********************************************************/
					$scope.userGenInfo = function() {
						$http(
								{
									method : 'POST',
									url : _contextPath +'/profile/updateUserProf',
									data : $.param($scope.formData), // pass
																		// in
																		// data
																		// as
																		// strings
									headers : {
										'Content-Type' : 'application/x-www-form-urlencoded; text/plain;charset=UTF-8'
									},
								}).success(
								function(data, status, headers, config) {
									//set the success message
									$scope.successMsg= data;
														
								}).error(
								function(data, status, headers, config) {
									
									//set the 
									$scope.errorMsg=data;
																							
								
								});
					};
					
					
}); //end auth ctrl
