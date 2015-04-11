<%@ include file="header.jsp" %>

	<br />
	<br />
	<div class="container-fluid">
		<div class="row" align="center">
			<div class="col-md-12" align="center">
				<h1>Create An Account</h1>
				<br />
				<br />
				
                        <form name="signupForm" action="${pageContext.request.contextPath}/user/signup" class="form-horizontal" role="form" ng-app="myApp"  ng-controller="validateCtrl" novalidate>
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="email">Email</label>
                                <div class="col-sm-4">
                                    <span class="block input-icon input-icon-right">
                 									<input type="email" class="form-control" placeholder="Email " name="email" ng-model="email"  required focus/>
									   </span>
										<span style="color:red" ng-show="signupForm.email.$dirty && signupForm.email.$invalid">
										  <span ng-show="signupForm.email.$error.required">Email is required.</span>
										  <span ng-show="signupForm.email.$error.email">Invalid email address.</span>
                       			<span ng-show="signupForm.email.$error.unique">
    								Email address already exists.
  								</span>		
										</span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="password">Password</label>
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
                                <label class="col-sm-4 control-label no-padding-right" for="name">User Name</label>
                                <div class="col-sm-4">
                                    <span class="block input-icon input-icon-right">
                                <input type="text" class="form-control" ng-minlength="8" 
                                ng-maxlength="16" ng-pattern="/^[a-zA-Z0-9]{4,10}$/" name="userName" placeholder="Name" ng-model="userName"  required />
								 <span style="color:red" ng-show="signupForm.userName.$dirty && signupForm.userName.$invalid">
								 <span  ng-show="signupForm.userName.$error.required">This is required.</span>
								<span  ng-show=" !signupForm.userName.$error.minlength 
												|| !signupForm.userName.$error.maxlength">Username must be between 8 and 16 characters.
								</span>
								
								<span ng-show="signupForm.userName.$error.unique">
    								Username already exists.
  								</span>
								</span>
								   </div>
                            </div>
							
                            <div class="form-group">
							
                                <label class="col-sm-4 control-label no-padding-right" for="group_id" >Account Type</label>
                                <div class="col-sm-4">
                                  <span class="block input-icon input-icon-right">
							
							<select  class="form-control" name="account" required >
								<option>Account type</option>
								<option value="5">Tutor</option>
								<option value="6">Student</option>
								<option value="7">Client</option>
								<option value="8">Freelancer</option>
								<option value="1">Admin</option>
							</select>

                            </span>
                                </div>
                            </div>


                            <div class="form-group">
                                <span class="lbl col-sm-4"> </span>

                                <div class="col-sm-4">
							     <input type="submit" name="SAVE" />
                                </div>
                            </div>
                            <span class="lbl col-sm-4"> </span>
                            <div class="col-sm-4">Already have an account? <a href="${pageContext.request.contextPath}/user/login">SignIn</a>
                            </div>

                    </div>
                            </form>
							</div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>
