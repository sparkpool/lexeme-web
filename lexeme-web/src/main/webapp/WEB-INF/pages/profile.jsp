<%@ include file="header.jsp"%>

<section id="content">
	<div class=" container">
		<div class="ui grid ">
			<br> <br />

			<div class="three wide column">
				<!-- User Profile Pictures -->
				<div class="ui fluid card">
					<div class="image">
						<img
							src="${pageContext.request.contextPath}/resources/semantic/images/stevie.jpg">
					</div>

					<!-- Brief description about user -->
					<div class="content">
						<a class="header">Shrey Arora</a>
						<div class="meta">
							<span class="date">Create in Sep 2014</span>
						</div>
					</div>


					<!-- extra information about user -->


				</div>


			</div>

			<!-- Profile Information Section -->

			<div class="ten wide column segment">
				<div class="ui orange segment">

					<div class="profile">
						<div class="ui pointing secondary menu">
							<a class="active red item" data-tab="first">Profile</a> <a
								class="blue item" data-tab="second">Account Information</a> <a
								class="blue item" data-tab="third">Personal Information</a> <a
								class="yellow item" data-tab="paymenthistory">PayMent
								History</a> <a class="yellow item" data-tab="solution">Search
								Solution</a>

						</div>


						<div class="ui bottom  attached  active tab segment"
							data-tab="first">
							<div class="ui orange segment">

								<div class="right aligned column">
									<h5 align="left">User Information</h5>
									<input class="ui orange submit button" type="submit"
										name="SAVE" placeholder="Edit">

								</div>
								<hr>
								<form action="" class="ui form">
									<div class="field">
										<label>Name</label><input type="email" name="paypalid" />

									</div>
									<br />
									<div class="field">
										<label>School/University</label> <input type="email"
											name="paypalid" />
									</div>
									<br />
									<div class="field">
										<label>Joined Year:</label> <input type="email"
											name="paypalid" />
									</div>
									<br />
								</form>

							</div>

						</div>

						<div class="ui bottom  attached tab segment" data-tab="second">

							<!-- Change password section -->
							<div class="ui orange segment">


								<div class="right aligned column">
									<h5 align="left">Change Password</h5>
									<input class="ui orange save button" type="submit" name="SAVE"
										placeholder="Edit">

								</div>
								<hr>


								<div class="column">
									<div class="ui horizontal segment">

										<form action="" class="ui form">
											<div class="right field input">

												<label>Current Password</label> <input type="email"
													name="paypalid" />
											</div>

											<div class="right field input">
												<label>New Password</label> <input type="email"
													name="paypalid" />
											</div>


											<div class="right field input">
												<label>Confirm New Password</label> <input type="email"
													name="paypalid" />
											</div>



										</form>

									</div>
								</div>

							</div>


							<!-- Contact Information -->
							<div class="ui orange segment">
								<div class="right aligned column">
									<h5 align="left">Contact Information</h5>

									<input class="ui orange save button" type="submit" name="SAVE"
										placeholder="Edit">

								</div>

								<hr>
								<form action="" class="ui form">

									<div class="field">
										<label>Email:</label> <input type="email" name="paypalid" />
									</div>

									<div class="field">
										<label>Phone Number:</label> <input type="email"
											name="paypalid" />
									</div>


								</form>

							</div>




							<!-- PayPal Information -->
							<div class="ui orange segment">
								<div class="right aligned column">
									<h5 align="left">PayPal Email</h5>
									<input class="ui orange save button" type="submit" name="SAVE"
										placeholder="Edit">

								</div>
								<hr>

								<p>We pay our Heroes via PayPal. Please provide your email
									address so we can pay you! If you already have an email address
									associated with a PayPal account, please use that.</p>
								<form action="" class="ui form">
									<div class="field">
										<input type="email" name="paypalid" />
									</div>

								</form>
							</div>


						</div>



						<!-- Personal Information -->
						<div class="ui bottom attached  tab segment" data-tab="third">

							<!-- Acdemic information  section -->
							<div class="ui orange segment">


								<div class="right aligned column">
									<h5 align="left">Academic Information</h5>
									<input class="ui orange save button" type="submit" name="SAVE"
										placeholder="Edit">

								</div>
								<hr>


								<div class="column">
									<div class="ui horizontal segment">

										<form action="" class="ui form">
											<div class="right field input">

												<label>School Name</label> <input type="text"
													name="paypalid" />
											</div>

											<div class="right field input">
												<label>Degree</label> <input type="text" name="paypalid" />
											</div>


											<div class="right field input">
												<label>Year of Passing</label> <input type="email"
													name="paypalid" />
											</div>



										</form>

									</div>
								</div>

							</div>


							<!-- Contact Information -->
							<div class="ui orange segment">
								<div class="right aligned column">
									<h5 align="left">Experience</h5>

									<input class="ui orange save button" type="submit" name="SAVE"
										placeholder="Edit">

								</div>

								<hr>
								<form action="" class="ui form">

									<div class="field">
										<label> Company Name</label> <input type="email"
											name="paypalid" />
									</div>

									<div class="field">
										<label>Job Title</label> <input type="email" name="paypalid" />
									</div>

									<div class="field">
										<label>Exp.</label> <input type="email" name="paypalid" />
									</div>


								</form>

							</div>





						</div>



						<div class="ui botton attched tab" data-tab="paymenthistory">
							<div class="ui orange segment">

								<h5>Payment history</h5>
								<hr>

								<table class="ui sortable celled table">
									<thead>
										<tr>
											<th class="ascending">ID</th>
											<th class="ascending">Date</th>
											<th class="ascending">Title</th>
											<th class="ascending">Subject</th>
											<th class="ascending">Amount</th>
											<th class="ascending">Status</th>


										</tr>
									</thead>
									<tbody>
										<tr>
											<td>John</td>
											<td>No Action</td>
											<td>None</td>
										</tr>
										<tr>
											<td>Jamie</td>
											<td class="positive">Approved</td>
											<td class="warning">Requires call</td>
										</tr>
										<tr>
											<td>Jill</td>
											<td class="negative">Denied</td>
											<td>None</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<th>3 People</th>
											<th>2 Approved</th>
											<th></th>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
						<div class="ui botton attched tab" data-tab="solution">
							<div class="ui orange segment">

								<h5>Download Solution</h5>
								<hr>

								<div class="dashboard-profile-sections">
									<h6 class="dashboard-my-account-section_heading">
										Change Password <input type="submit" class="orange-btn xs"
											value="Save" />
									</h6>

									<form data-ng-submit="changePassword($event);">

										<div class="column">

											<fieldset>
												<label><strong>Current Password: </strong></label> <input
													type="password" data-ng-model="password.current " required
													title="Enter Old Password ">
											</fieldset>

										</div>

									</form>
									<div class="column"></div>

									<div class="column"></div>
								</div>


							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="footer.jsp"%>
