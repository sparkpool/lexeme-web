
<!-- Personal Information -->
<div class="ui bottom attached  tab segment" data-tab="third"
	ng-controller="authCtrl" ng-app="myApp">

	<div class="right aligned column">
		<h5 align="left">Academic Information</h5>
		<%@ include file="errorMessage.jsp"%>

		<hr>
		<form name="form" method="POST" class="ui form"
			ng-submit="academicInfortion();">

			<div class="right field input">
				<label>School/University Name</label> <input type="text"
					name="school" id="school" value="${userTO.userEducation.school}"
					placeholder="School Name" ng-model="formData.school"
					ng-init="formData.school='${userTO.userEducation.school}'" />
			</div>


			<div class="right field input">
				<label>Degree</label> <input type="text" name="degree" id="degree"
					value="${userTO.userEducation.degree}" placeholder="Degree"
					ng-model="formData.degree"
					ng-init="formData.degree='${userTO.userEducation.degree}'" />
			</div>


			<div class="right field input">
				<label>Year of Passing</label> <input type="text" name="year"
					id="year" value="${userTO.userEducation.year}"
					placeholder="Year of Passing" ng-model="formData.year"
					ng-init="formData.year='${userTO.userEducation.year}'" />
			</div>



			<div class="field">
				<label>Subject</label> <input type="text" name="subject"
					id="subject" value="${userTO.userEducation.subject}"
					placeholder="Subject" ng-model="formData.subject"
					ng-init="formData.subject='${userTO.userEducation.subject}'" />
			</div>

			<div class="field">
				<label>Other</label>

				<textarea rows="6" cols="10" class="form-control" name="others"
					id="others" value="${userTO.userEducation.others}"
					placeholder="Other" ng-model="formData.others"
					ng-init="formData.others='${userTO.userEducation.others}'"></textarea>
			</div>



			<div class="field">
			<p class="align-center">
						<button type="submit" class="button button--white button--large"  ng-disabled="!form.$dirty">Save</button>
					</p>
				

			</div>


		</form>

	</div>
</div>
