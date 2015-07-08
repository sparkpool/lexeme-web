<%@ include file="header.jsp"%>

<div id="page-content1">
	<div class="container">
		<section id="content">
			<div class="row">

				<!-- Error Message -->
				<div class="row">
					<div class="col-md-4 col-md-offset-4" align="center">
						<%@ include file="message.jsp"%>
					</div>
				</div>

				<!-- Heading -->
				<div class="row">
					<div class="col-xs-12" align="center">
						<div class="feedback-form-center">
							<div class="feedback-support-text">
								<h1>Forgot Password</h1>
								<p>Enter your email address to reset your password. </p>
							</div>
						</div>
					</div>
				</div>

				<!-- Form -->
				<div class="row">
					<div class="col-md-12 ">
						<div class="ui center aligned two column grid">
							<div class="left aligned column">
								<form id="feedback-form" class="ui form "
									action="${pageContext.request.contextPath}/user/fp"
									method="POST">

									<!-- Email-address -->
									<div class="field">
										<label>Email</label> <input placeholder="Email" name="email"
											type="email" style="width: 18em;">

									</div>
									<div class="ui field">
										<input class="ui blue submit button" type="submit" name="SAVE"
											value="Submit" id="btnclick">
									</div>



								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>
	</div>
</div>



<%@ include file="footer.jsp"%>
