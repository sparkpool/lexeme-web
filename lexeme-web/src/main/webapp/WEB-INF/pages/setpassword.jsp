<%@ include file="header.jsp" %>

	<br />
	<br />
	<div class="container-fluid">
		<div class="row" align="center">
			<div class="col-md-12" align="center">
				<h1>Set New Password</h1>
				<br />
				<br />
				
                        <form name="newpassForm" class="form-horizontal" role="form" action="POST" ng-app="myApp"  ng-controller="validateCtrl" novalidate>
                            
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="password">New Password</label>
                                <div class="col-sm-4">
                                 <span class="block input-icon input-icon-right">
                                <input type="password" class="form-control" name = "password" placeholder="Password"   
								ng-model="password" ng-minlength="6" ng-maxlength="20" 
								ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/" required />
								
								<!--Error Message-->
								
								<span style="color:red" ng-show="signupForm.password.$dirty && signupForm.password.$invalid">
										
								<span  ng-show=" signupForm.password.$error.minlength 
												|| signupForm.password.$error.maxlength">Passwords must be between 6 and 20 characters.
								</span>
								
								<span ng-show="signupForm.password.$error.pattern 
												&& signupForm.password.$dirty">
								Must contain one lower &amp; uppercase letter, and one non-alpha character (a number or a symbol.)
								</span>
								</span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="password2">Confirm Password</label>
                                <div class="col-sm-4">
                                <input type="password" class="form-control" name = "confirmPassword" placeholder="confirmPassword" password-match="password"  ng-model="confirmPassword" required/>
								 <span style="color:red" ng-show="signupForm.confirmPassword.$dirty && signupForm.confirmPassword.$invalid">
										
								 <span style="color:red" ng-show="signupForm.confirmPassword.$error.required">This is required.</span>
								 <span  style="color:red" ng-show="signupForm.confirmPassword.$error.unique">Passwords do not match.</span>
								 </span>
								 </div>
																
							</div>
                    
                            <div class="form-group">
                                <span class="lbl col-sm-4"> </span>

                                <div class="col-sm-4">
							     <input type="submit" name="SAVE" />
                                </div>
                            </div>
                           
                            </div>

                    </div>
                            </form>
							</div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>
