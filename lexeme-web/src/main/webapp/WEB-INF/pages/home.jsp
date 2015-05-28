
<!--Header--->
<%@ include file="header.jsp"%>

<div class="page-section intro">
	<div class="container">
		<div class="pull-left">
			<p align="left"
				style="color: #FFFFFF; padding-top: 60px; text-shadow: inherit; table-layout: auto; font-size: 36px;">
				Welcome to CampusManiac</p>
			<div class="col-lg-7">
				<blockquote class="bs-callout bs-callout-warning">You
					can download an existing solution form solution libraray</blockquote>
				<div class="btn-group" align="left">
					<button class="btn btn-warning btn-lg" data-toggle="modal"
						data-target="#makePayment" onClick="addQuestion()">Get
						Solution</button>
				</div>
			</div>
			<div class="col-lg-7">
				<blockquote class="bs-callout bs-callout-warning">You
					can ask form help from our experts</blockquote>
				<div class="btn-group" align="left">
					<button class="btn btn-warning btn-lg" data-toggle="modal"
						data-target="#makePayment" onClick="addQuestion()">Ask
						Question</button>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="africa" class="page-section">
	<div class="container">
		<div class="pull-left">
			<p align="left"
				style="color: #FFFFFF; padding-top: 60px; text-shadow: inherit; table-layout: auto; font-size: 36px;">How
				it Works</p>
			<div class="col-lg-7">
				<blockquote class="bs-callout bs-callout-warning">
	<shiro:guest>Yes Guest User</shiro:guest>
	<shiro:hasRole name="<%=EnumRoles.STUDENT_UNVERIFIED.toString() %>">Yes STUDENT UNVERIFIED ROLE</shiro:hasRole>
	<shiro:hasRole name="<%=EnumRoles.STUDENT.toString() %>">Yes STUDENT UNVERIFIED ROLE</shiro:hasRole>
	<shiro:hasRole name="<%=EnumRoles.TUTOR_UNVERIFIED.toString() %>">Yes TUTOR UNVERIFIED ROLE</shiro:hasRole>		
	<shiro:hasRole name="<%=EnumRoles.TUTOR.toString() %>">Yes Tutor ROLE</shiro:hasRole>		
		
				You
					can download an existing solution form solution libraray</blockquote>
				<div class="btn-group" align="left">
					<button class="btn btn-warning btn-lg" data-toggle="modal"
						data-target="#makePayment" onClick="addQuestion()">Get
						Solution</button>
				</div>
			</div>
			<div class="col-lg-7">
				<blockquote class="bs-callout bs-callout-warning">You
					can ask form help from our experts</blockquote>
				<div class="btn-group" align="left">
					<button class="btn btn-warning btn-lg" data-toggle="modal"
						data-target="#makePayment" onClick="addQuestion()">Ask
						Question</button>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>
