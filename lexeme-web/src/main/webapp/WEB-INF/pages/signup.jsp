<%@ include file="header.jsp"%>

<br />
<br />


<div class="ui center aligned three column grid">

	<div class="column">
		<div class="inline example">
			<h1>Create An Account</h1>
			<form class="ui form " 
				action="${pageContext.request.contextPath}/user/signup" method="POST">

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
					<label>Confirm Password</label> <input name="password"
						type="password" id="password-confirm"
						placeholder="Confirm Password">
				</div>


				<!-- Choose Account Type -->


				<div class=" two field">
					<label>Account Type</label> <select class="ui search dropdown">
						<option value="">Expert</option>
						<option value="AL">Student</option>

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
</div>
<div></div>
<%@ include file="footer.jsp"%>
