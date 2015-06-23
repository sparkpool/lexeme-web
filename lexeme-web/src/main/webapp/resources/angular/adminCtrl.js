
/**********************************************************************************

***********************************************************************************/

app
		.controller(
				'authCtrl',
				function($scope, $routeParams, $location, $http) {

		
					
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
											+ '/profile/admin/docs/del',
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

					
					
				
});