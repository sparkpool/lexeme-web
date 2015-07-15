	<%@page import="com.sd.web.enums.EnumDocumentCategory"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	
	
	<%@ include file="header.jsp"%>
	<link href="${pageContext.request.contextPath}/resources/css/upload.css"
		rel="stylesheet">
	<!-- Upload solution form -->
	
	<div id="page-content1">
		<div class="container">
			<section id="content">

			<div id="spinner" class="spinner" style="display: none;">
				<i class="fa fa-spinner fa-spin fa-5x"></i>

			</div>

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
	
					<div class="row">
							<form name="form" id="uploadData" class="ui form"
								enctype="multipart/form-data">
					<div class="form-group" align="center">
			
								<div class="row ">
									<span class="btn btn-info btn-file">
									upload from computer
										<input type="file" id="files" name="file[]" multiple="multiple">
									</span>
								</div>
							
								<div class="row" style="margin-top: 5px;">
									<div class="result" >
									</div>
								</div>
								
								<div class="row" style="margin-top: 5px;"  >
									<div class="uploadResult">
										
									</div>
									</div>

				</div>			</form>
					
						</div>
				
			</section>
			<!-- Button trigger modal -->
		</div>
	</div>
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/uploadfile.js"></script>
	
	
	
	<!-- Add footer -->
	<%@ include file="footer.jsp"%>
