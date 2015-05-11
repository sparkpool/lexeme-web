
app.factory("Data", ['$http',
    function ($http, toaster) { // This service connects to our REST API

        var obj = {};
		
	      
		
		obj.get = function (q) {
            return $http.get(q).then(function (results) {
                return results.data;
            });
        };
		
        obj.post = function (q, object) {
            return $http.post(q, object).then(function (results) {
                return results.data;
            });
        };
        
		obj.put = function (q, object) {
            return $http.put(q, object).then(function (results) {
                return results.data;
            });
        };
        return obj;
}]);