<%@ include file="header.jsp"%>

<style>
.dark-and-bold {
	background-color: #0F3066;
}

.dark-and-bold a.mvo-caption {
	font-family: Georgia, Times New Roman, serif;
	color: #F7F7F0;
}
</style>
<div class="page-content">
	<div class="container">
		<section id="content">
			<div class="col-md-12">
				<blockquote>
					<h1 style="text-align: center;">Document Preview</h1>
				</blockquote>
			</div>


			<!-- Personal Information -->

			<form name="form"
				action="${pageContext.request.contextPath}/admin/docs/unverified" method="GET"
				class="ui form" enctype="multipart/form-data">

				<div class="row">


					<div class="col-md-6">
						<div class="row">

							<div class="col-md-4 ">
								<label><strong>CourseID</strong></label> <input type="text"
									name="courseId" id="courseID" ng-model="formData.courseID" />
							</div>

						</div>

						<div class="row">
							<div class="col-md-12 ">
								<label><strong>Search Keywords</strong></label>
								<textarea rows="3" cols="10" class="form-control"
									id="description" name="description"
									ng-model="formData.description"></textarea>
							</div>
						</div>

						<div class="row">

							<div class="col-md-4 ">
								<label>Document Type</label> <select name="category"
									class="form-control"><option value="CS">CS</option>
									<option value="Homework">Homework</option>
									<option value="lab">Lab</option>
									<option value="Notes">Notes</option></select>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4">
								<label><strong>Approved By</strong></label> <input type="text"
									name="courseId" id="courseID" ng-model="formData.approve" />
							</div>

						</div>

					</div>
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-6">
								<span class="multivio-preview-example-2"> <a
									title="Olympic Charter 2010 (2.6 MB)"
									href="http://doc.rero.ch/lm.php?url=1000,20,38,20111121000005-ZZ/2010-Olympic_Charter.pdf">
										Olympic Charter 2010 </a>
								</span>
							</div>
						</div>
					</div>

				</div>
				<div class="row">

					<div class="col-md-5 col-md-offset-5">
						<input class="ui orange save button" type="submit" name="SAVE"
							placeholder="Edit" value="Save">
					</div>
				</div>
			</form>


		</section>

	</div>




</div>


<%@ include file="footer.jsp"%>
