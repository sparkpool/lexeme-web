

<%@page import="com.sd.web.enums.EnumContactUsReason"%>
<%@ include file="header.jsp"%>

<nav></nav>
<main> <!-- Error Message -->
<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--medium">

			<h1 class="title--large">Contact Us</h1>
			
			<hr>
			<div class="container container--medium" id="contact-form">
				<p class="title--small">Contact Us</p>
				<div class="row">
					<div class="col-md-4 col-md-offset-4" align="center">
						<%@ include file="message.jsp"%>
					</div>
				</div>

				<form id="supportForm" data-ajax=""
					action="${pageContext.request.contextPath}/contactUs"
					method="POST" novalidate="" autocomplete="off"
					class="ng-pristine ng-valid"
					>


					<div class="input-group input-group--inline">
						<label for="name">Email</label> <input type="text" name="email"
							placeholder="Email"value="${email}"
							>
					</div>

					<div class="input-group input-group--inline">
						<label for="name">Comment</label> 
						
						<textarea rows="20" cols="10" name="comment" placeholder="Type here" ></textarea>
						
					</div>
					
					
					<div class="input-group input-group--inline">
					
					 <select name="reason">
+                              <c:forEach items="<%=EnumContactUsReason.values() %>" var="reason">
+                                 <option value="${reason.id}">${reason.reason}</option>
+                              </c:forEach> 
+                            </select>
					</div>

					<div class="input-group input-group--submit" align="center">
						<button type="submit" >Send</button>
					</div>
				</form>

			</div>
		</div>
	</div>
</section>
</main> <%@ include file="footer.jsp"%>