<%@page import="com.sd.web.enums.EnumDocumentCategory"%>
<%@ include file="../header.jsp"%>
<nav></nav>
<main>
<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--large">
			<h1 style="text-align: center;"></h1>

			<h1 class="title--small">Document Verification Panel</h1>
			<hr>

			<div class="row">
				<div class="col-md-4 col-md-offset-4" align="center">
					<%@ include file="../message.jsp"%>
				</div>
			</div>


			<!-- Personal Information -->

			<form name="form" id="formData"
				action="${pageContext.request.contextPath}/admin/docs/verifyUpdate"
				method="POST" class="ui form" ng-controller="adminCtrl"
				ng-app="myApp">


				<input type="hidden" name="documentId" id="documentId"
					ng-model="documentId" value="${documentPojo.documentId}" />
				<div class="row">
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-4 ">
								<label> <strong>CourseID</strong></label> <input type="text"
									name="courseID" id="courseID" value="${documentPojo.courseID}" />
							</div>
						</div>
						<div class="row">

							<div class="col-md-4 ">
								<label> <strong>Display Name</strong>
								</label> <input type="text" name="name" id="name"
									value="${documentPojo.name}" />
							</div>

						</div>


						<div class="row">
							<div class="col-md-12 ">
								<label><strong>Search Keywords</strong></label>
								<textarea rows="3" cols="10" class="form-control"
									id="description" name="description">${documentPojo.description}</textarea>
							</div>
						</div>

						<div class="row">

							<div class="col-md-4 ">
								<label>Document Type</label> <select name="category"
									class="form-control">
									<c:forEach items="<%=EnumDocumentCategory.values()%>"
										var="enumCategory">
										<option value="${enumCategory.category}"
											${documentPojo.category eq enumCategory.category ? 'selected' : ''}>${enumCategory.category}</option>
									</c:forEach>
								</select>
							</div>
						</div>



					</div>
					<div class="col-md-6">
						<div class="row">
							<br /> <br /> <br /> <br /> <br />

							<div class="col-md-6 col-md-offset-4">
								<a class="btn btn-info btn-sm"
									href="${pageContext.request.contextPath}/doc/download?docId=${documentPojo.documentId}"
									ng-click="downloadDocument(${documentPojo.courseID});">Download
									Document </a>
							</div>
						</div>
					</div>

				</div>
				<p class="align-center">
					<button type="submit" class="button button--green button--large"
						value="Save">Save</button>


				</p>
			</form>
		</div>
	</div>
</section>
</main>
<%@ include file="../footer.jsp"%>
