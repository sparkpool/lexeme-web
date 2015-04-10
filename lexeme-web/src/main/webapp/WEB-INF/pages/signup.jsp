<%@ include file="header.jsp" %>

	<div class="container">
		<div class="col-6-lg" align="center">
			Create An Account
                        <form name="${pageContext.request.contextPath}/user/signup" class="form-horizontal" role="form" action="POST">
                            <div class="form-group">
                                <label class="col-sm-5 control-label no-padding-right" for="email">Email</label>
                                <div class="col-sm-7">
                                    <span class="block input-icon input-icon-right">
                                        <input type="text" class="form-control" placeholder="Email" name="email"  focus/>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label no-padding-right" for="password">Password</label>
                                <div class="col-sm-7">
                                    <span class="block input-icon input-icon-right">
                                <input type="password" class="form-control" name = "password" placeholder="Password" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label no-padding-right" for="password2">Confirm Password</label>
                                <div class="col-sm-7">
                                <input type="password" class="form-control" name = "password" placeholder="Password" />
 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label no-padding-right" for="name">User Name</label>
                                <div class="col-sm-7">
                                    <span class="block input-icon input-icon-right">
                                <input type="text" class="form-control" name="userName" placeholder="Name" />
                            </span>
                                </div>
                            </div>
							
                            <div class="form-group">
							
                                <label class="col-sm-5 control-label no-padding-right" for="group_id">Account Type</label>
                                <div class="col-sm-7">
                                  <span class="block input-icon input-icon-right">
							
							<select  class="form-control" name="account" >
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
                                <span class="lbl col-sm-5"> </span>

                                <div class="col-sm-7">
							     <input type="submit" name="SAVE" />
                                </div>
                            </div>
                            </fieldset>
                            <span class="lbl col-sm-5"> </span>
                            <div class="col-sm-7">Already have an account? <a href="${pageContext.request.contextPath}/user/login">SignIn</a>
                            </div>

                    </div>
                            </form>
							</div>
	</div>
	<%@ include file="footer.jsp" %>
