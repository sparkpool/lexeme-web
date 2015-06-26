<%@page import="com.lexeme.web.enums.EnumDocumentCategory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="header.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/upload.css"
	rel="stylesheet">
<!-- Upload solution form -->

<div id="page-content1">
	<div class="container-fluid">
		<section id="content">
			<div class="right aligned column">
				<%@ include file="message.jsp"%>
			</div>
			<div class="responseMsg" style="font-size: 15px; text-align: center;">
			</div>
			<div class="feedback-form-center" align="center">
				<div class="feedback-support-text">
					<i class='fa fa-cloud-upload fa-4x' style="color: orange;"></i>
					<h1>Start Uploading Documents</h1>
					<hr>
					<p>If you’re not sure whether or not you’re the copyright owner
						for previous exam solutions, homework solutions, and course- or
						exam-specific study guides, please see our guidelines. Have
						questions or trouble uploading? See our FAQ!</p>
				</div>

			</div>

			<div class="form-group" align="center">
				<div class="row">
					<div class="col-lg-12">
						<form name="form" id="uploadData" class="ui form"
							enctype="multipart/form-data">
							<div class="row">
								<span class="btn btn-info btn-file"><span
									class="glyphicon glyphicon-upload"></span>upload from computer
									<input type="file" id="files" name="file[]" multiple="multiple">
								</span>
							</div>
							<br /> <br />
							<div class="row">
								<div class="result" />
							</div>

							<div class="row">
								<div class="col-md-12">
									<br /> 
									<input class="ui orange save button" type="submit"
										name="SAVE" placeholder="Edit">
								</div>
							</div>
							<br>
						</form>
						<div class="row"></div>

					</div>
				</div>


			</div>
		</section>
		<!-- Button trigger modal -->
	</div>
</div>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/uploadfile.js"></script>



<!-- Add footer -->
<%@ include file="footer.jsp"%>
