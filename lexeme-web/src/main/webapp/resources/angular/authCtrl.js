app.controller('authCtrl',function ($scope, $routeParams, $location, $http) {
    //initially set those objects to null to avoid undefined error
    $scope.login = {};
    $scope.signup = {};
	$scope.list={};
	$scope.dashboard ={};
	$scope.usercontrol = false;
	$scope.askquestion ={};
	$scope.askquestion = {description:'',subject:'',deadline:'',price:''};

	

});



