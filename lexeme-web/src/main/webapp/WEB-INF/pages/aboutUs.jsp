
<!--Header--->
<%@ include file="header.jsp"%>
<br/>
<br/>
<div class="ui center aligned three column grid">

	<div class="column">
		
		<h1>Login</h1>
			<form class="ui form" >

				<!-- Email-address -->
				<div class="field">
					<label>Email</label> <input placeholder="Email" name="email"
						type="email">
				</div>


				<!-- Password -->
				<div class="field">
					<label>Password</label> <input name="password" type="password" placeholder="Password ">
				</div>


				<!-- Choose Account Type -->
				<div class="field"></div>
				
				<div class="inline field">
				
				<input name="terms" type="checkbox">
					<p>Already have an account? 
					<a href="${pageContext.request.contextPath}/user/login">SignIn</a>
					</p>

				</div>
				<input class="ui blue submit button" type="submit" name="SAVE"></div>
		
		</form>
	
	</div>
</div>
<%@ include file="footer.jsp"%>
