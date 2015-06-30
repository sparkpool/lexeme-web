
/*******************************************************************************
 * 
 ******************************************************************************/

app.controller('documentCtrl', function($scope, $routeParams, $location, $http,$timeout) {

	
	
	$scope.msg='';
	
	
	
	/***************************************************************************
	 * 
	 */
	$scope.getListOfDocument=function(){
		$http.get(_contextPath+'/search?q='+$scope.searchString).success(
			function(data, status, headers, config) {
				// this callback will be called asynchronously
				// when the response is available
				console.log(data);
			}).error(function(data, status, headers, config) {
				// called asynchronously if an error occurs
				// or server returns response with an error status.
				console.log(data);
			});
	};
	
});


