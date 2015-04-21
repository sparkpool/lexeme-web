
<!--Header--->
<%@ include file="header.jsp"%>

<div class="main container">
	<br /> <br /> <br />

	<div class="ui two column middle aligned relaxed fitted stackable grid">

		<div class="center aligned column">
			<br /> <br />
			<div class="huge green ui labeled icon button">
				<i class="signup icon"></i> Sign Up
			</div>
		</div>

		<!-- Vertical Divider -->
		<div class="ui vertical divider">Or</div>
		<!-- Signin column -->
		<div class="left aligned column">
			<br /> <br /> <br /> <br />
			<h1>Login</h1>

			<form class="ui form segment"
				action="${pageContext.request.contextPath}/user/login" method="POST">

				<!-- Email-address -->
				<div class="field">
					<label>Email</label>

					<div class="ui left icon input">
						<input placeholder="Email" name="email" type="email"> <i
							class="user icon"></i>
					</div>
				</div>


				<!-- Password -->
				<div class="field">
					<label>Password</label>
					<div class="ui left icon input">
						<input name="password" type="password" placeholder="Password ">
						<i class="lock icon"></i>
					</div>
				</div>

				<div class="inline field">


					<p>
						<a href="${pageContext.request.contextPath}/user/fp">Forgot
							your password</a>

					</p>

				</div>
				<div class="ui field">
					<input class="ui blue submit button" type="submit" name="SAVE">
				</div>
			</form>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</div>
