<%@ include file="header.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/document.js"></script>


<input type="hidden" name="divHide" id="divHide" value="${divHide}" />
<div class="search-content" id="searchContent">
	<div class="container">
		<!-- Heading Text -->

		<!-- Heading -->
		<div class="row">
			<div class="col-md-12" align="center">
				<div class="feedback-form-center">
					<div class="feedback-support-text">
						<h1>Looking for best solution,we have one</h1>
					</div>
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-lg-8 col-md-offset-2">
				<!-- Search Filter by category, course ID, Name, Full text -->
				<!-- /btn-group -->
				<!-- Input box -->
				<form action="${pageContext.request.contextPath}/search"
					method="GET">
					<div class="input-group">

						<input type="text" name="q" class="form-control" aria-label=" "
							id="searchString" ng-model="searchString" value="Search Here" />
						<span class="input-group-btn">
							<button type="submit" id="searchBox" name="searchBox"
								class="btn btn-info" ng-click="setUiRender();">Search</button>
						</span>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>

<div class="banner">
	<div class="container">
		<div class="row">
			<div class="col-xs-4" align="left">Top Results Found</div>
			<div class="visible-xs">
				<div class="col-xs-4" align="left"></div>
			</div>
		</div>
		<div class="col-sm-6"></div>
	</div>
</div>

<div class="search-result">

	<div class="container">

		<!-- 
		
	
		It will be shown when search results are loading
	
			<div class="row">
				<div class="col-md-12">
				<div class="searchingProgess"><i class="fa fa-spinner fa-pulse fa-5x"></i></div>
				</div>
			</div>
			
	 -->

		<div class="row">
			<c:choose>
				<c:when test="${!empty documents}">
					<c:forEach items="${documents}" var="document">
						<div class="document">
							<!-- Document heading -->
							<div class="document-header">
								<h1>${document.key.name}| ${document.key.category}</h1>
							</div>
							<!-- Document Body -->
							<div class="document-body">
								<p>${document.key.description}</p>
							</div>

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
											<span><a
												href="${pageContext.request.contextPath}/doc/download?docId=${document.key.id}"
												data-id="${document.key.id}"><i class="fa fa-download"></i></a></span>
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
</div>

</div>

<!-- /.page-content -->



<%@ include file="footer.jsp"%>