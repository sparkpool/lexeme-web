
<div class="ui bottom attached  tab segment" data-tab="forth">

	<!-- Change password section -->
	<div class="ui  segment">


		<div class="right aligned column">
			<h5 align="left">Change Password</h5>

		</div>

		<hr>
		<div class="column">
			<div class="ui horizontal segment">

				<!-- Chnage password -->
				<form
					action="${pageContext.request.contextPath}/profile/changePassword"
					name="form" method="POST" class="ui form">
					<div class="right field input">

						<label>Current Password</label> <input type="password"
							name="oldPassword" placeholder="Current Password" />
					</div>

					<div class="right field input">
						<label>New Password</label> <input type="password" name="password"
							placeholder="New Password" />
					</div>


					<div class="right field input">
						<label>Confirm New Password</label> <input name="confirmPassword"
							type="password" id="password-confirm"
							placeholder="Confirm Password">
					</div>

					<div class="field">
						<input class="ui orange save button" type="submit" name="SAVE"
							ng-disabled="!form.$dirty"
		
							placeholder="Edit">
					</div>

				</form>

			</div>
		</div>

	</div>