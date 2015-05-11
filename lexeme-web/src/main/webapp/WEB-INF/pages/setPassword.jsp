
<!--Header--->
<%@ include file="header.jsp"%>
<br />
<br />
	<section id="content">
	<div class="ui center aligned three column grid">
	<br/>
	<br/>
	<br/>

	<div class="left aligned column">
		<div class="inline example" >
			<h1>Set New Password</h1>

			<form class="ui form" action="${pageContext.request.contextPath}/user/setPassword" method="POST">
				<!-- New Password -->
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
				<div class="ui field">
				<input class="ui blue submit button" type="submit" name="SAVE">
 				</div>

			</form>
		</div>
	</div>
</div>
</section>

<%@ include file="footer.jsp"%>