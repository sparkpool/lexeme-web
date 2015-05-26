<%@ include file="header.jsp"%>
<div id="page-content">
	<div class="container">
	<section id="content">
		<div class="ch-wrapper" id="ch-content-wrapper">
			<div id="feedback-container" class="container">
				<div class="feedback-form-left">
					<div class="feedback-support-text">
						<h4>Send us Your feedback.</h4>
					</div>
				</div>
				<form id="feedback-form" method="post" action="feedback_send.php">
					<input type="hidden" id="flsver" name="flsver"> <input
						type="hidden" id="pdfver" name="pdfver"> <input
						type="hidden" id="http_ref" name="http_ref" value="">
					<div class="feedback-form-middle">
						<fieldset>
							<label>Email:</label> <input name="email" type="text"
								placeholder="Type your Email address" />
						</fieldset>
						<fieldset>
							<label>Subject:</label> <input name="subject" type="text"
								placeholder="Enter subject of your feedback" />
						</fieldset>
						<fieldset class="has-selectbox">
							<label>Type:</label> <select name="type">
								<option value="Suggestion">Suggestion</option>
								<option value="Error">Error</option>
							</select>

						</fieldset>
					</div>
					<div class="feedback-form-right">
						<fieldset>
							<label>Comment:</label>
							<textarea name="comment" rows=5 cols=55
								placeholder="Enter your comments or ideas here"></textarea>
						</fieldset>
					</div>
					<div class="coa-wrapper">
						<input type="submit" class="orange-btn m" value="Submit Feedback" />
					</div>
				</form>
			</div>
		</div>
		
		</section>
	</div>
</div>
<%@ include file="footer.jsp"%>