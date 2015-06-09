<%@include file="header.jsp"%>

<div id="page-content">
	<!-- Open Page conatiner -->
	<div class="container-fluid">

		<section id="content">
			<div class="into" >
				<div class="row">
					<div class="row">
				
					<div class="col-md-12">
<div class="video-overlay">&nbsp;</div>
<video id="cover-video" class="video-background" loop muted>
<source src="//static.onemightyroar.com/site-assets/videos/file.mp4" type="video/mp4">
<source src="//static.onemightyroar.com/site-assets/videos/file.ogv" type="video/ogg">
</video>
</div>					</div>
						
					</div>
	<div class="row">

						<div class="col-md-12">

							<div class="tree">
								<ul>

									<li><a href="#">NotoHub</a>
										<ul>
											<li><a href="#">Login</a>
												<ul>
													<a href="#">If you don't have any account</a>
												</ul></li>
											<li><a href="#">Singup</a></li>
											<li><a href="#">Search Solution</a>
												<ul>
													<li><a href="#">Download</a>
												</ul></li>


										</ul></li>
								</ul>
							</div>
							</div>
						</div>
					</div>
				</div>

			</div>


			<div class="row">

				<div class="about" id="res">
						<div class="row">
					
						<div class="col-md-12">
							<h1>Resources</h1>
						</div>

						</div>
							<div class="row">
						
						<div class="col-md-12">
							<div class="tree">

								<ul>
									<li><a href="#">Documents</a>
										<ul>
											<li><a href="#">Notes</a>
												<ul>
													<li><a href="#">10,000</a></li>
												</ul></li>
											<li><a href="#">Homework</a>
												<ul>
													<li><a href="#">Grand Child</a></li>
													<li><a href="#">Grand Child</a>
														<ul>
															<li><a href="#">Great Grand Child</a></li>
														</ul></li>
												</ul></li>
											<li><a href="#">Essay</a></li>

											<li><a href="#">Labs</a></li>
										</ul></li>
								</ul>


							</div>
</div>
						</div>
					</div>
				</div>

				<hr>
				<div class="row">

					<div class="howitWork">
						<div class="row">

							<div class="col-md-12">
								<h1>How it works</h1>
							</div>

						</div>
						<div class="row">

							<div id="col-md-6 col-md-offset 5" >
								<div class="tree">
									<ul>
										<li><a href="#">Search Solution</a>
											<ul>
												<li><a href="#">Check Solution</a></li>
												<li><a href="#">Payment</a></li>


												<li><a href="#">Get Solution/Download</a></li>




											</ul></li>

									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>

	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		// navigation click actions
		$('.scroll-link').on('click', function(event) {
			event.preventDefault();
			var sectionID = $(this).attr("data-id");
			scrollToID('#' + sectionID, 750);
		});
		// scroll to top action
		$('.scroll-top').on('click', function(event) {
			event.preventDefault();
			$('html, body').animate({
				scrollTop : 0
			}, 'slow');
		});
		// mobile nav toggle
		$('#nav-toggle').on('click', function(event) {
			event.preventDefault();
			$('#main-nav').toggleClass("open");
		});
	});
	// scroll function
	function scrollToID(id, speed) {
		var offSet = 50;
		var targetOffset = $(id).offset().top - offSet;
		var mainNav = $('#main-nav');
		$('html,body').animate({
			scrollTop : targetOffset
		}, speed);
		if (mainNav.hasClass("open")) {
			mainNav.css("height", "1px").removeClass("in").addClass("collapse");
			mainNav.removeClass("open");
		}
	}
	if (typeof console === "undefined") {
		console = {
			log : function() {
			}
		};
	}
</script>

<%@include file="footer.jsp"%>