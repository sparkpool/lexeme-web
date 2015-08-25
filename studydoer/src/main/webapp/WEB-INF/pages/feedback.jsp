

<%@page import="com.sd.web.enums.EnumFeedbackCategory"%>
<%@ include file="header.jsp"%>

<nav></nav>
<main> <!-- Error Message -->
<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--medium">
			<h1 class="title--small">Feedback</h1>
			<div class="container container--medium" id="contact-form">
				
				<form id="supportForm" data-ajax=""
					action="${pageContext.request.contextPath}/feedback/overall"
					method="POST" novalidate="" autocomplete="off"
					class="ng-pristine ng-valid">
					<p class="align-center">
						<%@ include file="message.jsp"%>
					</p>
					<div class="input-group input-group--inline">
						<label for="name"></label> <input type="text" name="email"
							placeholder="Email" value="${email}">
					</div>
					<div class="input-group input-group--inline">
						<label></label> <input type="text" name="subject"
							placeholder="Subject">
					</div>

					
					<div class="input-group input-group--inline">
						<label for="name"></label>

						<textarea rows="20" cols="10" name="comment"
							placeholder="Type Your comment here"></textarea>

					</div>
<div class="input-group input-group--inline">
						<label></label> <select name="category"
							class="ui search dropdown"> +
							<c:forEach items="<%=EnumFeedbackCategory.values()%>"
								var="category">
+                                 <option value="${category.id}">${category.category}</option>
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