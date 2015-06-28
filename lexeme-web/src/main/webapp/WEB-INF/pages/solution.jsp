<%@ include file="header.jsp"%>
<script type="text/javascript">
	var _contextPath = "${pageContext.request.contextPath}";
</script>
<div class="search-content" id="searchContent">
	<div class="container">
		<!-- Heading Text -->
		<div class="row">
			<div class="col-md-6 col-md-offset-3 col-xs-12 ">
					<h1>Download the document</h1>
			</div>
		</div>


			<div class="row" >
				<div class="col-lg-8 col-md-offset-2">
					<div class="input-group">
						<!-- Search Filter by category, course ID, Name, Full text -->
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								Filter Type <span class="caret"></span>
							</button>

							<ul class="dropdown-menu dropdown-menu-center">
								<li><a href="#">Course ID</a></li>
								<li><a href="#">University</a></li>
								<li><a href="#">Course Name</a></li>

								<li><a href="#">Full Text</a></li>
							</ul>
						</div>
						<!-- /btn-group -->
						<!-- Input box -->

						<input type="text" class="form-control" aria-label="..."
							value="Course ID|University|Subject"   onkeypress="uiRenderingOnSearchBoxClicked();" /> <span
							class="input-group-btn">
							<button type="button" id="searchBox" onclick="uiRenderingOnSearchBoxClicked();" class="btn btn-info">Search</button>
						</span>
					</div>
				</div>
			</div>
		</div>
</div>
		<hr />
		<div class="search-result">
			<div class="container">
		
			<div class="document">
				<!-- Document heading -->
				<div class="document-header">Document Title</div>

				<!-- Document Body -->
				<div class="document-body">Document Body</div>

				<!-- Document footer -->
				<div class="document-footer">
					<div class="row">
						<div class="col-md-12">
						<div class="col-md-6 col-xs-6">
							<span><a href="#"><i class="fa fa-eye"></i></a></span>
						</div>
						<div class="col-md-6 col-xs-6">
							<span><a href="#"><i class="fa fa-thumbs-o-up"></i></a></span>
						</div>
					</div>
					</div>

				</div>

			</div>
		</div>
		</div>
		
<!-- /.page-content -->



<%@ include file="footer.jsp"%>