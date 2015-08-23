<%@ include file="header.jsp"%>
<nav></nav>
<main>
		<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--medium">
			
			<h1 class="title--large">Contact us</h1>
			
			<p>Do you have a question that you need an answer to or simply want to ask how we are doing. Scribble down an email and we'll be sure to answer as quick as we can!</p>
			
			
			
		
		<hr>

		<div class="container container--medium" id="contact-form">
			<p class="title--small">Contact form</p>
			<form id="supportForm" data-ajax="" action="http://www.truecaller.com/contact/support" method="POST" novalidate="" autocomplete="off">

	<div class="input-group input-group--inline">
		<label for="subject">Subject</label>
		<div class="select">
			<select name="subject" ng-model="contact.subject" style="opacity: 0; -webkit-appearance: menulist-button; width: 391px; position: absolute; height: 11px; font-size: 11.1999998092651px;" class="hasCustomSelect">
				<option value="General">General</option>
				<option value="Premium">Premium</option>
				<option value="Profile">Profile</option>
				<option value="Search">Search</option>
				<option value="Caller-id">Caller ID</option>
			</select><span class="customSelect" style="opacity: 1; display: inline-block;"><span class="customSelectInner" style="width: 436px; display: inline-block;">General</span></span>
		</div>
	</div>
	<div class="input-group input-group--inline">
		<label for="name">Name</label>
		<input type="text" name="name" placeholder="e.g. John Doe" data-validate="required" ng-model="contact.name">
		<div class="validation-message">Is required</div>
	</div>
	<div class="input-group input-group--inline">
		<label for="phone_number">Phone number</label>
		<input type="tel" name="phone_number" placeholder="e.g +4690512214" ng-model="contact.phone_number">
	</div>
	<div class="input-group input-group--inline">
		<label for="name">Email</label>
		<input type="text" name="email" placeholder="e.g. john.doe@example.com" data-validate="email|required" ng-model="contact.email">
		<div class="validation-message">
			Is required			|
			The format is invalid		</div>
	</div>
	<div class="input-group input-group--inline">
		<label for="name">Register id</label>
		<input type="text" name="registerid" ng-model="contact.registerid">
	</div>
	<div class="input-group input-group--inline" ng-hide="platform">
		<label for="name">Platform</label>
		<div class="select">
			<select name="platform" ng-model="contact.platform" style="opacity: 0; -webkit-appearance: menulist-button; width: 391px; position: absolute; height: 11px; font-size: 11.1999998092651px;" class="hasCustomSelect">
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
			</select><span class="customSelect" style="opacity: 1; display: inline-block;"><span class="customSelectInner" style="width: 436px; display: inline-block;">Android</span></span>	
		</div>
	</div>
	<div class="input-group input-group--inline">
		<label for="msg">Message</label>
		<textarea type="text" name="msg" rows="10" data-validate="required"></textarea>
		<div class="validation-message">
			Is required		</div>
	</div>
	<div class="input-group input-group--inline">
		<label for="captcha">Verification</label>
		<div class="captcha-field">
			<img class="captcha-image" src="http://www.truecaller.com/captcha/eyJpdiI6IlVZenEwUnc0SkRDV1Z5WWZHWjNLWG1rd2tmNVwvb0x5a2kwRXZHVjJia3RnPSIsInZhbHVlIjoiVEFtSzJLUzZFU2xCWlZpRUN2K3I0V0E2ejgyb3ptenI4SXVvRjRMaTB0MitoK2tWUFJ1WXlteEhHYko2R3BvRzc2TlVrSVVRUHR3RndXa2pKWTJuNWd4RzZiRHFPNnBxXC96K3dXVm5Jd0UzSEpld2VYUzRrZktaaW5vd3pFdzNSIiwibWFjIjoiZDE2MThhMjY4Y2UzNjU1NWEzNGU5ZThiMzUxZDVjZjY5ODQ4N2Q4NDU2NWVhNzU0NDNmMzIxZjZmZmE3ZTg0MyJ9">
			<input type="text" name="captcha" placeholder="Verification code" data-validate="required">
			<div class="validation-message">
				The code is invalid			</div>	
		</div>
	</div>
	<div class="input-group input-group--submit">
		<button type="submit" disabled="disabled">Send</button>	
	</div>
</form>			</div>

	</div>
</section>
	</main>



<%@ include file="footer.jsp"%>
