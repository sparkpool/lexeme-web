
<!--Header--->
<%@ include file="header.jsp"%>

<nav></nav>
<main> <!-- Error Message -->
<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--medium">

			<h1 class="title--small">Forgot Your Password</h1>
			<div class="container container--medium" id="contact-form">

				<form id="supportForm" data-ajax=""
					action="${pageContext.request.contextPath}/user/fp" method="POST"
					novalidate="" autocomplete="off" class="ng-pristine ng-valid"
					name="form" ng-app="myApp">
					<p class="align-center">
						<%@ include file="message.jsp"%>
					</p>


						<div class="input-group input-group--inline"
						ng-class="{ error: form.email.$error.unique }">
						<label></label> <input placeholder="Email" name="email"
							type="email" ng-model="email" > <span
							class="ui green pointing left ui label error"
							ng-show="form.email.$error.email"> Not valid email!</span>
					</div>

					<p class="align-center">
						<button type="submit" class="button button--orange button--large">Submit</button>
					</p>

				</form>

			</div>
		</div>
	</div>
</section>
</main>
<%@ include file="footer.jsp"%>