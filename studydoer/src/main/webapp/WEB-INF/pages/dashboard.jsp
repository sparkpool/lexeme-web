<%@ include file="header.jsp"%>

<!-- It will show all question which are present in pool-->
<!--DashBoard Implementation start-->
<nav></nav>
<main>

<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--large">
			<hr>
					<p class="align-center">
						<%@ include file="message.jsp"%>
					</p>
			<div class="row">
				<div class="col-md-2">
					No of Quesrion: <select ng-model="entryLimit" class="form-control">
						<option>5</option>
						<option>10</option>
						<option>20</option>
						<option>50</option>
						<option>100</option>
					</select>
				</div>

				<div class="col-md-3">
					Filter: <input type="text" ng-model="search" ng-change="filter()"
						placeholder="Filter" class="form-control" />
				</div>
			</div>
			<br />

			<div class="row">
				<div class="col-md-12">
					<div class="table-responsive" ng-controller="customersCrtl">
						<table class="table table-striped table-bordered ">
							<!--Table header Sorting-->
							<thead class="text-success">
								<th>Question ID&nbsp;<a ng-click="sort_by('QID');"></a></th>
								<th>Description&nbsp;<a ng-click="sort_by('Description');"></a></th>
								<th>StartAt&nbsp;<a ng-click="sort_by('StartAt');"></a></th>
								<th>EndAt&nbsp;<a ng-click="sort_by('EndAt');"></a></th>
								<th>Price Code&nbsp;<a ng-click="sort_by('Price');"></a></th>
								<th>Assignee&nbsp;<a ng-click="sort_by('Assignee');"></a></th>
							</thead>

							<!--Show the Number Question present in Database-->

							<tbody>

								<tr ng-repeat="x in list ">
									<td>{{ list.qid }}</td>
									<td><a href="#question?pid={{ x.qid }}">{{
											x.description }}</a></td>
									<td>{{ list.description }}</td>
									<td>{{ x.description }}</td>
									<td>{{ x.description }}</td>
									<td>{{ x.description }}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!--Question filetering-->
				<div class="col-md-11" ng-show="filteredItems > 0">
					<div pagination="" page="currentPage"
						on-select-page="setPage(page)" boundary-links="true"
						total-items="filteredItems" items-per-page="entryLimit"
						class="pagination-small" previous-text="&laquo;"
						next-text="&raquo;"></div>
				</div>
			</div>
		</div>
	</div>
</section>
</main>
<%@ include file="footer.jsp"%>