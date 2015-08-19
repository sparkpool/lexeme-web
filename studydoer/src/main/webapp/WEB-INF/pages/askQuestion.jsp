
<%@ include file="header.jsp"%>


<!-- Form
		1. Description
		2. Deadline
		3. Price 
		4. Subject
		5. Additional Information
	 -->
<div class="pagecontent">
	 
<div class="container">
<section id="content">
		
	<!-- Q/A Module -->
	<div id="question">
		
		
	<div class="col-lg-12 col-md-12 col-sm-12">
		<h1>Get Help | Q/A</h1>
		<form class="form-group" action="comments.php" method="post">
			<div class="col-lg-12">
				<textarea class="form-control"
					placeholder="Ask Question | Request Any Help" rows="6"
					name="description">
			</textarea>
			</div>

			<div class="span10"
				style="padding-top: 20px; border-color: #006666; border: thin;">

				<div class="col-lg-2">
					<select id="qa_subject_id" class="form-control" name="subject">
						<option>choose any subject?</option>
						<option value="5">Accounting</option>
						<option value="Computer Science">Computer Science</option>
						<option value="Computer Science">Writing Help</option>
						<option value="10">Business</option>
						<option value="12">Math</option>
						<option value="19">Physics</option>
					</select>
				</div>

				<!--- Date And Time-->
				<div class="col-lg-3">
					<div class="input-group date">
						<input type="text" class="form-control" name="deadline"> <span
							class="input-group-addon"><i
							class="glyphicon glyphicon-th"></i></span>

					</div>
				</div>

				<div class="col-lg-4">
					<span class="glyphicon glyphicon-file"> Attach file </span> <input
						name="Upload Files:" id="file" type="file" name="Attach Files:"
						class="form-group" id="file">
				</div>

				<div class="col-lg-3">
					</span><input type="text"
						class="form-control" name="price" width="20%" placeholder="set price">

				</div>
				<div class="col-lg-5" align="right">
					
					<div class="btn-group" align="right">
						<button class="btn btn-info btn-sm" data-toggle="modal"
							data-target="#makePayment" onClick="addQuestion()">Get
							Solution</button>
					</div>
				</div>
				<!--span2-->
			</div>
		</form>

	</div>
	</div>
</section>
</div>
</div>







<!---
=================================================================================================================================
								Script Area

==================================================================================================================================-->
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
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

<%@ include file="footer.jsp"%>
