<%@ include file="header.jsp"%>

<div id="page-content">
   
  <div class="container" >
  <section id="content">
 <div class="ui center aligned three column grid">
	<div class="column">
			<%@include file="message.jsp" %>
		
			<h1>Forgot Password</h1>
			<p>Enter your email address to reset your password. 
			You may need to check your spam folder or unblock no-reply@lexeme.com.</p>
			<br/>
			<form class="ui form" action="${pageContext.request.contextPath}/user/fp" method="POST">

				<!-- Email-address -->
				<div class="field">
		
					<input placeholder="Email" name="email"
						type="email">
				</div>

				<!-- Submit Button -->
				<div class="field" align="right">
					<input class="ui blue submit button" type="submit" name="SAVE"/>
 				</div>
			</form>
	</div>
</div>
</section>
</div>
</div>
<%@ include file="footer.jsp"%>