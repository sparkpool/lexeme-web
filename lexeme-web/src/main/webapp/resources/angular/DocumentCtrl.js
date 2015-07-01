
/*******************************************************************************
 * 
 ******************************************************************************/

app.controller('documentCtrl', function($scope, $routeParams, $location, $http,$timeout) {

	
	
	$scope.show=true;
	
	
	
	/***************************************************************************
	 * 
	 */
	$scope.setUiRender=function(){
		$scope.show=false;
	};
	
});


