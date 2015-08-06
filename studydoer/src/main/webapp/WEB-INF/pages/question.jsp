<%@ include file="header.jsp"%>

<!---
=================================================================================================================================
								Question Board
==================================================================================================================================-->
<!--DashBoard Implementation start-->

<div class="container">
	<div class="row">

		<div class="col-lg-2">
			<blockquote>
				<span class="glyphicon glyphicon-book"></span> Subject :
				<?php echo $x;?>
			</blockquote>
		</div>

		<div class="col-lg-2">
			<blockquote>
				<span class="glyphicon glyphicon-dashboard"></span> Deadline</label>:
				<?php echo $startat;?>
			</blockquote>
		</div>

		<div class="col-lg-3">
			<blockquote>
				<span class="glyphicon glyphicon-usd"></span> Price
				<?php echo $price;?>
			</blockquote>
		</div>

		<div class="col-lg-4">
			<blockquote>
				<span class="glyphicon glyphicon-user"></span> User:
				<?php echo $assignedBy;?>
			</blockquote>
		</div>
		<div class="col-lg-12">

			<div class="alert alert-info" role="alert">
				<?php echo $Desc;?>
			</div>
		</div>
		<!-- row close -->

		<div ng-controller="commentsController">
			<div ng-app id="ng-app" class="main"></div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>