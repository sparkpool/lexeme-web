
<!--Header--->
<%@ include file="header.jsp"%>

<nav></nav>
<main> <!-- Error Message -->
<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--medium">

			<h1 class="title--small">Login to your Account</h1>
			
			
			<div class="container container--medium" id="contact-form">

				<form id="supportForm" data-ajax=""
					action="${pageContext.request.contextPath}/user/login"
					method="POST" novalidate="" autocomplete="off"
					class="ng-pristine ng-valid" name="form" ng-app="myApp">
					<p class="align-center">
						<%@ include file="message.jsp"%>
					</p>


					<div class="input-group input-group--inline">
						<label></label> <input type="email" name="email"
							placeholder="Email" data-validate="required" ng-model="email">

					</div>

					<div class="input-group input-group--inline">
						<label for="name"></label> <input type="password" name="password"
							placeholder="Password" data-validate="password|required"
							ng-model=form.Password
							"
							class="ng-pristine ng-untouched ng-valid">
						<div class="validation-message">Is required | The format is
							invalid</div>
					</div>
					<p class="align-right">

						<a href="${pageContext.request.contextPath}/user/fp" tabindex="-1">Forgot
							your password?</a>

					</p>
					<p class="align-center">
						<button type="submit" class="button button--orange button--large">Login</button>
					</p>

				</form>

			</div>
		</div>
	</div>
</section>
</main>
<%@ include file="footer.jsp"%>