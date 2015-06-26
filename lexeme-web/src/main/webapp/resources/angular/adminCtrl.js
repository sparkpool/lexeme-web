/**********************************************************************************

 ***********************************************************************************/

app.controller('adminCtrl', function($scope, $routeParams, $location, $http) {

	//will render the the msg in UI
	$scope.successMsg = '';
	$scope.errorMsg = '';
	//Hold form data
	$scope.formData = {};

	$scope.getVerifiedDoc = function() {
		console.log("Hello");

		$http.post(_contextPath + '/admin/docs/unverified').success(
				function(data, status, headers, config) {
					// this callback will be called asynchronously
					// when the response is available
					$scope.userMsg = data;
					console.log("Hello");
					console.log(data);
					$scope.link = true;
				}).error(function(data, status, headers, config) {
			// called asynchronously if an error occurs
			// or server returns response with an error status.
			$scope.userMsg = data;
			console.log(data);

		});
	};
	
	$scope.downloadDocument =function(){

		$http.get(_contextPath + '/doc/download?docId=' + $scope.documentId)
		.success(function(data, status, headers, config) {
			// this callback will be called asynchronously
			// when the response is available
			console.log(status);
			$scope.emailMsg = '';
			$scope.form.email.$setValidity("unique", true);

		}).error(function(data, status, headers, config) {
			// called asynchronously if an error occurs
			// or server returns response with an error status.
			$scope.form.email.$setValidity("unique", false);
			$scope.emailMsg = 'Email address already exists';

		});
	};

});