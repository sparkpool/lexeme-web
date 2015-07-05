<%@ include file="header.jsp"%>

<div id="page-content1">

	<div class="container">
		<section id="content">
				<div class="row">
				<div class="col-md-12" align="center">
					<div class="feedback-form-center">
						<div class="feedback-support-text">
							<h1>Forgot Password</h1>
							<p>Enter your email address to reset your password. You may
								need to check your spam folder or unblock
								no-reply@studydoer.com.</p>
						</div>
					</div>
				</div>
			</div>
		
			<div class="row">
				<div class="col-xs-12">
					<div class="ui center aligned three column grid">
						<div class="column">
							<%@include file="message.jsp"%>

							
							<br />
							<form class="ui form"
								action="${pageContext.request.contextPath}/user/fp"
								method="POST">

								<!-- Email-address -->
								<div class="field">
									<input placeholder="Email" name="email" type="email">
								</div>

								<!-- Submit Button -->
								<div class="field" align="right">
									<input class="ui blue submit button" type="submit" name="SAVE" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<%@ include file="footer.jsp"%>