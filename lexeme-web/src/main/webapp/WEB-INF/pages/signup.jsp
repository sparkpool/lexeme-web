
<!--Header--->
<%@page import="com.lexeme.web.enums.EnumRoles"%>
<%@ include file="header.jsp"%>
<div id="page-content">
  <div class="container-fluid" >
  <div class="row">
  
  	<div class="col-xs-12">
		<%@ include file="message.jsp"%>
	</div>
  
 	<div class="row">
			
 		<div class="col-xs-12">
			<h1 align="center">Create an Account</h1>
 		</div>
 	
 	</div>
	<hr>
  	
 		<div class="row">

			<div class="col-md-5" align="center">
			
				<div class="row">
					<div class="col-md-5 col-md-offset-8">
						<button type="button" class="btn btn-info" placeholder="">Log
							in with Gmail</button>
					</div>

				</div>

				<br />

				<div class="row">
					<div class="col-md-5 col-md-offset-8">
						<button type="button" class="btn btn-warning" placeholder="">Log
							in with Facebook</button>
					</div>
				</div>

				<br />
				<div class="row">
					<div class="col-md-5 col-md-offset-8">
						<button type="button" class="btn btn-warning" placeholder="">Log
							in with Google Plus</button>

					</div>

				</div>

			</div>

<div class="col-md-7">
 	<div class="ui center aligned two column grid">
		<div class="left aligned column">
			<form id="feedback-form" class="ui form "
				action="${pageContext.request.contextPath}/user/signup"
				method="POST" ng-controller="validateCtrl" ng-app="myApp"
				name="form">

				<!-- Email-address -->
				<div class="field"   ng-class="{ error: form.email.$error.unique }">
					<label>Email</label> <input placeholder="Email" name="email"
						type="email" ng-model="email" 
						my-blur="checkEmail()" required style="width: 20em; "> 
						<span class="ui red pointing above ui label error"
						style="color: red;"
						ng-show="form.email.$dirty && form.email.$error.unique">
						Email already in use </span>
				</div>

				<!-- UserName -->
				<div class="field"  ng-class="{ error: form.userName.$error.unique }">
					<label>Username</label> <input placeholder="Username"
						name="userName" type="text" ng-model="userName"
						 my-blur="checkUserName()" required style="width: 20em; ">

					<span class="ui red pointing above ui label error"
						ng-show="form.userName.$dirty && form.userName.$error.unique">
						UserName already in use </span>
				</div>

				<!-- Password -->
				<div class="field">
					<label>Password</label> <input name="password" type="password"
						placeholder="Password " style="width: 20em; ">
				</div>

				<!-- Confirm Password -->
				<div class="field">
					<label>Confirm Password</label> <input name="confirmPassword"
						type="password" id="password-confirm"
						placeholder="Confirm Password" style="width: 20em; ">
				</div>


				<!-- Choose Account Type -->


				<div class=" two field">
					<label>Account Type</label> <select name="role"
						class="ui search dropdown" style="width: 20em; ">
						<c:forEach items="<%=EnumRoles.getRolesForSignUP() %>" var="role">
							<option value="${role.role}">${role.displayName}</option>
						</c:forEach>
					</select>
				</div>



				<!-- Already has an account -->
				<div class="inline field">
					<p>
						Already have an account? <a
							href="${pageContext.request.contextPath}/user/login">SignIn</a>
					</p>
				</div>
				<input class="ui blue submit button" type="submit" value="Sign Up"
					name="SAVE"
					ng-disabled="form.userName.$dirty && form.userName.$invalid ||
  							form.email.$dirty && form.email.$invalid">
			</form>
		</div>

		<div>
		
		</div>
		</div>
	</div>
	</div>
</div>
</div>
<hr>

</div>
<%@ include file="footer.jsp"%>
