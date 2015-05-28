<%@ include file="header.jsp"%>
<script type="text/javascript">
	var _contextPath = "${pageContext.request.contextPath}";
</script>
<div id="page-content">
	<div class="container">
		<section id="content">

			<div class="profile">
				<div class="ui top attached tabular menu">
					<a class="active red item" data-tab="first">Custom Search</a> <a
						class="blue item" data-tab="second">Regular Search</a> <a
						class="blue item" data-tab="third">Homework</a> <a
						class="blue item" data-tab="fourth">Notes</a>

				</div>


				<div class="ui bottom  attached  active tab segment"
					data-tab="first">
					<div class="ui orange segment">

						<div class="right aligned column">
							<div class="col-lg-12 col-md-12 col-sm-12">

								<script type="text/ng-template" id="customTemplate.html">
					<a>
						<span bind-html-unsafe="match.label | typeaheadHighlight:query"></span>
						<i>| {{match.model.cpoursename}} | {{match.model.description}} | {{match.model.University}}  </i>
					</a>
				</script>

								<blockquote>
									<h1 align="center">Get Solution</h1>
								</blockquote>
								<form class="form-search" ng-controller="autocompleteController">

									<input type="text" ng-model="sol.course"
										placeholder="	CourseID | Course Name | Subject | University  	"
										typeahead="c as c.courseid for c in list | filter:$viewValue | limitTo:10"
										typeahead-min-length='1'
										typeahead-on-select='onSelectPart($item, $model, $label)'
										typeahead-template-url="customTemplate.html"
										class="form-control" name="course">
								</form>
							</div>
							<!--Div close--->

							<div class="col-lg-12" align="center" style="padding-top: 30px;"
								ng-controller="autocompleteController">
								<button class="btn btn-warning btn-lg" data-toggle="modal"
									ng-click="setDescription(sol);">Get Solution</button>
							</div>

						</div>
						<hr>


					</div>

				</div>

				<div class="ui bottom  attached tab segment" data-tab="second">

					<!-- Change password section -->
					<div class="ui segment">

						<div class="row">

							<div class="col-lg-8">

								<script type="text/ng-template" id="customTemplate.html">
					<a>
						<span bind-html-unsafe="match.label | typeaheadHighlight:query"></span>
						<i>| {{match.model.cpoursename}} | {{match.model.description}} | {{match.model.University}}  </i>
					</a>
				</script>

								<form class="form-search" ng-controller="autocompleteController">

									<input type="text" ng-model="sol.course"
										placeholder="	CourseID | Course Name | Subject | University  	"
										typeahead="c as c.courseid for c in list | filter:$viewValue | limitTo:10"
										typeahead-min-length='1'
										typeahead-on-select='onSelectPart($item, $model, $label)'
										typeahead-template-url="customTemplate.html"
										class="form-control" name="course">

								</form>

							</div>
							<!--Div close--->

							<div class="col-lg-2 col-lg-offset-9" align="center"
								style="padding-top: 30px;"
								ng-controller="autocompleteController">
								<button class="btn btn-warning btn-lg" data-toggle="modal"
									ng-click="setDescription(sol);">Get Solution</button>
							</div>

						</div>

					</div>



					<!-- Contact Information -->


				</div>



				<!-- Personal Information -->
				<div class="ui bottom attached  tab segment" data-tab="third">

					<!-- Change password section -->
					<div class="ui segment">

						<div class="row">

							<div class="col-lg-8">

								<script type="text/ng-template" id="customTemplate.html">
					<a>
						<span bind-html-unsafe="match.label | typeaheadHighlight:query"></span>
						<i>| {{match.model.cpoursename}} | {{match.model.description}} | {{match.model.University}}  </i>
					</a>
				</script>




								<form class="form-search" ng-controller="autocompleteController">

									<input type="text" ng-model="sol.course"
										placeholder="	CourseID | Course Name | Subject | University  	"
										typeahead="c as c.courseid for c in list | filter:$viewValue | limitTo:10"
										typeahead-min-length='1'
										typeahead-on-select='onSelectPart($item, $model, $label)'
										typeahead-template-url="customTemplate.html"
										class="form-control" name="course">

								</form>

							</div>
							<!--Div close--->

							<div class="col-lg-2 col-lg-offset-9" align="center"
								style="padding-top: 30px;"
								ng-controller="autocompleteController">
								<button class="btn btn-warning btn-lg" data-toggle="modal"
									ng-click="setDescription(sol);">Get Solution</button>
							</div>

						</div>

					</div>



					<!-- Contact Information -->


				</div>

			</div>
	</section>

	</div>


</div>

<!-- /.page-content -->


<%@ include file="footer.jsp"%>