<<<<<<< HEAD
=======
<%@page import="com.sd.web.enums.EnumContactUsReason"%>
<%@ include file="header.jsp"%>
>>>>>>> master


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
<<<<<<< HEAD

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
=======
			</div>

			<!-- Form -->
		<div class="row">
			<div class="col-md-12 ">
				<div class="ui center aligned two column grid">
					<div class="left aligned column">
						<form id="feedback-form" class="ui form "
							action="${pageContext.request.contextPath}/contactUs"
							method="POST">

							<!-- Email-address -->
							<div class="field">
								<label>Email</label> 
								<input placeholder="Email" name="email"
									type="email" value="${email}" style="width: 18em;">
							</div>
						
							<!-- Comment -->
							<div class="field">
								<label><i class="fa fa-comments"></i>Comments</label> 
								<textarea rows="5" cols="20" name="comment" placeholder="Type your feedback here"></textarea>
							</div>

                            <select name="reason">
                              <c:forEach items="<%=EnumContactUsReason.values() %>" var="reason">
                                 <option value="${reason.id}">${reason.reason}</option>
                              </c:forEach> 
                            </select>
							
							<div class="ui field">
								<input class="ui blue submit button" type="submit" name="SAVE"
									value="Submit" id="btnclick">
							</div>
						</form>
>>>>>>> master
					</div>
				</form>

			</div>
		</div>
	</div>
<<<<<<< HEAD
</section>
</main> <%@ include file="footer.jsp"%>
=======
		</section>
	</div>
</div>
<%@ include file="footer.jsp"%>
>>>>>>> master
