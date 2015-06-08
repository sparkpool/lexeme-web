
<div class="ui bottom  attached tab segment" data-tab="second" ng-controller="authCtrl" ng-app="myApp">
	<div class="right aligned column">
		<h5 align="left">Experience</h5>
		<%@ include file="errorMessage.jsp" %>		
		
		<hr>
		<form name="form" method="POST" class="ui form"
			 ng-submit="userExperience();">
			<div class="field">
				<label> Company Name</label> 
				<input type="text" 
					name="company"
					id="company" 
					value="${userTO.userExperience.company}"
					placeholder="Company" 
					ng-model="formData.company" 
					ng-init="formData.company='${userTO.userExperience.company}'"
					/>
			</div>

			<div class="field">
				<label>Job Title</label> 
				<input type="text" 
					  name="jobTitle"
					  id="jobTitle" 
					  value="${userTO.userExperience.jobTitle}"
					  placeholder="Job Title" 
					  ng-model="formData.jobTitle" 
					  ng-init="formData.jobTitle='${userTO.userExperience.jobTitle}'"
					  
					  
					  />
			</div>

			<div class="field">
				<label>From:</label>
				<div class="input-group input-append date" 
					id="">
					<input type="text" 
						class="form-control" 
						name="fromTime"
						id="date2" 
						value="${userTO.userExperience.fromTime}"
						placeholder="From date(dd/mm/yyyy)"
						ng-model="formData.fromTime" 
					  	ng-init="formData.fromTime='${userTO.userExperience.fromTime}'"
						
						 /> 
						
						<!-- Create Span for Calendar Image -->
						<span class="input-group-addon add-on">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
				</div>



			</div>
			<div class="field">
				<label>to:</label>
				<div class="input-group input-append date" 
					id="datePicker1">
					<input type="text" 
						class="form-control" 
						name="toTime" 
						id="date3"
						value="${userTO.userExperience.toTime}" 
						placeholder="To date(dd/mm/yyyy)" 
						ng-model="formData.toTime" 
					  	ng-init="formData.toTime='${userTO.userExperience.toTime}'"
					  	ng-change="setNewDate(formData.toTime)"
					  	
						 /> 
						 
						
						
						<!-- Create Span for Calendar Image -->
						<span class="input-group-addon add-on">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
			</div>

				<div class="field">
					<label>Location</label> 
					<input type="text" 
						name="location"
						id="location" 
						value="${userTO.userExperience.location}"
						placeholder="Location" 
						ng-model="formData.location" 
					  	ng-init="formData.location= '${userTO.userExperience.location}'"
						
						/>
				</div>
				<div class="field">
					<label>Other</label> 
					<input type="text" 
						name="other" 
						id="other"
						value="${userTO.userExperience.other}" 
						placeholder="Other" 
						ng-model="formData.other" 
					  	ng-init="formData.other='${userTO.userExperience.other}'"
						/>
				</div>


			</div>

			<input class="ui orange save button" 
					type="submit" 
					name="SAVE"
					placeholder="Edit">

		</form> <!-- End form -->
		
	</div> <!--  -->
</div>
