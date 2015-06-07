
<div class="ui bottom  attached  active tab segment" data-tab="first" ng-controller="authCtrl" 
					  ng-app="myApp" >
	<div class="right aligned column">
		<h5 align="left">User Information</h5>
		<div style="color: red;">{{successMsg}}</div>
		
		<hr>
		<div class="two column">
			<div class=" column">


				<!-- User name -->
				<form name="form" 
					  method="POST" 
					  class="ui form"
					  ng-submit="userGenInfo();">


					<!-- firstName -->
					<div class="field">
						<label>First Name</label> 
						<input type="text" 
							name="firstName"
							id="first-name" 
							value="${userTO.userProfile.firstName}"
							placeholder="First Name" 
							ng-model="formData.firstName" 
							ng-init="formData.firstName='${userTO.userProfile.firstName}'"
							
							/>
					</div>
					<br />


					<!-- Middle Name -->
					<div class="field">
						<label>Middle Name</label>
						<input type="text" 
							name="middleName"
							id="middle-name" 
							value="${userTO.userProfile.middleName}"
							placeholder="Middle Name" 
							ng-model="formData.middleName" 
							ng-init="formData.middleName='${userTO.userProfile.middleName}'"
							
							
							/>

					</div>
					<br />


					<!-- last Name -->

					<div class="field">
						<label>Last Name</label>
						<input type="text" 
							name="lastName"
							id="last-name" 
							value="${userTO.userProfile.lastName}"
							placeholder="Last Name" 
							ng-model="formData.lastName" 
							ng-init="formData.lastName='${userTO.userProfile.lastName}'"
							
							
							/>

					</div>


					<!-- Sex -->

					<div class="field">
						<label>Sex</label> <select name="sex" class="ui search dropdown"
									ng-model="formData.sex" 
									ng-init="formData.sex='${userTO.userProfile.sex}'"
							
						
						>
							<optgroup label="Gender">
								<option value="">--Select--</option>
								<option value="Male"
									selected="${userTO.userProfile.sex eq 'Male' ? 'selected' : ''}">Male</option>
								<option value="Female"
									selected="${userTO.userProfile.sex eq 'Female' ? 'selected' : ''}">Female</option>
									
							</optgroup>
						</select>

					</div>


					<!-- Date of Birth -->
					<div class="field">
						<label>DOB</label>
						<div class="input-group input-append date" >
							<input type="text" 
								class="form-control" 
								name="dob" 
								id="dob"
								value="${userTO.userProfile.dob}" 
								placeholder="Date of Birth(dd/mm/yyyy)" 
								
								ng-model="formData.dob" 
								ng-init="formData.dob='${userTO.userProfile.dob}'"
							
								
								/>
							<span class="input-group-addon add-on"><span
								class="glyphicon glyphicon-calendar"></span></span>
						</div>
					</div>

					<!-- Country -->

					<div class="field">
						<label>Country</label> 
						<input type="text" 
							name="country"
							id="country" 
							value="${userTO.userProfile.country}"
							placeholder="Country" 
							ng-model="formData.country" 
							ng-init="formData.country='${userTO.userProfile.country}'"
							/>
					</div>


					<!-- City -->


					<div class="field">
						<label>City</label> 
						<input type="text" 
								name="city" 
								id="city"
								value="${userTO.userProfile.city}" 
								placeholder="City"
								ng-model="formData.city" 
								ng-init="formData.city='${userTO.userProfile.city}'"
								/>

					</div>


					<!-- State -->

					<div class="field">
						<label>State</label> 
						<input type="text" 
							   name="state" 
							   id="state"
								value="${userTO.userProfile.state}" 
								placeholder="State" 
								ng-model="formData.state" 
								ng-init="formData.state='${userTO.userProfile.state}'"
							/>
					</div>


					<!-- ZIp -->
					<div class="field">
						<label>Zip Code</label> 
						<input type="text" 
								name="zip" 
								id="zip"
								value="${userTO.userProfile.zip}" 
								placeholder="Zip Code" 
								ng-model="formData.zip" 
								ng-init="formData.zip='${userTO.userProfile.zip}'"
								
								/>
					</div>

					<!-- Address -->
					<div class="field">
						<label>Address</label> 
						<input type="text" 
								name="address"
								id="address" 
								value="${userTO.userProfile.address}"
								placeholder="Address" 
								ng-model="formData.address" 
								ng-init="formData.address='${userTO.userProfile.address}'"
								/>
					</div>

					<br /> <br />
					<div class="field">
						<input class="ui orange submit button" type="submit" name="SAVE"
							placeholder="Edit">

					</div>
				</form>

			</div>

		</div>

	</div>

</div>
