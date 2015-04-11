	<!--Header--->
<%@ include file="header.jsp" %>

<br />
<br />
<div class="container-fluid" align="center">
	<div class="row" align="center">
			<div class="col-md-12" align="center">
			<h1>Login</h1>
			<br />
			<br />
 			<form name="loginForm" class="form-horizontal" role="form" ng-app="myApp"  ng-controller="validateCtrl" novalidate>

                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="email">Email</label>
                                <div class="col-sm-4">
                                    <span class="block input-icon input-icon-right">
										<input type="email" class="form-control" placeholder="Email " name="email" ng-model="text"  required focus/>
									   </span>
										<span style="color:red" ng-show="loginForm.email.$dirty && loginForm.email.$invalid">
										  <span data-ng-show="loginForm.email.$error.required">Email is required.</span>
										  <span data-ng-show="loginForm.email.$error.email">Invalid email address.</span>
                                   
									</span>
                                </div>
                            </div>
        
		
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="password2">Confirm Password</label>
                                <div class="col-sm-4">
                                <input type="password" class="form-control" name = "password" placeholder="Password" ng-model="password" required/>
 								<span style="color:red" ng-show="loginForm.password.$dirty && loginForm.password.$invalid">
											 <span  data-ng-show="loginForm.password.$error.required">This is required.</span>
						
                                </div>
                            </div>
        
 
                            <div class="form-group">
                                <span class="lbl col-sm-4"> </span>
                              <div class="col-sm-4">
							     <input type="submit" name="SAVE" />
                                </div>
                            </div>
                            <span class="lbl col-sm-4"> </span>
                            <div class="col-sm-4">Already have an account? <a href="${pageContext.request.contextPath}/user/fp">Forgot your password</a>
                            </div>

                    </div>
        </form>

</div><!-- /widget-main -->
</div><!-- /widget-main -->
</div> 
<%@ include file="footer.jsp" %>
