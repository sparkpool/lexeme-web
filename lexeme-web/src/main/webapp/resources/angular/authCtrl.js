app.controller('authCtrl',function ($scope, $rootScope, $routeParams, $location, $http, Data) {
    //initially set those objects to null to avoid undefined error
    $scope.login = {};
    $scope.signup = {};
	$scope.list={};
	$scope.dashboard ={};
	$scope.usercontrol = false;
	$scope.askquestion ={};
	$scope.askquestion = {description:'',subject:'',deadline:'',price:''};

	/***
	*
	*/
	$scope.askQuestion =function(customer){
		Data.post('askQuestion',{
				  customer: customer
				  }).then(function(results){
				Data.toast(results);
				if(results.status=="success"){
					$location.path('question');
				}

		});
	};

	
	$scope.doLogin = function (customer) {
        Data.post('login', {
            customer: customer
        }).then(function (results) {
            Data.toast(results);
            if (results.status == "success") {
             $scope.usercontrol =true;
			 $rootScope.usercontrol =true;
			$location.path('profile');
			 console.log($scope.usercontrol);
			 
			}
        });
    };
	
	
    $scope.signup = {email:'',password:'',name:'',phone:'',address:''};
    $scope.signUp = function (customer) {
        Data.post('signUp', {
            customer: customer
        }).then(function (results) {
            Data.toast(results);
            if (results.status == "success") {
                $location.path('/profile');
				 $scope.usercontrol =true;
				 console.log($scope.usercontrol);
				
            }
			
			
        });
    };



	$scope.logout = function () {
        Data.get('logout').then(function (results) {
            Data.toast(results);
            $location.path('login');
			 $scope.usercontrol  =false;
			 $rootScope.name ='';
			 console.log($scope.usercontrol);
        });
    };


	
	$scope.dashboard = function () {
        Data.get('dashboard' ).then(function (results) {
        Data.toast(results);
		$scope.list = results;
        $scope.currentPage = 1; //current page
        $scope.entryLimit = 5; //max no of items to display in a page
        $scope.filteredItems = $scope.list.length; //Initially for no filter  
        $scope.totalItems = $scope.list.length;
 		$rootScope.list =results;
});
};


});



