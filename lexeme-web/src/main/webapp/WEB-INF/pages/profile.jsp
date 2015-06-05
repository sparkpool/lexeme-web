<%@page import="com.lexeme.web.enums.EnumRoles"%>
<%@ include file="header.jsp"%>

<div id="page-content">
	<div class=" container-fluid" ng-app="myApp" ng-controller="authCtrl">
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
						<shiro:hasAnyRoles name="<%= EnumRoles.getUnverifiedRoles() %>">
							Unverified
						</shiro:hasAnyRoles>

					</div>

				</div>


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

					<div class="row">
						<div class="col-md-2 col-sm-2">
							<p>Profile Link</p>

							<a href="">http://localhost:8080/lwb/user/ profile</a>
						</div>
					</div>

				</div>

				<div class="col-md-8 " id="profile-form">
					<div class="profile">
						<div class="ui pointing secondary menu">
							<a class="active blue item" data-tab="first">Profile</a> <a
								class="blue item" data-tab="second">Experience</a> <a
								class="blue item" data-tab="third">Education</a> <a
								class="blue item" data-tab="forth">Settings</a>
						</div>
						<div class="ui bottom  attached  active tab segment"
							data-tab="first">
							<div class="right aligned column">
								<h5 align="left">User Information</h5>
								<hr>
								<div class="two column">
									<div class=" column">

										<form action="" class="ui form" method="POST">
											<div class="field">
												<label>Name</label><input type="text" name="name" />

											</div>
											<br />
											<div class="field">
												<label>School/University</label> <input type="text"
													name="university" />
											</div>
											<br /> <br />
											<div class=" column">

												<input class="ui orange submit button" type="submit"
													name="SAVE" placeholder="Edit">

											</div>
										</form>

									</div>

								</div>

							</div>

						</div>

						<div class="ui bottom  attached tab segment" data-tab="second">
							<div class="right aligned column">
								<h5 align="left">Experience</h5>

								<hr>
								<form action="" class="ui form" method="POST" id="eventForm">
									<div class="field">
										<label> Company Name</label> <input type="text"
											name="companyName" />
									</div>

									<div class="field">
										<label>Job Title</label> <input type="text" name="Job Title" />
									</div>

									<div class="field">
										<label>From:</label>
										<div class="input-group input-append date" id="datePicker">
											<input type="text" class="form-control" name="date" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
										


									</div>
										<div class="field">
								
										<label>to:</label>
										<div class="input-group input-append date" id="datePicker1">
											<input type="text" class="form-control" name="date" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>

</div>

									<input class="ui orange save button" type="submit" name="SAVE"
										placeholder="Edit">


								</form>

							</div>


						</div>



						<!-- Personal Information -->
						<div class="ui bottom attached  tab segment" data-tab="third">


							<div class="right aligned column">
								<h5 align="left">Academic Information</h5>
							</div>
							<hr>


							<div class="column">
								<div class="ui horizontal segment">

									<form action="" class="ui form" ng-submit="changePassword();">
										<div class="right field input">

											<label>School Name</label> <input type="text" name="paypalid" />
										</div>

										<div class="right field input">
											<label>Degree</label> <input type="text" name="paypalid" />
										</div>


										<div class="right field input">
											<label>Year of Passing</label> <input type="email"
												name="paypalid" />
										</div>

										<div class="field">
											<input class="ui orange save button" type="submit"
												name="SAVE" placeholder="Edit">

										</div>


									</form>

								</div>
							</div>


							<!-- Contact Information -->
						</div>

						<div class="ui bottom attached  tab segment" data-tab="forth">

							<!-- Acdemic information  section -->
							<!-- Change password section -->
							<div class="ui  segment">


								<div class="right aligned column">
									<h5 align="left">Change Password</h5>

								</div>

								<hr>
								<div class="column">
									<div class="ui horizontal segment">

										<form action="" class="ui form" ng-submit="changePassword();">
											<div class="right field input">

												<label>Current Password</label> <input type="password"
													name="password" />
											</div>

											<div class="right field input">
												<label>New Password</label> <input type="password"
													name="newpwd" />
											</div>


											<div class="right field input">
												<label>Confirm New Password</label> <input type="password"
													name="confirmPassword" />
											</div>

											<div class="field">

												<input class="ui orange save button" type="submit"
													name="SAVE" placeholder="Edit">

											</div>

										</form>

									</div>
								</div>

							</div>


							<!-- Contact Information -->
							<div class="ui  segment">
								<div class="right aligned column">
									<h5 align="left">Contact Information</h5>
								</div>
								<hr>
								<form action="" class="ui form" ng-submit="changePassword();">

									<div class="field">
										<label>Email:</label> <input type="email" name="email" />
									</div>

									<div class="field">
										<label>Phone Number:</label> <input type="text"
											name="phNumber" />
									</div>

									<div class="field">

										<input class="ui orange save button" type="submit" name="SAVE"
											placeholder="Edit">

									</div>
								</form>
								
							<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
							<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
							<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
								
								<script>
 					$(document).ready(function () {
                
                $('#datePicker').datepicker({
                    format: "dd/mm/yyyy"
                });
                
                 $('#datePicker1').datepicker({
                    format: "dd/mm/yyyy"
                });
                
                });  
            

</script>
							</div>
						</div>
						<!-- Close profile section -->
		</section>
	</div>
</div>



<%@ include file="footer.jsp"%>
