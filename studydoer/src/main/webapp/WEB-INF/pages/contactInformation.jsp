
<hr>
<div class="right aligned column" ng-controller="authCtrl"
	ng-app="myApp">
	<h5 align="left">Contact Information</h5>

	<%@ include file="errorMessage.jsp"%>
	<hr>
	<form name="form" method="POST" class="ui form"
		ng-submit="contactInformation();">

		<div class="field">
			<label>Email:</label> <input type="email" name="email"
				ng-init="formData.email='${userTO.userContactInfo.email}'"
				value="${userTO.userContactInfo.email}" placeholder="Email"
				ng-model="formData.email" />
		</div>

		<div class="field">
			<label>Phone Number:</label> <input type="text" name="phoneNumber"
				ng-init="formData.phoneNumber='${userTO.userContactInfo.phoneNumber}'"
				id="phoneNo" value="${userTO.userContactInfo.phoneNumber}"
				placeholder="Phone Number" ng-model="formData.phoneNumber" />
		</div>

		<div class="field">

				<p class="align-center">
						<button type="submit" class="button button--white button--large"  ng-disabled="!form.$dirty">Save</button>
					</p>
				
		</div>
	</form>

</div>





