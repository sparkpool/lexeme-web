
<!--Header--->
<%@page import="com.lexeme.web.enums.EnumRoles"%>
<%@ include file="header.jsp"%>

<div class="main container">
	<br /> <br /> <br />

	<div class="ui two column middle aligned relaxed fitted stackable grid">

		<div class="center aligned column">

			<div class="huge green ui labeled icon button">
				<i class="signup icon"></i> Sign In
			</div>
		</div>

		<!-- Vertical Divider -->
		<div class="ui vertical divider">Or</div>
		<!-- Signin column -->
		<div class="left aligned column">


			<div class="column">
				<h1>Create An Account</h1>
				<form class="ui form "
					action="${pageContext.request.contextPath}/user/signup"
					method="POST">

					<!-- Email-address -->
					<div class="field">
						<label>Email</label> <input placeholder="Email" name="email"
							type="email">
					</div>

					<!-- UserName -->
					<div class="field">
						<label>Username</label> <input placeholder="Username"
							name="userName" type="text">
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
						<label>Account Type</label> 
						<select name="role" class="ui search dropdown">
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
					<input class="ui blue submit button" type="submit" name="SAVE">
				</form>
			</div>
		</div>
		<div></div>
	</div>
</div>
<%@ include file="footer.jsp"%>
