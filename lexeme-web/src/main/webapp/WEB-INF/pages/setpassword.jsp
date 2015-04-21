
<!--Header--->
<%@ include file="header.jsp"%>
<br />
<br />
<div class="ui center aligned three column grid">

	<div class="column">

		<div class="inline example" >
			<h1>Login</h1>

			<form class="ui form" action="${pageContext.request.contextPath}/user/login" method="POST"
				 >

				<!-- Old password-address -->
				<div class="field">
					<label>Email</label> <input placeholder="Email" name="email"
						type="email">
				</div>


				<!-- New Password -->
				<div class="field">
					<label>Password</label> <input name="password" type="password"
						placeholder="Password ">
				</div>

				<!-- Confirm Password -->
				<div class="field">
					<label>Confirm Password</label> <input name="password"
						type="password" id="password-confirm"
						placeholder="Confirm Password">
				</div>

			
				
				<div class="ui field">
				<input class="ui blue submit button" type="submit" name="SAVE">
 				</div>

			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>