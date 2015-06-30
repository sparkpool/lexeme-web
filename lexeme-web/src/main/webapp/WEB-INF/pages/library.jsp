<%@ include file="header.jsp"%>
<script type="text/javascript">
	var _contextPath = "${pageContext.request.contextPath}";
</script>
<div class="search-content" id="searchContent">
	<div class="container">
		<!-- Heading Text -->
		<div class="row">
			
						<div class="feedback-form-center" align="center">
				<div class="feedback-support-text">
					<i class='fa fa-download fa-4x' style="color: orange;"></i>
					<h1>Start Searching Documents</h1>
			
				</div>

			</div>
		</div>


		<div class="row" ng-controller="documentCtrl">
			<div class="col-lg-8 col-md-offset-2">
				<div class="input-group">
					<!-- Search Filter by category, course ID, Name, Full text -->
					<!-- /btn-group -->
					<!-- Input box -->
                    <form action="${pageContext.request.contextPath}/search" method="GET" >
					<input type="text" name="q" class="form-control" aria-label=" " id="searchString"  ng-model="searchString"
						value="Search Here" onkeypress="uiRenderingOnSearchBoxClicked();"  />
					<span class="input-group-btn">
						<input type="submit" id="searchBox" name="searchBox"  class="btn btn-info" on>Search</button>
					</span>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<hr />
<div class="search-result">

	<div class="container">

		<!-- 
	
		It will be shown when search results are loading
	
			<div class="row">
				<div class="col-md-12">
				<div class="searchingProgess"><i class="fa fa-spinner fa-pulse fa-5x" ></i></div>
				</div>
			</div>
			
	 -->
	 <c:choose>
	 <c:when test="${!empty documents}" >
	 <c:forEach items="${documents}" var="document">
	  <div class="document">
			<!-- Document heading -->
			<div class="document-header">${document.key.name} | ${document.key.category}</div>
			<!-- Document Body -->
			<div class="document-body">${document.key.description}</div>

			<!-- Document footer -->
			<div class="document-footer">
				<div class="row">
					<div class="col-md-12">
						<div class="col-md-4 col-xs-4">
							<span><a href="#"><i class="fa fa-eye"></i></a></span>
						</div>
						<div class="col-md-4 col-xs-4">
							<span><a href="#"><i class="fa fa-thumbs-o-up"></i></a></span>
						</div>
						<div class="col-xs-4">
							<span><a href="#" data-id="${document.key.id}"><i class="fa fa-download"></i></a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	 </c:forEach>
	</c:when>
  <c:otherwise>
		 No Result Found
 </c:otherwise>
</c:choose>
		</div>
</div>

<!-- /.page-content -->



<%@ include file="footer.jsp"%>