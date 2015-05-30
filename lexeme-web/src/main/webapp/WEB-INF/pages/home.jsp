<%@include file="header.jsp"%>

<div class="page-content">  <!-- Open Page conatiner -->
	
	<div class="container"> <!-- Container -->
	
	<section id="content">
	
		<div class="pull-left">
			<p align="left"
				style="color: #FFFFFF; padding-top: 60px; text-shadow: inherit; table-layout: auto; font-size: 36px;">
				Welcome to NotoHub
		
				</p>
			<div class="col-lg-7">
				<blockquote class="bs-callout bs-callout-warning">You
					can download an existing solution form solution libraray</blockquote>
				<div class="btn-group" align="left">
					<button class="btn btn-warning btn-lg" data-toggle="modal"
						data-target="#makePayment" onClick="addQuestion()">Get
						Solution</button>
				</div>
			</div>
			<div class="col-lg-7">
				<blockquote class="bs-callout bs-callout-warning">You
					can ask form help from our experts</blockquote>
				<div class="btn-group" align="left">
					<button class="btn btn-warning btn-lg" data-toggle="modal"
						data-target="#makePayment" onClick="addQuestion()">Ask
						Question</button>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="africa" class="page-section">
	<div class="container">
		<div class="pull-left">
			<p align="left"
				style="color: #FFFFFF; padding-top: 60px; text-shadow: inherit; table-layout: auto; font-size: 36px;">How
				it Works</p>
			<div class="col-lg-7">
				<blockquote class="bs-callout bs-callout-warning">You
					can download an existing solution form solution libraray</blockquote>
				<div class="btn-group" align="left">
					<button class="btn btn-warning btn-lg" data-toggle="modal"
						data-target="#makePayment" onClick="addQuestion()">Get
						Solution</button>
				</div>
			</div>
			<div class="col-lg-7">
				<blockquote class="bs-callout bs-callout-warning">You
					can ask form help from our experts</blockquote>
				<div class="btn-group" align="left">
					<button class="btn btn-warning btn-lg" data-toggle="modal"
						data-target="#makePayment" onClick="addQuestion()">Ask
						Question</button>
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