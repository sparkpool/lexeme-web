<%@ include file="../header.jsp"%>

<div class="page-content">
	<div class="container">

		<section id="content">
			<div class="col-md-12">
				<blockquote>
					<h1 style="text-align: center;">Document Verification Panel</h1>
				</blockquote>
			</div>


			<!-- Personal Information -->


			<table class="table table-hover">
				<thead>
					<tr>
						<th>Document No.</th>
						<th>Document Title</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>John</td>
						<td>Doe</td>
						<td>
							<div class="col-md-3 ">
								<form name="form" method="POST" class="ui form"
									ng-submit="documentverified();" role="form">
									<button type="button" class="btn btn-danger">Delete</button>
								</form>
							</div>

							<div class="col-md-3">
								<form name="form" method="POST" class="ui form"
									ng-submit="documentverified();" role="form">
									<button type="button" class="btn btn-success">Verified</button>
								</form>
							</div>

						</td>
					</tr>
				</tbody>
			</table>


		</section>

	</div>




</div>


<%@ include file="../footer.jsp"%>
