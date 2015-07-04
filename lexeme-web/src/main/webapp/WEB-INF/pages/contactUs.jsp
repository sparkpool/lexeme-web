<%@ include file="header.jsp"%>
<!DOCTYPE html>
<%@ include file="header.jsp"%>
<div class="contactus">
	<!-- Open Page conatiner -->
	<div class="container">
		<!-- Container -->
		<div class="row">
			<div class="title">CONTACT US</div>

		</div>

	</div>
</div>

<!-- Banner -->
<div class="aboutus-banner">
	<ul class="nav nav-tabs">
		<li class="active"><a href="#emailSupport" data-toggle="tab">Email
				Support</a></li>
		<li><a href="#phSupport" data-toggle="tab">Phone Support</a></li>
		<li><a href="#chatSupport" data-toggle="tab">Chat Support</a></li>
	</ul>

</div>


<!-- Content Page -->
<div class="content-page">
	<div class="tab-content">
		<!-- Privacy -->
		<div id="emailSupport" class="tab-pane fade in active">

			<h1 class="heading">General enquiry</h1> 
			<i class="fa fa-envelope fa-3x"
				style="color: orange;"></i><br /> <a
				href="mailto:support@studydoer.com"><p>support@studydoer.com</p>
			</a>
		</div>
		<div id="phSupport" class="tab-pane fade ">
			<h1 class="heading">Phone Support</h1>
			<i class="fa fa-mobile fa-3x" style="color: orange;"></i>
			<p>956-789-9090</p>
		</div>

		<div id="chatSupport" class="tab-pane fade ">
			<h1 class="heading">Media Inquiries </h1>
			<i class="fa fa-briefcase fa-3x"
				style="color: orange;"></i>
		</div>
	</div>

</div>


<%@ include file="footer.jsp"%>

