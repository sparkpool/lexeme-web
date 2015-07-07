
<div class="ui  segment" ng-controller="authCtrl" ng-app='myApp'>
	<div class="right aligned column" 
		ng-controller="authCtrl"
		ng-app="myApp">
		<h5 align="left">Contact Information</h5>
		
		<%@ include file="errorMessage.jsp" %>		
		<hr>
		<form name="form"
		 method="POST" class="ui form"
			ng-submit="contactInformation();">

			<div class="field">
				<label>Email:</label> <input type="email" name="email"
					ng-init="formData.email='${userTO.userContactInfo.email}'"
					value="${userTO.userContactInfo.email}" placeholder="Email" ng-model="formData.email" />
			</div>

			<div class="field">
				<label>Phone Number:</label> <input type="text" name="phoneNumber"
					ng-init="formData.phoneNumber='${userTO.userContactInfo.phoneNumber}'"
					id="phoneNo" value="${userTO.userContactInfo.phoneNumber}"
					placeholder="Phone Number" ng-model="formData.phoneNumber" />
			</div>

			<div class="field">

				<input class="ui orange save button" 
					type="submit" 
					name="SAVE"
					ng-disabled="!form.$dirty"
		
					placeholder="Edit">

			</div>
		</form>



	</div>
	
	<script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#date1').datepicker({
                    format: "dd/mm/yyyy"
                });  
                
                $('#date2').datepicker({
                    format: "dd/mm/yyyy"
                });  
                
                $('#date3').datepicker({
                    format: "dd/mm/yyyy"
                });  
                
                
            
            });
            
            </script>
	
</div>