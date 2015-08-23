<%@page import="com.sd.web.enums.EnumContactUsReason"%>
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
				<div class="col-md-12" align="center">
				<i class="fa fa-envelope fa-3x" style="color:orange;"></i>
					<div class="feedback-form-center">
						<div class="feedback-support-text">
							<h1 >Contact us</h1>
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
					</div>
				</div>
			</div>
		</div>
	</div>
		</section>
	</div>
</div>
<%@ include file="footer.jsp"%>
