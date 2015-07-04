<%@ include file="header.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/document.js"></script>


<input type="hidden" name="divHide" id="divHide" value="${divHide}" />
<div class="aboutus-content" id="searchContent">
	<div class="container">
		<div class="lbraryheading">Looking for best solution</div>
		<div class="subheading">we have one</div>




	</div>
</div>

<div class="addsearchbanner" id="banner">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-offset-2">
				<!-- Search Filter by category, course ID, Name, Full text -->
				<!-- /btn-group -->
				<!-- Input box -->
				<form action="${pageContext.request.contextPath}/search"
					method="GET">
					<div class="input-group">

						<input type="text" name="q" class="form-control" aria-label=" "
							id="searchString" ng-model="searchString"
							placeholder="Search documents( by Couser name, Subject Name, University)"
							value="Search Here" /> <span class="input-group-btn">
							<button type="submit" id="searchBox" name="searchBox"
								class="btn btn-info" ng-click="setUiRender();">Search</button>
						</span>
					</div>
				</form>

			</div>
		</div>
	</div>

</div>

<div class="search-result">

	<div class="container">
		<div class="row">
			<c:choose>
				<c:when test="${!empty documents}">
					<c:forEach items="${documents}" var="document">
						<div class="document">
							<!-- Document heading -->
							<div class="document-header">
								<h1>${document.key.name}|${document.key.category}</h1>
							</div>
							<!-- Document Body -->
							<div class="document-body">
								<p>${document.key.description}</p>
							</div>


							<!-- Document Rating -->

							<div class="document-rating" id="${document.key.id}">

								<fieldset class="rating" id="${document.key.id}">
									<input type="radio" id='star5${document.key.id}'
										name="rating${document.key.id}" value="1" /><label
										for="star5${document.key.id}" title="Awesome - 5 stars"></label>
									<input type="radio" id='star4${document.key.id}'
										name="rating${document.key.id}" value="4" /><label
										for="star4${document.key.id}" title="Pretty good - 4 stars"></label>
									<input type="radio" id='star3${document.key.id}'
										name="rating${document.key.id}" value="3" /><label
										for="star3${document.key.id}" title="Meh - 3 stars"></label> <input
										type="radio" id='star2${document.key.id}'
										name="rating${document.key.id}" value="2" /><label
										for="star2${document.key.id}" title="Kinda bad - 2 stars"></label>
									<input type="radio" id='star1${document.key.id}'
										name="rating${document.key.id}" value="1" /><label
										for="star1${document.key.id}" title="Sucks big time - 1 star"></label>

								</fieldset>
							</div>
							<!-- Document footer -->
							<div class="document-footer" ng-controller="documentCtrl"
								ng-app="myApp">
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-4 col-xs-4">
											<span><a href="#" ng-init="view=${document.key.id}"
												ng-model="view" ng-click="setLike();" data-toggle="modal"
												data-target="#show"><i class="fa fa-eye"></i></a></span>
										</div>
										<div class="col-md-4 col-xs-4">
											<span><a
												href="${pageContext.request.contextPath}/doc/analysis/like?docId=${document.key.id}"
												data-id="${document.key.id}"><i
													class="fa fa-thumbs-o-up"></i></a></span>
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


<!-- Tool tip for like -->



<!-- Tool tip for view -->

<!-- Tool tip for download -->

<!-- Data modal -->
<div class='modal fade' id="show" tabindex='-1' role='dialog'
	aria-labelledby='myModalLabel' ng-controller="documentCtrl" ng-app="myApp" ng-hide="flagShow">
	<div class='modal-dialog' role='document'>
		<div class='modal-content'>
			<div class='modal-header'>
				<button type='button' class='close' data-dismiss='modal'
					aria-label='Close'>
					<span aria-hidden='true'>&times;</span>
				</button>
				<h4 class='modal-title' id='exampleModalLabel'>You are not Logged in.<a href="${pageContext.request.contextPath}/user/login">Login here</a></h4>
			</div>
			</div>
			
		</div>
</div>


	<!-- /.page-content -->



	<%@ include file="footer.jsp"%>