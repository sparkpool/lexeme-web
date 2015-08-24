
<!--Header--->
<%@page import="com.sd.web.enums.EnumRoles"%>
<%@ include file="header.jsp"%>

<nav></nav>
<main> <!-- Error Message -->
<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--medium">
			<h1 class="title--large">Register</h1>
			<hr>
			<div class="container container--medium" id="contact-form">
				<p class="title--small">Register</p>
				<div class="row">
					<div class="col-md-4 col-md-offset-4" align="center">
						<%@ include file="message.jsp"%>
					</div>
				</div>

				<form id="supportForm" data-ajax="" novalidate="" autocomplete="off"
					action="${pageContext.request.contextPath}/user/signup"
					method="POST" ng-controller="validateCtrl" ng-app="myApp"
					name="form">

					<!-- Error Message -->

					<div class="input-group input-group--inline">
						<label></label>
						<%@ include file="message.jsp"%>
					</div>

					<!-- Email-address -->
					<div class="input-group input-group--inline"
						ng-class="{ error: form.email.$error.unique }">
						<label>Email</label> <input placeholder="Email" name="email"
							type="email" ng-model="email" my-blur="checkEmail()"> <span
							class="ui green pointing left ui label error"
							ng-show="form.email.$error.email"> Not valid email!</span> <span
							class="ui green pointing left ui label error"
							ng-show="form.email.$dirty&& form.email.$error.unique">
							Email already in use </span>
					</div>

					<!-- UserName -->
					<div class="input-group input-group--inline"
						ng-class="{ error: form.userName.$error.unique }">
						<label>Username</label> <input placeholder="Username"
							name="userName" type="text" ng-model="userName"
							my-blur="checkUserName()" ng-minlength="6" ng-maxlength="12"
							required> <span
							class="ui green pointing left ui label error"
							ng-show="form.userName.$error.minlength"> Too short!Must
							be greater than 5 character </span> <span
							class="ui green pointing left ui label error"
							ng-show="form.userName.$error.maxlength"> Too long!Must be
							Less then 13</span> <span class="ui green pointing left ui label error"
							ng-show="form.userName.$dirty && form.userName.$error.unique">
							UserName already in use </span>
					</div>

					<!-- Password -->
					<div class="input-group input-group--inline"
						ng-class="{ error: form.password.$error.pattern }">
						<label>Password</label> <input name="password" type="password"
							placeholder="Password " ng-model="formData.password"
							ng-pattern="/(?=.*[a-z])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[^a-zA-Z])(?=.*[0-9])/"
							required> <span
							class="ui green pointing left ui label error"
							ng-show="form.password.$dirty && form.password.$error.pattern">
							Password must contain at least 1 uppercase alphabet, <br>1
							lowercase alphabet, 1 number and 1 special character
						</span>
					</div>

					<!-- Confirm Password -->
					<div class="input-group input-group--inline">
						<label>Confirm Password</label> <input name="confirmPassword"
							type="password" id="confirmPassword" ng-model="confirmPassword"
							ng-required data-password-Check="formData.password"
							placeholder="Confirm Password"> <span
							class="ui green pointing left ui label error"
							ng-show="form.confirmPassword.$error.passwordCheck">
							Passwords don't match.</span>
					</div>


					<!-- Choose Account Type -->


					<div class="two input-group input-group--inline">
						<label>Account Type</label> <select name="role"
							class="ui search dropdown">
							<c:forEach items="<%=EnumRoles.getRolesForSignUP()%>" var="role">
								<option value="${role.role}">${role.displayName}</option>
							</c:forEach>
						</select>
					</div>



					<!-- Already has an account -->
					<div class="inline input-group input-group--inline">
						<p>
							Already have an account? <a
								href="${pageContext.request.contextPath}/user/login"
								tabindex="-1">SignIn</a>
						</p>
					</div>

					<div class="input-group input-group--submit">
						<button type="submit" name="SAVE"
							ng-disabled="form.userName.$dirty && form.userName.$invalid ||
  							form.email.$dirty && form.email.$invalid">Sign
							up</button>
					</div>

				</form>
			</div>


		</div>
	</div>

</section>
</main>
<%@ include file="footer.jsp"%>