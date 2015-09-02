

<%@page import="com.sd.web.enums.EnumContactUsReason"%>
<%@ include file="header.jsp"%>

<nav></nav>
<main> <!-- Error Message -->
<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--medium">

			<div class="container container--medium" id="contact-form">
				<p class="title--small">Contact Us</p>

				<form id="supportForm" data-ajax=""
					action="${pageContext.request.contextPath}/contactUs" method="POST"
					novalidate="" autocomplete="off" class="ng-pristine ng-valid">


					<p class="align-center">
						<%@ include file="message.jsp"%>
					</p>

					<div class="input-group input-group--inline">
						<label for="name"></label> <input type="email" name="email"
							placeholder="Email" value="${email}" ng-model="email"> <span
							class="ui green pointing left ui label error"
							ng-show="form.email.$error.email"> Not valid email!</span>
					</div>
					<div class="input-group input-group--inline">
						<label for="name"></label>

						<textarea rows="20" cols="10" name="comment"
							placeholder="Type your comment here"></textarea>

					</div>


					<div class="input-group input-group--inline">
						<label></label> <select name="reason"
							class="ui selection dropdown" multiple="" id="multi-select">
							+
							<c:forEach items="<%=EnumContactUsReason.values()%>" var="reason">
+                                 <option value="${reason.id}">${reason.reason}</option>
+                              </c:forEach> +
						</select>
					</div>
					<p class="align-center">

						<button type="submit" class="button button--orange button--large">Send</button>


					</p>
				</form>

			</div>
		</div>
	</div>
</section>
</main>
<%@ include file="footer.jsp"%>