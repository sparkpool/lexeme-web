<%@page import="com.lexeme.web.enums.EnumDocumentCategory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Add header -->
<style>
.thumbnail {
	height: 100px;
	margin: 10px;
}

.btn-file {
	position: relative;
	overflow: hidden;
}

.btn-file input[type="file"] {
	position: absolute;
	top: 0;
	right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 100px;
	text-align: right;
	filter: alpha(opacity = 0);
	opacity: 0;
	outline: none;
	background: white;
	cursor: inherit;
	display: block;
}

.file-preview {
	border-radius: 5px;
	border: 1px solid #ddd;
	padding: 5px;
	width: 50%;
	margin-bottom: 5px;
}

.file-preview-frame {
	display: table;
	margin: 8px;
	height: 50px;
	border: 1px solid #ddd;
	box-shadow: 1px 1px 5px 0 #a2958a;
	padding: 6px;
	float: right;
	text-align: center;
	vertical-align: middle;
}

.file-thumbnail-footer .file-caption-name {
	padding-top: 4px;
	font-size: 11px;
	color: #777;
}

.upDiv{
	width:50%;
	margin-left: 10px;
	margin-right:5px;
	height: 30px;
	
}
#page-content1 {
background-color:#fff;
}
</style>


<%@ include file="header.jsp"%>

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
					
					<i class="icon-large icon-cloud"></i>
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
							enctype="multipart/form-data" role="form">

							<div class="row">
								<span class="btn btn-info btn-file"><span class="glyphicon glyphicon-upload"></span>upload from computer
									<input type="file" id="files" name="file[]" multiple="multiple">
								</span>
							</div>
							
							<div class="row">
							</div>

							<div class="row">
								<div class="result" />
							</div>
							<div class="row">
								<div class="col-md-12">
									<input class="ui orange save button" type="submit" name="SAVE"
										placeholder="Edit">
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
