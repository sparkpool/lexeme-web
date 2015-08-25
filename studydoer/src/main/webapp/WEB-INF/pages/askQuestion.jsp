
<%@ include file="header.jsp"%>
<!-- Form
		1. Description
		2. Deadline
		3. Price 
		4. Subject
		5. Additional Information
	 -->


<nav></nav>
<main>


<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--large">
			<h1 class="title--small">Get Help | Q/A</h1>
			<hr>
			<p class="align-center">
				<%@ include file="message.jsp"%>
			</p>

			<div class="container container--large" id="contact-form">

				<form id="supportForm" 
				       data-ajax=""
					action="${pageContext.request.contextPath}/question/askQuestion"
					method="POST" 
					class="ng-pristine ng-valid" 
					>

					<div class="input-group input-group--inline">

						<select name="subject" class="ui selection dropdown" multiple="" id="multi-select">
							<option value="">choose any subject?</option>
							<option value="1">Accounting</option>
							<option value="2">Computer Science</option>
							<option value="3">Writing Help</option>
							<option value="10">Business</option>
							<option value="12">Math</option>
							<option value="19">Physics</option>
						</select>
						
					</div>


					<!-- QUestion Description -->
					<textarea placeholder="Ask Question | Request Any Help" rows="15"
						cols="40" name="description"></textarea>

					<div class="input-group input-group--inline">

						<input type="date" name="deadline" placeholder="Start Date">
						<input type="date" name="deadline" placeholder="Start Date">

						<input type="text" name="price" placeholder="set price"> <input
							type="text" name="pages" placeholder="Additional info">

					</div>


					<p class="align-center">
						<button type="submit" class="button button--orange button--large">Get
							Solution</button>
					</p>

				</form>

			</div>
		</div>
	</div>
</section>
</main>






<!---
=================================================================================================================================
								Script Area

==================================================================================================================================-->
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<script>
    $('.input-group.date').datepicker({
    format: "yyyy/mm/dd",
    startDate: "2012-01-01",
    endDate: "2019-01-01",
    todayBtn: "linked",
    autoclose: true,
    todayHighlight: true
    });
    </script>


<div class="feedback"></div>
</main>
<%@ include file="footer.jsp"%>
