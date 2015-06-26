<%@page import="com.lexeme.web.enums.EnumDocumentCategory"%>
<%@ include file="../header.jsp"%>

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

			<form name="form" id="formData"
				action="${pageContext.request.contextPath}/admin/docs/verifyUpdate"
				method="POST" class="ui form" ng-controller="adminCtrl"  ng-app="myApp">

				
				<input type="hidden" name="documentId" id="documentId" ng-model="documentId"  ng-init="documentId=${documentPojo.documentId}"value="${documentPojo.documentId}" />
				<div class="row">
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-4 ">
								<label>
								<strong>CourseID</strong></label> <input type="text"
									name="courseID" id="courseID"  value="${documentPojo.courseID}" />
							</div>
						</div>
						<div class="row">

							<div class="col-md-4 ">
								<label>
									<strong>Display Name</strong>
								</label> 
								<input type="text"
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
								   <option value="${enumCategory.category}" ${documentPojo.category eq enumCategory.category ? 'selected' : ''} >${enumCategory.category}</option>
								 </c:forEach>
								</select>	
							</div>
						</div>

				

					</div>
					<div class="col-md-6">
						<div class="row">
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							
							<div class="col-md-6 col-md-offset-4">
								<a class="btn btn-info btn-sm" href="#" ng-click="downloadDocument(${documentPojo.courseID});" >Download Document </a>
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
<%@ include file="../footer.jsp"%>
