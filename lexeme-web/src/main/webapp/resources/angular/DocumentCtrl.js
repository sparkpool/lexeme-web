
/*******************************************************************************
 * 
 ******************************************************************************/

app.controller('adminCtrl', function($scope, $routeParams, $location, $http,$timeout) {

	$scope.documentList={
					 // Document Identifier
					 ID:'',
					 // Document Name
					 DOC_NAME:'',
					 // Document Description
					 DESCRIPTION:''
				    };
	
	
	$scope.msg='';
	
	
	
	/***************************************************************************
	 * 
	 */
	$scope.getListOfDocument=function(){
		$http.get('').success(function(data){
		$scope.documentList = data;
		 $scope.currentPage = 1; // current page
		 $scope.entryLimit = 5; // max no of items to display in a page
		 $scope.filteredItems = $scope.documentList.length; // Initially for no
															// filter
		 $scope.totalItems = $scope.documentList.length;
		});
	};
	
	
		/***
		 * 
		 */
	 	$scope.setPage = function(pageNo) {
	 		$scope.currentPage = pageNo;
		 };
		 
		 /***
		  * 
		  */
		 $scope.filter = function() {
			 $timeout(function() {
				 $scope.filteredItems = $scope.filtered.length;
			 }, 10);
		 };
		 
		 /***
		  * 
		  */
		 $scope.sort_by = function(predicate) {
			 $scope.predicate = predicate;
			 $scope.reverse = !$scope.reverse;
		 };
	
	
});


/***********************************************************************
 * Custom Filtering can be done by:
 * - Customer ID
 * - Full Text
 * - Keywords
 * - 
 ***********************************************************************/
app.filter('startFrom', function() {
	 return function(input, start) {
	 if(input) {
	 start = +start; // parse to int
	 return input.slice(start);
	 }
	 return [];
	 }
	});