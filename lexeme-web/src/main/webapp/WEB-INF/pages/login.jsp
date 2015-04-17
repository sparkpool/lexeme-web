
<!--Header--->
<%@ include file="header.jsp"%>
<br />
<br />
<div class="ui center aligned three column grid">

	<div class="column">

			<h1>Login</h1>

			<form class="ui form" action="${pageContext.request.contextPath}/user/login" method="POST"
				 >

				<!-- Email-address -->
				<div class="field">
					<label>Email</label> <input placeholder="Email" name="email"
						type="email">
				</div>


				<!-- Password -->
				<div class="field">
					<label>Password</label> <input name="password" type="password"
						placeholder="Password ">
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