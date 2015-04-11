	<!--Header--->
	<%@ include file="header.jsp" %>
	<div class="container-fluid">
	<br/>
	<br/>

	<div class="row">
		<div class=".col-xs-6 .col-md-4" align="center">
			<h2 class="header blue lighter bigger">Forgot your password?</h2>
			<br/>
			<p>Enter your email address to reset your password. You may need to <br />
			check your spam folder or unblock no-reply@lexeme.com.</p>
	</div>

 	<form name="loginForm" class="form-horizontal" role="form"  ng-app="myApp"  ng-controller="validateCtrl" novalidate>
	<div class="row">
           	<div class="col-md-4 col-md-offset-4" align="center">
                	<span class="block input-icon input-icon-right">
          			<input type="email" class="form-control" placeholder="Email " name="email" ng-model="text"  required focus/>
                   </span>
					<span style="color:red" ng-show="loginForm.email.$dirty && loginForm.email.$invalid">
					  <span ng-show="loginForm.email.$error.required">Email is required.</span>
					  <span ng-show="loginForm.email.$error.email">Invalid email address.</span>
				  </span>
			</div>
	</div>
	
	<br/>
	
	<div class="row">
		<div class="col-md-4 col-md-offset-4" align="right">
 				<input type="submit" name="Login"  ng-disabled="loginForm.email.$dirty && loginForm.email.$invalid"/>
        </div>
	</div>
    </form>

	</div>   

</div>             

<%@ include file="footer.jsp" %>
