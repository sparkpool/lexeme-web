
<!--Header--->
<%@ include file="header.jsp"%>

<script type="text/javascript">
$(function() {
setTimeout(function() { $("#testdiv").fadeOut(1000); }, 500)
$('#btnclick').click(function() {
$('#testdiv').show();
setTimeout(function() { $("#testdiv").fadeOut(1000); }, 500)
})
})
</script>

<div id="page-content">
   
  <div class="container" >
 		<div class="ui center aligned two column grid">
			<div class="left aligned column">
				
				<h1 align="center">Login</h1>
					<div class="field">
				
				<%@ include file="message.jsp"%>
				</div>
				<form id="feedback-form" class="ui form "
					action="${pageContext.request.contextPath}/user/login"
					method="POST">

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
						<input class="ui blue submit button" type="submit" name="SAVE"
							value="Login" id="btnclick">
					</div>
				</form>
			</div>
		</div>

</div>
</div>
<%@ include file="footer.jsp"%>
