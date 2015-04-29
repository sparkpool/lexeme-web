
<!--Header--->
<%@ include file="header.jsp"%>
<section id="content">
	<div class="ui center aligned three column grid">

		
	
		<!-- Signin column -->
		<div class="column">
		<div class="ui form ">
			<br>
			<h1>Login</h1>

			<form class="ui form "
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
	
	</div>
	
	</section>
	<%@ include file="footer.jsp"%>
