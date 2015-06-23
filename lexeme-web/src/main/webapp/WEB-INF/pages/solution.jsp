<%@ include file="header.jsp"%>
<script type="text/javascript">
	var _contextPath = "${pageContext.request.contextPath}";
</script>
<div id="page-content">
	<div class="container">
		<section id="content">

	<form class="form-search" ng-controller="autocompleteController">

				<input type="text" ng-model="sol.course"
					placeholder="	CourseID | Course Name | Subject | University  	"
					typeahead="c as c.courseid for c in list | filter:$viewValue | limitTo:10"
					typeahead-min-length='1'
					typeahead-on-select='onSelectPart($item, $model, $label)'
					typeahead-template-url="customTemplate.html" class="form-control"
					name="course">
			</form>
	</div>
	<!--Div close--->

	<div class="col-lg-12" align="center" style="padding-top: 30px;"
		ng-controller="autocompleteController">
		<input class="ui blue orange button" type="submit"
			value="Get Solution" name="SAVE"
			ng-disabled="form.userName.$dirty && form.userName.$invalid ||
  							form.email.$dirty && form.email.$invalid">
	</div>
	</form>

	</section>

</div>



<!-- /.page-content -->


<%@ include file="footer.jsp"%>