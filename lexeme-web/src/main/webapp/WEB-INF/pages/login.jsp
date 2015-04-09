	<!--Header--->
	<%@ include file="header.jsp" %>
<div class="container">
	<h4 class="header blue lighter bigger">
  	<i class="icon-coffee green"></i>Login </h4>
	<div class="col-6-lg" align="center">
	<form name="loginForm" class="form-horizontal" role="form" >
    	<!--Email Address-->
		<div class="form-group">
        	<label class="col-sm-3 control-label no-padding-right" for="email"> Email  </label>
            	<div class="col-sm-7">
                	<span class="block input-icon input-icon-right">
          			<input type="text" class="form-control" placeholder="Email " name="email"  required focus/>
                    <i class="ace-icon fa fa-user"></i>
                    </span>
                 </div>
                 
	   </div>
	   
	   <!--Password--->
	   
       <div class="form-group">
      		<label class="col-sm-3 control-label no-padding-right" for="password"> Password </label>
            <div class="col-sm-7">
            	<span class="block input-icon input-icon-right">
                	<input type="password" class="form-control" placeholder="password"  required focus />
                   	<i class="ace-icon fa fa-lock"></i>
                </span>
            </div>
       </div>
        
		
		<div class="row">
        	<label class="col-sm-3 control-label no-padding-right"> </label>
            <div class="col-sm-7">
 				<input type="submit" name="Login" />
            </div>
        </div>
        </div>
        <div class="space-4"></div>
        	 <span class="lbl col-sm-3"> </span><div class="col-sm-7">Don't have an account? <a href="${pageContext.request.contextPath}/user/signup">Signup</a>
		</div>
        </form>
</form>

</div><!-- /widget-main -->
 
	<%@ include file="footer.jsp" %>
