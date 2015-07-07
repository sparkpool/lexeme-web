						<!-- Personal Information -->
						<div class="ui bottom attached  tab segment" data-tab="third" ng-controller="authCtrl" ng-app="myApp">


							<div class="right aligned column">
								<h5 align="left">Academic Information</h5>
								<%@ include file="errorMessage.jsp" %>		
								
							</div>
							<hr>

							<div class="column">
								<div class="ui horizontal segment">
									<form name="form" method="POST" class="ui form"
										ng-submit="academicInfortion();" role="form">

									<div class="right field input">
											<label>School/University Name</label> 
												<input type="text"
												name="school" 
												id="school"
												value="${userTO.userEducation.school}"
												placeholder="School Name" 
												ng-model="formData.school" 
												ng-init="formData.school='${userTO.userEducation.school}'"
												/>
										</div>


										<div class="right field input">
											<label>Degree</label> 
											<input type="text" 
												name="degree"
												id="degree" 
												value="${userTO.userEducation.degree}"
												placeholder="Degree" 
												ng-model="formData.degree" 
												ng-init="formData.degree='${userTO.userEducation.degree}'"
												/>
										</div>


										<div class="right field input">
											<label>Year of Passing</label> 
											<input type="text" 
												name="year"
												id="year" 
												value="${userTO.userEducation.year}"
												placeholder="Year of Passing" 
												ng-model="formData.year" 
												ng-init="formData.year='${userTO.userEducation.year}'"
									
												/>
										</div>



										<div class="field">
											<label>Subject</label> 
											<input type="text" 
												name="subject"
												id="subject" 
												value="${userTO.userEducation.subject}"
												placeholder="Subject" 
												ng-model="formData.subject" 
												ng-init="formData.subject='${userTO.userEducation.subject}'"
									
												/>
										</div>
							
											<div class="field">
											<label>Other</label> 
											
											<textarea rows="6" cols="10"
												class="form-control"
												name="others"
												id="others" 
												value="${userTO.userEducation.others}"
												placeholder="Other" 
												ng-model="formData.others" 
												ng-init="formData.others='${userTO.userEducation.others}'"
									
											
											></textarea>
										</div>



										<div class="field">
											<input class="ui orange save button" type="submit"
												name="SAVE" placeholder="Edit"
															ng-disabled="!form.$dirty"
		
												>

										</div>


									</form>

								</div>
							</div>


							<!-- Contact Information -->
						</div>
