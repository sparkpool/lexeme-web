
/*******************************************************************************
 * 
 ******************************************************************************/

app.controller('documentCtrl', function($scope, $routeParams, $location, $http,$timeout) {

	
	
	$scope.view=0;
	$scope.flagShow= false;
	
	
	
	/***************************************************************************
	 * On unsuccessful:
	 * 				redirect to login page
	 */
	$scope.setLike=function(){
		$http.get(_contextPath + '/doc/analysis/view?'+$scope.view).success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					flagShow =false;
					console.log(flagShow);
					
				}).error(function(data, status, headers, config) {
					// called asynchronously if an error occurs
					// or server returns response with an error status.
						
					flagShow=true;
					console.log("Working:"+flagShow);
					
				});
	};
	
});


