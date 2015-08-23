<!DOCTYPE html>
<%@ include file="header.jsp"%>

<!-- Upper banner -->

<nav></nav>
<main>

		<h3 class="modal__title">Contact form</h3>
		<form id="supportForm" data-ajax=""
			action="http://www.truecaller.com/contact/support" method="POST"
			novalidate="" autocomplete="off" class="ng-pristine ng-valid">

			<div class="input-group input-group--inline">
				<label for="subject">Subject</label>
				<div class="select">
					<select name="subject" ng-model="contact.subject"
						style="opacity: 0; -webkit-appearance: menulist-button; width: 100px; position: absolute; height: 100px; font-size: 11.1999998092651px;"
						class="hasCustomSelect ng-pristine ng-untouched ng-valid">
						<option value="General">General</option>
						<option value="Premium">Premium</option>
						<option value="Profile">Profile</option>
						<option value="Search">Search</option>
						<option value="Caller-id">Caller ID</option>
					</select><span class="customSelect"
						style="opacity: 1; display: inline-block;"><span
						class="customSelectInner"
						style="width: 100px; display: inline-block;">General</span></span>
				</div>
			</div>
			<div class="input-group input-group--inline">
				<label for="name">Name</label> <input type="text" name="name"
					placeholder="e.g. John Doe" data-validate="required"
					ng-model="contact.name" class="ng-pristine ng-untouched ng-valid">
				<div class="validation-message">Is required</div>
			</div>
			<div class="input-group input-group--inline">
				<label for="phone_number">Phone number</label> <input type="tel"
					name="phone_number" placeholder="e.g +4690512214"
					ng-model="contact.phone_number"
					class="ng-pristine ng-untouched ng-valid">
			</div>
			<div class="input-group input-group--inline">
				<label for="name">Email</label> <input type="text" name="email"
					placeholder="e.g. john.doe@example.com"
					data-validate="email|required" ng-model="contact.email"
					class="ng-pristine ng-untouched ng-valid">
				<div class="validation-message">Is required | The format is
					invalid</div>
			</div>
			<div class="input-group input-group--inline">
				<label for="name">Register id</label> <input type="text"
					name="registerid" ng-model="contact.registerid"
					class="ng-pristine ng-untouched ng-valid">
			</div>
			<div class="input-group input-group--inline" ng-hide="platform">
				<label for="name">Platform</label>
				<div class="select">
					<select name="platform" ng-model="contact.platform"
						style="opacity: 0; -webkit-appearance: menulist-button; width: 100px; position: absolute; height: 100px; font-size: 11.1999998092651px;"
						class="hasCustomSelect ng-pristine ng-untouched ng-valid">
						<option value="Android">Android</option>
						<option value="Blackberry OS 7">Blackberry OS 7</option>
						<option value="Blackberry OS 10">Blackberry OS 10</option>
						<option value="Facebook App">Facebook App</option>
						<option value="Firefox OS">Firefox OS</option>
						<option value="iPhone">iPhone</option>
						<option value="Nokia S60">Nokia S60</option>
						<option value="Nokia S40">Nokia S40</option>
						<option value="Tizen">Tizen</option>
						<option value="Web">Web</option>
						<option value="Windows Phone 7">Windows Phone 7</option>
						<option value="Windows Phone 8">Windows Phone 8</option>
					</select><span class="customSelect"
						style="opacity: 1; display: inline-block;"><span
						class="customSelectInner"
						style="width: 100px; display: inline-block;">Android</span></span>
				</div>
			</div>
			<div class="input-group input-group--inline">
				<label for="msg">Message</label>
				<textarea type="text" name="msg" rows="10" data-validate="required"></textarea>
				<div class="validation-message">Is required</div>
			</div>
			<div class="input-group input-group--inline">
				<label for="captcha">Verification</label>
				<div class="captcha-field">
					<img class="captcha-image"
						src="http://www.truecaller.com/captcha/eyJpdiI6IndOcnJ0dVFHXC8wSmNHaEpwVHFjYUNrRTgwR3pFT29XQ05BN1FwYTVUcmZnPSIsInZhbHVlIjoiaXF5R0VoaE5WNUZVaWdsM1BrT05kVFBqU3dkY1NqSlhHWFwvbUJnVFh0dUVyXC90M3ZidEpEOVpEZXBhQzg3amxBM0lha3JZZlNUK0N6UWUzVkY5eWJxSzh1K0tkWHdMNTJIT042dUlNK3JJWUV2cUp0UjFcL2ZPdmNkTXE1ZWJDVDQiLCJtYWMiOiJjYTU0MDExMzcxNGQ2MTkzNGVmNDY3NzM0NmVjNmJmM2VjYmNlZjQyYzhhOWYxM2IzNjZhYmYwZDhmMDY5NzNiIn0=">
					<input type="text" name="captcha" placeholder="Verification code"
						data-validate="required">
					<div class="validation-message">The code is invalid</div>
				</div>
			</div>
			<div class="input-group input-group--submit">
				<button type="submit" disabled="disabled">Send</button>
			</div>
		</form>




</main>

<%@ include file="footer.jsp"%>
