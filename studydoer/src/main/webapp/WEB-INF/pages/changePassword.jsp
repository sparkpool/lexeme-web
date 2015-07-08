
<div class="ui bottom attached  tab segment" data-tab="forth">

	<!-- Change password section -->


		<div class="right aligned column">
			<h5 align="left">Change Password</h5>


		<hr>
				<!-- Chnage password -->
				<form
					action="${pageContext.request.contextPath}/profile/changePassword"
					name="form" id="form" method="POST" class="ui form" >
					<div class="right field input">

						<label>Current Password</label> <input type="password"
							name="oldPassword" placeholder="Current Password" ng-model="oldPassword" required="required"/>
					</div>

					<div class="right field input">
						<label>New Password</label> <input type="password" name="password" id="password"
							placeholder="New Password"  ng-model="password" required="required"/>
					</div>


					<div class="right field input">
						<label>Confirm New Password</label> <input name="confirmPassword"
							type="password" id="password-confirm"
							placeholder="Confirm Password" ng-model="confirmPassword" required="required">
					</div>

					<div class="field">
						<input class="ui orange save button" type="submit" name="SAVE"
							ng-disabled="form.$invalid"
		
							placeholder="Edit">
					</div>

				</form>
