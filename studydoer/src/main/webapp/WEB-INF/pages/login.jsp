
<!--Header--->
<%@ include file="header.jsp"%>

<nav></nav>
<main> <!-- Error Message -->
<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--medium">

			<h1 class="title--large">Login</h1>
			
			<hr>
			<div class="container container--medium" id="contact-form">
				<p class="title--small">Login</p>
				<div class="row">
					<div class="col-md-4 col-md-offset-4" align="center">
						<%@ include file="message.jsp"%>
					</div>
				</div>

				<form id="supportForm" data-ajax=""
					action="${pageContext.request.contextPath}/user/login"
					method="POST" novalidate="" autocomplete="off"
					class="ng-pristine ng-valid"
					>


					<div class="input-group input-group--inline">
						<label for="name">Email</label> <input type="text" name="email"
							placeholder="Email" data-validate="required"
							ng-model="form.password" class="ng-pristine ng-untouched ng-valid">
						<div class="validation-message">Is required</div>
					</div>

					<div class="input-group input-group--inline">
						<label for="name">Password</label> <input type="password"
							name="password" placeholder="Password"
							data-validate="password|required" ng-model=form.Password"
							class="ng-pristine ng-untouched ng-valid">
						<div class="validation-message">Is required | The format is
							invalid</div>
					</div>

					<div class="input-group input-group--submit" align="center">
						<button type="submit" >Login</button>
					</div>
				</form>

			</div>
		</div>
	</div>
</section>
</main> <%@ include file="footer.jsp"%>