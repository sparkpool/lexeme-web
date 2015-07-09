<%@page import="com.sd.web.enums.EnumRoles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<div id="page-content1">
	<div class=" container">
		<section id="content">
			<!-- Profile Picture -->
			<div class="row">
				<div class="profile-header">
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
							<a class="header">${userTO.userProfile.firstName}
								${userTO.userProfile.lastName}</a>
							<div class="meta">
								<shiro:hasAnyRoles name="<%=EnumRoles.getUnverifiedRoles()%>">
									<div style="background-color: red;"
										ng-controller="validateCtrl" ng-app="myApp">
										<div class="alert alert-success" role="alert">
											<button type="button" class="close" data-dismiss="alert"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<div style="background-repeat: no-repeat; color: #4F8A10;">
												<p style="color: red;" ng-hide="link">
													Your account is not activate.<a href=""
														ng-click="sendActivationLink()">Click Here</a> to activate
													your account.
												</p>
												<p style="color: red;" ng-show="link">{{userMsg}}</p>
											</div>
										</div>
									</div>
								</shiro:hasAnyRoles>
							</div>
							<div class="row">
								<%@ include file="message.jsp"%>
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
							<span class="date">$0</span>
						</div>

						<!--  -->
					</div>

				</div>


			</div>


			<hr>


			<!-- Profile Information Section -->
			<div class="row">
				<div class="col-md-2 ">
					<!-- Show number of followers -->
					<div class="row">
						<div class="col-md-2 ">
							<a href="">Followers</a>
						</div>
					</div>
					<hr>
					<!-- Show number of following -->
					<div class="row">
						<div class="col-lg-2 ">
							<a href="">Following</a>
						</div>
					</div>
					<hr>
					<!-- Show of downloaded documents -->
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
							<!-- Profile Settings -->
							<a class="active blue item" data-tab="first">Profile</a>
							<!-- Experience Settings -->
							<shiro:hasAnyRoles name="<%=EnumRoles.getTutorRoles()%>">
								<a class="blue item" data-tab="second">Experience</a>
							</shiro:hasAnyRoles>
							<!-- Education settings -->
							<a class="blue item" data-tab="third">Education</a>
							<!-- Account settings -->
							<a class="blue item" data-tab="fourth">Settings</a>
							<!-- Order history Tab -->
							<a class="blue item" data-tab="fifth">Payment history</a>
							<!-- Document History Tab -->
							<a class="blue item" data-tab="six">Documents history</a>
						</div>
						<!-- User profile information -->
						<%@ include file="userProfile.jsp"%>
						<!-- User Experience information -->
						<shiro:hasAnyRoles name="<%=EnumRoles.getTutorRoles()%>">
							<%@ include file="userExperience.jsp"%>
						</shiro:hasAnyRoles>
						<!-- User education information -->
						<%@ include file="userEducation.jsp"%>
						<!-- Acdemic information  section -->
						<%@ include file="changePassword.jsp"%>
						<!-- Contact Information -->
						<%@ include file="contactInformation.jsp"%>
						<!-- Payment Information -->
						
						<!-- Document history Information -->
						<!-- Close profile section -->
					</div>
					</div>
					</div>
					
			
			<!-- end user profile data section -->
		</section>
	</div>
</div>



<%@ include file="footer.jsp"%>
