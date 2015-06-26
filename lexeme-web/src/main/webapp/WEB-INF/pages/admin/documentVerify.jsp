<%@page import="com.lexeme.web.enums.EnumDocumentCategory"%>
<%@ include file="../header.jsp"%>

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

			<div class="row">
				<div class="col-md-4 col-md-offset-4" align="center">
					<%@ include file="../message.jsp"%>
				</div>
			</div>
			

			<!-- Personal Information -->

			<form name="form"
				action="${pageContext.request.contextPath}/admin/docs/verify/update"
				method="POST" class="ui form">

				<div class="row">
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-4 ">
								<label><strong>CourseID</strong></label> <input type="text"
									name="courseId" id="courseID" value="${documentPojo.courseID}" />
							</div>
						</div>
						<div class="row">

							<div class="col-md-4 ">
								<label><strong>Name</strong></label> <input type="text"
									name="name" id="name" value="${documentPojo.name}" />
							</div>

						</div>
						

						<div class="row">
							<div class="col-md-12 ">
								<label><strong>Search Keywords</strong></label>
								<textarea rows="3" cols="10" class="form-control"
									id="description" name="description" >${documentPojo.description}</textarea>
							</div>
						</div>

						<div class="row">

							<div class="col-md-4 ">
								<label>Document Type</label> 
								<select name="category" class="form-control">
								 <c:forEach items="<%=EnumDocumentCategory.values() %>" var="enumCategory">
								   <option value="${enumCategory.category}" selected="${documentPojo.category eq enumCategory.category 'selected' : ''}">${enumCategory.category}</option>
								 </c:forEach>
								</select>	
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
<script type="text/javascript">
	$(document).ready(function() {
		$('a.multivio-preview').enableMultivio({
			method : 'overlay',
			downloadButton : true,
			quickViewButton : true,
			previewAttr : 'href'
		});
	});
	// selector for the second example
	$('.multivio-preview-example-2 a').enableMultivio({
		className : 'dark-and-bold',
		method : 'overlay',
		previewWidth : 120,
		previewHeight : 120,
		downloadButton : false,
		quickViewButton : true,
		previewAttr : 'href',
		language : 'fr'
	});
	// selector for the third example
	$('.multivio-preview-example-3 a').enableMultivio({
		className : 'light-and-soft',
		method : 'newwindow',
		previewWidth : 120,
		previewHeight : 80,
		downloadButton : true,
		quickViewButton : true,
		previewAttr : 'href',
		language : 'en'
	});
</script>

<%@ include file="../footer.jsp"%>
