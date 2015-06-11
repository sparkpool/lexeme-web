<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Add header -->
<style>
#thumbnail img {
	width: 100px;
	height: 100px;
	margin: 5px;
}

canvas {
	border: 1px solid red;
}
</style>

<style>
.thumb {
	height: 75px;
	border: 1px solid #000;
	margin: 10px 5px 0 0;
}
</style>

<%@ include file="header.jsp"%>

<!-- Upload solution form -->

<div id="page-content">
	<div class="container-fluid">
		<section id="content">
			<div class="feedback-form-center" align="center">
				<div class="feedback-support-text">
					<h1>Start Uploading Documents</h1>
					<hr>

					<p>If you’re not sure whether or not you’re the copyright owner
						for previous exam solutions, homework solutions, and course- or
						exam-specific study guides, please see our guidelines. Have
						questions or trouble uploading? See our FAQ!</p>
				</div>
				
				<div class="form-group" align="center">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<input type="file" name="upload from Computer" id="files"
									name="" multiple />
							</div>
							
							
							<div class="row">
								<ul>
									<div id="list"></div>
								</ul>
							</div>
							<br>

							<div class="row">
								<button type="button" class="btn btn-info btn-lg"
									data-toggle="modal" data-target="#exampleModal">
									Upload Documents</button>
							</div>

						</div>
					</div>

					<div class="row">
						<hr>
						<div class="col-lg-12">

							<p>By submitting Documents you are agreeing that: (1) you own
								the copyrights covering the files to be uploaded or have express
								permission from the copyright owners to upload those files; (2)
								your uploading of these files will not violate any law,
								regulation, or ethics code; and (3) uploading these files will
								not violate Course Hero's Terms of Use.Documents must add value
								to the Course Hero community. They must be tagged to their
								relevant course or subject, in any language, as long as they
								adhere to all the following rules: They cannot be blank,
								duplicates, or have random filler content. They should not
								contain any obscene or offensive material. Users should not
								upload copyrighted materials for which they do not hold the
								rights or permission of the owner. It is at the sole discretion
								of Course Hero to determine if the content meets the standards
								mentioned above.Please only upload content for which you are the
								copyright owner or if you have the copyright owner’s permission.
								Guidelines for uploading previous exam solutions, homework
								solutions, or course and exam specific study guides: Course Hero
								is in strict compliance with the Digital Millennium Copyright
								Act (DMCA) and we take instances of plagiarism and copyright
								infringement seriously. Students who want to contribute previous
								exams or homework solutions should only include the questions on
								the documents if the student is the copyright owner of those
								questions. Do not post your professors’ slides or materials with
								your professors’ questions and your answers. Students who are
								not the copyright owner of the questions can make sure they are
								in compliance by 1) rewriting the questions in their own words,
								2) only referencing the question number and including their own
								answers, or 3) redacting the questions. It takes up to 3
								business days for your documents to be approved.</p>
						</div>
					</div>
				</div>


			</div>


		</section>
		<!-- Button trigger modal -->


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="exampleModalLabel">Document Info</h4>
					</div>
					<div class="modal-body">
						<form>

							<div class="form-group"></div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-4">
										<label for="recipient-name" class="control-label">Document
											Preview</label> <img
											src="${pageContext.request.contextPath}/resources/images/nophoto_pic.gif"
											class="img-rounded">
									</div>

									<div class="col-md-8 col-offset-2">

										<label for="recipient-name" class="control-label">Title
											of Document:</label> <input type="text" class="form-control"
											id="recipient-name">
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-8 col-offset-7">

										<label>Category</label> <select>
											<option>Homework</option>
											<option>Labs</option>
											<option>Noto</option>
											<option>Notes</option>
										</select>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="message-text" class="control-label">Document
									description:</label>
								<textarea class="form-control" id="message-text" size="400"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-info" data-dismiss="modal">Upload</button>
					</div>
				</div>
			</div>
		</div>

	</div>

</div>


<script>
	function handleFileSelect(evt) {
		var files = evt.target.files; // FileList object
		// Loop through the FileList and render image files as thumbnails.
		for (var i = 0, f; f = files[i]; i++) {
			var reader = new FileReader();
			
			

			// Closure to capture the file information.
			reader.onload = (function(theFile) {
				return function(e) {
					// Render thumbnail.
					var span = document.createElement('span');
					span.innerHTML = [
							'<div class="col-md-8 col-md-offset-2" style="outline: 1px solid aqua;background-color:#ECF6FB;">' 
								,'<form name="form" method="POST" class="ui form"'
								 ,'ng-submit="uploadDocument();">'
								,'<div class="col-md-4"><img class="thumb" src="',
									e.target.result,
									'" title="',
									escape(theFile.name),
									'"/>',
									'</p></div>'
									,'<div class="col-md-3 col-md-offet-2">'
							,'<label>Doument Type</label> <select name="role"'
										,'class="form-control" ><option>CS</option>'
									    ,'<option>Homework</option>',
									    '<option>Lab</option>',
									    '<option>Notes</option>','</select></div>'
									    ,'<div class="col-md-3 col-md-offet-2"><label>Upload</label><input class="ui orange save button" type="submit" name="SAVE" placeholder="Edit" value="upload" data-toggle="modal" data-target="#exampleModal"></div>'
									    ,'</form></div></div>' ].join('');
					document.getElementById('list').insertBefore(span, null);

					document.getElementById('list').insertBefore(span, null);

				};
			})(f);

			// Read in the image file as a data URL.
			reader.readAsDataURL(f);
		}
	}

	document.getElementById('files').addEventListener('change',
			handleFileSelect, false);
</script>




<!-- Add footer -->
<%@ include file="footer.jsp"%>
