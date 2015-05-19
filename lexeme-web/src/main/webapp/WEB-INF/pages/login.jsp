
<!--Header--->
<%@ include file="header.jsp"%>

<script type="text/javascript">
	$(function() {
		setTimeout(function() {
			$("#testdiv").fadeOut(1000);
		}, 500)
		$('#btnclick').click(function() {
			$('#testdiv').show();
			setTimeout(function() {
				$("#testdiv").fadeOut(1000);
			}, 500)
		})
	})
</script>

<div id="page-content">

	<div class="container-fluid">
		<div class="row">

			<div class="col-xs-12">
				<%@ include file="message.jsp"%>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<h1 align="center">Login</h1>
				</div>
			</div>
		</div>
	<hr>
 
		<div class="row">
			<div class="col-md-5" align="center">
			
				<div class="row">
					<div class="col-md-5 col-md-offset-8">
						<button type="button" class="btn btn-info" placeholder="">Log
							in with Gmail</button>
					</div>

				</div>

				<br />

				<div class="row">
					<div class="col-md-5 col-md-offset-8">
						<button type="button" class="btn btn-warning" placeholder="">Log
							in with Facebook</button>
					</div>
				</div>

				<br />
				<div class="row">
					<div class="col-md-5 col-md-offset-8">
						<button type="button" class="btn btn-warning" placeholder="">Log
							in with Google Plus</button>

					</div>

				</div>

			</div>

			<div class="col-md-7 ">
				<div class="ui center aligned two column grid">
					<div class="left aligned column">
						<div class="field"></div>
						<form id="feedback-form" class="ui form "
							action="${pageContext.request.contextPath}/user/login"
							method="POST">

							<!-- Email-address -->
							<div class="field">
								<label>Email</label> <input placeholder="Email" name="email"
									type="email" style="width: 20em;">

							</div>


							<!-- Password -->
							<div class="field">
								<label>Password</label> <input name="password" type="password"
									placeholder="Password " style="width: 20em;">


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
	</div>
		<hr>
 
</div>


<%@ include file="footer.jsp"%>
