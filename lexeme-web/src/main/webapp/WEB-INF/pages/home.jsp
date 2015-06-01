<%@include file="header.jsp"%>

<div id="page-content">
	<!-- Open Page conatiner -->

	<!-- Container -->

	<div class="into">
		<div class="row">
			<div class="col-md-12">



				<h1>Welcome to NotoHub</h1>


				<div class="form-group" align="center">
					<form class="form-search" ng-controller="autocompleteController"
						align="center">

						<div class="col-md-6 col-md-offset-2">

							<input type="text" ng-model="sol.course"
								placeholder="	CourseID | Course Name | Subject | University  	"
								typeahead="c as c.courseid for c in list | filter:$viewValue | limitTo:10"
								typeahead-min-length='1'
								typeahead-on-select='onSelectPart($item, $model, $label)'
								typeahead-template-url="customTemplate.html"
								class="form-control" name="course">
						</div>
						<div class="col-md-2">

							<button type="submit" class="btn btn-info">Go</button>
						</div>

					</form>
				</div>


			</div>
			<!--  -->
		</div>


	</div>


	<div class="row">
		<div class="about">
			<h1>Browse Library</h1>
			<p>Noto Hub offers students crowd-sourced study documents, expert
				tutors and customizable flashcards, accessible anywhere, at any
				time.</p>
			<hr>
			<div class="col-md-4">
				<div class="box4">
					<canvas style="width: 84px; height: 200px;" height="400"
						width="168"></canvas>
					<input readonly="readonly"
						style="display: none; width: 0px; visibility: hidden;"
						id="ch_split-qa_value" data-width="84" data-readonly="true"
						data-linecap="round" data-fgcolor="#0aaae7" value="0"
						data-thickness=".1" data-displayinput="false"
						data-targetvalue="20" class="dial" type="text">
					<div class="content">
						<div class="header">Documents</div>
						<div class="meta">
							<a>Friends</a>
						</div>
						<div class="description">Veronika Ossi is a set designer
							living in New York who enjoys kittens, music, and partying.</div>
					</div>
					<div class="extra content">
						<span class="right floated"> Joined in 2013 </span> <span>
							<i class="user icon"></i> 75 Friends
						</span>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="box4">
					<canvas style="width: 84px; height: 200px;" height="400"
						width="168"></canvas>
					<input readonly="readonly"
						style="display: none; width: 0px; visibility: hidden;"
						id="ch_split-qa_value" data-width="84" data-readonly="true"
						data-linecap="round" data-fgcolor="#0aaae7" value="0"
						data-thickness=".1" data-displayinput="false"
						data-targetvalue="20" class="dial" type="text">

					<div class="content">
						<div class="header">Homework</div>
						<div class="meta">
							<a>Friends</a>
						</div>
						<div class="description">Veronika Ossi is a set designer
							living in New York who enjoys kittens, music, and partying.</div>
					</div>
					<div class="extra content">
						<span class="right floated"> Joined in 2013 </span> <span>
							<i class="user icon"></i> 75 Friends
						</span>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="box4">
					<canvas style="width: 84px; height: 200px;" height="400"
						width="168"></canvas>
					<input readonly="readonly"
						style="display: none; width: 0px; visibility: hidden;"
						id="ch_split-qa_value" data-width="84" data-readonly="true"
						data-linecap="round" data-fgcolor="#0aaae7" value="0"
						data-thickness=".1" data-displayinput="false"
						data-targetvalue="20" class="dial" type="text">

					<div class="content">
						<div class="header">Noto</div>
						<div class="meta">
							<a>Friends</a>
						</div>
						<div class="description">Veronika Ossi is a set designer
							living in New York who enjoys kittens, music, and partying.</div>
					</div>
					<div class="extra content">
						<span class="right floated"> Joined in 2013 </span> <span>
							<i class="user icon"></i> 75 Friends
						</span>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="row">
		<div class="howitWork">
			<h1>How it Works?</h1>
		</div>
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