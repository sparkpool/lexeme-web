<%@ include file="header.jsp" %>
<section id="content">
<br/>
<br/>
<br/>
<br/>
	<script type="text/javascript">
    var _contextPath = "${pageContext.request.contextPath}";
</script>
<br/>
	<div class=" container">
		<div class="ui grid ">
		<div class="page-content">
	<div class="row">

		<div class="container">

			<div class="col-lg-12 col-md-12 col-sm-12">

				<script type="text/ng-template" id="customTemplate.html">
					<a>
						<span bind-html-unsafe="match.label | typeaheadHighlight:query"></span>
						<i>| {{match.model.cpoursename}} | {{match.model.description}} | {{match.model.University}}  </i>
					</a>
				</script>

				<blockquote><h1 align="center">Get Solution</h1></blockquote>

				<form class="form-search" ng-controller="autocompleteController">
					<input type="text" ng-model="sol.course" placeholder="	CourseID | Course Name | Subject | University  	" 
								typeahead="c as c.courseid for c in list | filter:$viewValue | limitTo:10" 
								typeahead-min-length='1' typeahead-on-select='onSelectPart($item, $model, $label)' typeahead-template-url=			
								"customTemplate.html" class="form-control" name="course">
				<i class="icon-search nav-search-icon"></i>

				</form>
			</div>   <!--Div close--->
			
	<div class="col-lg-12" align="center" style="padding-top:30px;"  ng-controller="autocompleteController">
		<button class="btn btn-warning btn-lg"  data-toggle="modal" ng-click="setDescription(sol);">Get Solution</button>
	</div> 
	
</div>

</div>
<!-- /.page-content -->
		</div>
	</div>
	</div>
</section>

<%@ include file="footer.jsp" %>