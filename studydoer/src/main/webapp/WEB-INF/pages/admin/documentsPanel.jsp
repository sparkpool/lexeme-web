<%@ include file="../header.jsp"%>
<nav></nav>
<main>

<section class="page page--contact">
	<div class="container container--large container--centered">
		<div class="container container--large">
			<h1 style="text-align: center;"></h1>

			<h1 class="title--small">Document Verification Panel</h1>
			<hr>

			<div class="row">
				<div class="col-md-4 col-md-offset-4" align="center">
					<%@ include file="../message.jsp"%>
				</div>
			</div>

			<!-- Personal Information -->
			<table class="table table-hover">
				<thead>
					<tr>

						<th><i class="fa fa-th"></i>Document No.</th>
						<th><i class="fa fa-th"></i>Document Name</th>
						<th><i class="fa fa-th"></i>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${documents}" var="document" varStatus="ctr">
						<tr>
							<td>${ctr.index+1}</td>
							<td>${document.name}</td>
							<td>
								<div class="col-md-3 ">
									<form name="form" method="POST" class="ui form"
										action="${pageContext.request.contextPath}/admin/docs/verify">
										<input type="hidden" name="docId"
											value="${document.documentId}" />

										<button type="submit"
											class="button button--white button--small" value="Verify">Verify</button>

									</form>
								</div>
								<div class="col-md-3 ">
									<form name="form" method="POST" class="ui form"
										action="${pageContext.request.contextPath}/admin/docs/del">
										<input type="hidden" name="docId"
											value="${document.documentId}" />
										<button type="submit"
											class="button button--orange button--small" value="Delete">Delete</button>

									</form>
								</div>

							</td>
						</tr>

					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>

</section>

</main>
<%@ include file="../footer.jsp"%>