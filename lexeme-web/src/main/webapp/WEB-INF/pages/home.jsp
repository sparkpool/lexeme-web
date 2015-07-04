<%@include file="header.jsp"%>

<div class="main-page">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-md-3">
				<div class="claim lead">
					StudyDoer
					<p>Read, Share & Earn
					<p>
				</div>
			</div>
			<div class="col-sm-8 col-md-9">
				<img
					src="${pageContext.request.contextPath}/resources/images/open_book_large_T.png"
					class="pull-right" />
			</div>
		</div>
		<div class="btn-group btn-group-claim">

			<a href="" class="btn btn-claim btn-lg"> Get Solution </a> <a
				href="${pageContext.request.contextPath}/user/login"
				class="btn btn-claim btn-lg"> <i class="fa fa-eye"> </i>
				SignIn/Login
			</a>
		</div>
	</div>
</div>

<div class="banner">
	<div class="container">
		<div class="row">
			<div class="text-center">Study Resources</div>
			<div class="visible-xs">
				<br />
			</div>
		</div>
		<div class="col-sm-6"></div>
	</div>
</div>

<div class="home">
	<div class="content" role="main">


		<div class="container">
			<div class="home-body">
				<div class="lead">Study Doer offers students crowd-sourced
					study documents, expert tutors and customizable flashcards,
					accessible anywhere, at any</div>

				<hr>

				<section class="feature row">
					<div class="col-sm-4 feature-figure">

						<img
							src="${pageContext.request.contextPath}/resources/images/docu.png"
							class="pull-right" />

					</div>
					<div class="col-sm-8 feature-text">

						<h2 id="awesome-mobile-components">Documents</h2>
						<p>
						<ul>
							<p>Homework Solution</p>
							<li>Course Specification</li>
							<li>Notes</li>
							<li>Labs</li>
							<li>Reseach Paper</li>
							<li>Essay</li>

						</ul>

						</p>
					</div>
				</section>
				<section class="feature row">
					<div class="col-sm-4 col-sm-push-8 feature-figure">
						<img
							src="${pageContext.request.contextPath}/resources/images/qa.png"
							class="pull-right" />
					</div>
					<div class="col-sm-8 col-sm-pull-4 feature-text">
						<h2 id="angular-js-everywhere">Answers</h2>
						<p>Looking for help ? Noto Hub has educational resources -
							from practice problems to homework help - tagged to thousands of
							high schools and colleges from around the world.</p>
						<hr>
						<li>Homework Solution</li>
						<li>Get Notes</li>
						<li>Get Essays</li>

					</div>
				</section>

				<section class="feature row">
					<div class="col-sm-4 col-sm-push-8 feature-figure">

						<img
							src="${pageContext.request.contextPath}/resources/images/sec-desktop-fig.png"
							class="pull-right" />



					</div>
					<div class="col-sm-8 col-sm-pull-4 feature-text">
						<h2 id="bootstrap-tailored-for-your-needs">Share/Earn</h2>
						<p>Easy! Share your knowledge to start earning.</p>
						<hr>
						<li>Make money by sharing your study resources with other
							students!</li>
						<li>Create Q&As and earn money when students unlock your
							answers.</li>
					</div>
				</section>
			</div>
		</div>


<%@include file="footer.jsp"%>