
<!--Header--->
<%@page import="com.lexeme.web.enums.EnumRoles"%>
<%@ include file="header.jsp"%>

<section id="content">
	<div class="ui center aligned two column grid">


		<div class="left aligned column">

			<br />
			<h1 align="center">Create An Account</h1>
			<form id="feedback-form" class="ui form "
				action="${pageContext.request.contextPath}/user/signup"
				method="POST" ng-controller="validateCtrl" ng-app="myApp"
				name="form">

				<!-- Email-address -->
				<div class="field">
					<label>Email</label> <input placeholder="Email" name="email"
						type="email" ng-model="email" my-focus="focusField1"
						my-blur="checkEmail()" required> 
						<span class="ui red pointing above ui label error"
						style="color: red;"
						ng-show="form.email.$dirty && form.email.$error.unique">
						Email already in use </span>
				</div>

				<!-- UserName -->
				<div class="field">
					<label>Username</label> <input placeholder="Username"
						name="userName" type="text" ng-model="userName"
						my-focus="focusField2" my-blur="checkUserName()" required>

					<span class="ui red pointing above ui label error"
						ng-show="form.userName.$dirty && form.userName.$error.unique">
						UserName already in use </span>
				</div>

				<!-- Password -->
				<div class="field">
					<label>Password</label> <input name="password" type="password"
						placeholder="Password ">
				</div>

				<!-- Confirm Password -->
				<div class="field">
					<label>Confirm Password</label> <input name="confirmPassword"
						type="password" id="password-confirm"
						placeholder="Confirm Password">
				</div>


				<!-- Choose Account Type -->


				<div class=" two field">
					<label>Account Type</label> <select name="role"
						class="ui search dropdown">
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

		<div></div>
	</div>
</section>
<%@ include file="footer.jsp"%>
