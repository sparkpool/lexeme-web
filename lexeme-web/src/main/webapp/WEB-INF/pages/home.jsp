<%@include file="header.jsp"%>

<div class="jumbotron">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-md-3">
				<div class="claim lead">NotoHub
						<p>Read, Share & Earn<p>
			
				</div>
			</div>
			<div class="col-sm-8 col-md-9">
				<img
					src="${pageContext.request.contextPath}/resources/images/open_book_large_T.png"
					class="pull-right" />
			</div>
		</div>
		<div class="btn-group btn-group-claim">

			<a
				href=""
				class="btn btn-claim btn-lg"> Get Solution </a> <a
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
			<div class="text-center">
				Study Resources
				</div>
				<div class="visible-xs">
					<br />
				</div>
			</div>
			<div class="col-sm-6">
				<div class="btn-group btn-group-justified btn-group-social">
					<a href="https://github.com/mcasimir/mobile-angular-ui"
						target="blank" class="btn"> <span class="btn-social"><i
							class="fa fa-github"></i></span> <span class="github-count flag"></span>
					</a> <a href="https://twitter.com/mobileangularui" target="blank"
						class="btn"> <span class="btn-social"><i
							class="fa fa-twitter"></i></span> <span class="twitter-count flag"></span>
					</a> <a href="https://plus.google.com/+MobileangularuiGp"
						target="blank" class="btn"> <span class="btn-social"><i
							class="fa fa-google-plus"></i></span> <span
						class="google-plus-count flag"></span>
					</a>
				</div>
			</div>
		</div>
	</div>

<div class="home">
	<div class="content" role="main">


		<div class="container">
			<div class="home-body">
				<div class="lead">Noto Hub offers students crowd-sourced study
					documents, expert tutors and customizable flashcards, accessible
					anywhere, at any</div>
					
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
						<p>Looking for help ? Noto Hub has educational resources - from practice problems to homework help - tagged to thousands of high schools and colleges from around the world.</p>
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
						<li>Make money by sharing your study resources with other students!</li>
						<li>Create Q&As and earn money when students unlock your answers.</li>
					</div>
				</section>
			</div>
		</div>



		<div class="container">
			<div class="home-body">
				<section class="text-center">
					<h2 style="text-align: center;">How it works!</h2>
					<p>Anyone can download, read and share the Documents</p>
					<br />

<hr>

				<div class="row">
			
					<div class="col-md-4">
						<div class="howitWork">
			
						<div class="row" align="left">
						<div class="col-md-8" align="justify">
	
							<img
								src="${pageContext.request.contextPath}/resources/images/docu.png"
								class="pull-right" width="150px" />
								</div>
						</div>

						<div class="row">

							<div class="btn-group">
								<a
									href=""
									class="btn btn-claim btn-lg"> Dowload Documents </a>
							</div>
						</div>

					</div>
				</div>

					<div class="col-md-4">
								<div class="howitWork">
			
						<div class="row" align="left">
						<div class="col-md-8" align="justify">
	
							<img
								src="${pageContext.request.contextPath}/resources/images/upload.jpg"
								class="pull-right" width="150px" />
								</div>
						</div>

						<div class="row">

							<div class="btn-group">
								<a
									href=""
									class="btn btn-claim btn-lg">Upload Documents </a>
							</div>
						</div>

					</div>
		</div>
					<div class="col-md-4">
					<div class="howitWork">
						<div class="row" align="left">
							<div class="col-md-8" align="justify">
							<img
								src="${pageContext.request.contextPath}/resources/images/earnMoney.jpg"
								class="pull-right" width="150px" />
								</div>
						</div>

						<div class="row">
							<div class="btn-group">
								<a
									href=""
									class="btn btn-claim btn-lg"> Earn Money </a>
							</div>
						</div>

					</div>
					</div>
				</div>

		</section>
		

	</div>
</div>


<%@include file="footer.jsp"%>