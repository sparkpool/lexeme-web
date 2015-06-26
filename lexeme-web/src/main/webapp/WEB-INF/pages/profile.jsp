<%@page import="com.lexeme.web.enums.EnumRoles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<div id="page-content">
	<div class=" container-fluid">
		<section id="content">
			<!-- Profile Picture -->
			<div class="row">
				<div class="col-lg-2">
					<div class="profile">
						<img
							src="${pageContext.request.contextPath}/resources/images/nophoto_pic.gif"
							class="img-responsive img-circle">
					</div>
				</div>
				<!-- extra information about user -->

				<div class="col-lg-5 col-lg-offset-1">
					<!-- Brief description about user -->
					<div class="content" id="profile">
						<a class="header">Shrey Arora</a>
						<div class="meta">
							<span class="date">Create in Sep 2014</span> <br /> <br /> <br />

							<div style="background-color: red;">

								<div class="alert alert-success" role="alert">

									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">

										<span aria-hidden="true">&times;</span>
									</button>

									<div style="background-repeat: no-repeat; color: #4F8A10;"
										ng-controller="validateCtrl" ng-app="myApp">
										<shiro:hasAnyRoles name="<%=EnumRoles.getUnverifiedRoles()%>">
											<p style="color: red;" ng-hide="link">
												Your account is not activate.<a href=""
													ng-click="sendActivationLink()">Click Here</a> to activate
												your account.
											</p>

											<p style="color: red;" ng-show="link">{{userMsg}}</p>


										</shiro:hasAnyRoles>

									</div>
								</div>
							</div>

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
							<a class="active blue item" data-tab="first">Profile</a>
							<shiro:hasAnyRoles name="<%=EnumRoles.getTutorRoles() %>">
								 <a class="blue item" data-tab="second">Experience</a>
							</shiro:hasAnyRoles>
								 <a
								class="blue item" data-tab="third">Education</a> <a
								class="blue item" data-tab="forth"><i class="fa fa-cog"></i>Settings</a>
						</div>


						<!-- User profile information -->
						<%@ include file="userProfile.jsp"%>

						<!-- User Experience information -->
						
						<shiro:hasAnyRoles name="<%=EnumRoles.getTutorRoles() %>">
							<%@ include file="userExperience.jsp"%>
						</shiro:hasAnyRoles>
						<!-- User education information -->
						<%@ include file="userEducation.jsp"%>

						<!-- Acdemic information  section -->
						<%@ include file="changePassword.jsp"%>
						<!-- Contact Information -->
						<%@ include file="contactInformation.jsp"%>
						<!-- Close profile section -->

						<!-- end user profile data section -->
		</section>
	</div>
</div>



<%@ include file="footer.jsp"%>
