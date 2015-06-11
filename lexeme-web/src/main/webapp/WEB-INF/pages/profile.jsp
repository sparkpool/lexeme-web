<%@page import="com.lexeme.web.enums.EnumRoles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<div id="page-content" >
	<div class=" container-fluid" >
		<section id="content">
			<!-- Profile Picture -->
			<div class="row">
				<div class="col-lg-2">
					<div class="profile">
						<img
							src="${pageContext.request.contextPath}/resources/images/nophoto_pic.gif">
					</div>
				</div>
				<!-- extra information about user -->

				<div class="col-lg-4 col-lg-offset-1">
					<!-- Brief description about user -->
					<div class="content" id="profile">
						<a class="header">Shrey Arora</a>
						<div class="meta">
							<span class="date">Create in Sep 2014</span>
						</div>

					</div>

				</div>


				<!-- Credit information -->

				<div class="col-lg-2 col-lg-offset-1">
					<!-- Brief description about user -->
					<div class="content" id="profile">
						<a class="header">Credit</a>
						<hr>
						<div class="creditBox">
							<span class="date">$69</span>
						</div>

						<!--  -->
						<shiro:hasAnyRoles name="<%=EnumRoles.getUnverifiedRoles()%>">
							<p><a href="/user/resendActLink">Click Here</a> to activate your account.</p>
						</shiro:hasAnyRoles>

					</div>

				</div>

				<%@ include file="message.jsp"%>
			</div>


			<hr>


			<!-- Profile Information Section -->

			<div class="row">
				<br />
				<div class="col-md-2 ">

					<div class="row">
						<div class="col-md-2 ">

							<a href="">Followers</a>
						</div>
					</div>
					<hr>

					<div class="row">

						<div class="col-lg-2 ">
							<a href="">Following</a>

						</div>

					</div>
					<hr>
					<div class="row">
						<div class="col-md-2 ">

							<a href="">Downloads</a>
						</div>
					</div>
					<hr>

				</div>


			<!-- User profile Data section -->
				<div class="col-md-8 " id="profile-form">
					<div class="profile">
						<div class="ui pointing secondary menu">
							<a class="active blue item" data-tab="first">Profile</a> <a
								class="blue item" data-tab="second">Experience</a> <a
								class="blue item" data-tab="third">Education</a> <a
								class="blue item" data-tab="forth">Settings</a>
						</div>
							
							
							<!-- User profile information -->
							<%@ include file ="userProfile.jsp" %>
							
							<!-- User Experience information -->
							<%@ include file ="userExperience.jsp" %>
							
							<!-- User education information -->
							<%@ include file ="userEducation.jsp" %>

							<!-- Acdemic information  section -->
							<%@ include file ="changePassword.jsp" %>
							<!-- Contact Information -->
							<%@ include file ="contactInformation.jsp" %>
							<!-- Close profile section -->
							
		<!-- end user profile data section -->
		</section>
	</div>
</div>



<%@ include file="footer.jsp"%>
