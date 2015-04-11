	<!--Header--->
	<%@ include file="header.jsp" %>
	 
		<section id="home">
				<!-- Carousel -->
				<div id="main-slide" class="" data-ride="">
	
					<!-- Indicators -->
					
					<!--/ Indicators end-->
	
					<!-- Carousel inner -->
					<div class="carousel-inner">
						<div class="item active">
							<img class="img-responsive" src="" alt="">
							<div class="slider-content">
								<div class="col-md-12 text-center">
									<h2 class="animated2">
									  <span>Welcome to <strong>NotoHub</strong></span>
									</h2>
									<h3 class="animated3">
										<span>Get Help form Anywhere</span>
									</h3>
									<p class="animated4">					
									<a href="#" class="btn-system btn-large border-btn btn-wite"><i class="fa fa-tasks"></i> Signup</a>
	
									</p>
								</div>
							</div>
						</div>
					</div>
					<!-- Carousel inner end-->
	
				</div>
				<!-- /carousel -->
			</section>
			<!-- End Home Page Slider -->
  <div class="section purchase">
            <div class="container">

      			
			
	   <!-- Start Purchase Section -->
			<div class="section purchase">
				<div class="container">
	
					<!-- Start Video Section Content -->
					<div class="section-video-content text-center">
	
						<!-- Start Animations Text -->
						<h1 class="fittext wite-text uppercase tlt">
						  <span class="texts">
							<span>Modern</span>
							<span>Clean</span>
							<span>Awesome</span>
							<span>Cool</span>
							<span>Great</span>
						  </span>
							You can buy homework solution <br/>
						</h1>
						<!-- End Animations Text -->
						<!-- Start Buttons -->
						<a href="#" class="btn-system btn-large border-btn btn-wite"><i class="fa fa-tasks"></i> Signin</a>
						<a href="#" class="btn-system btn-large btn-wite"><i class="fa fa-download"></i> Buy Solution</a>
	
					</div>
					<!-- End Section Content -->
	
				</div><!-- .container -->
			</div>
			<!-- End Purchase Section -->               
			
			<!-- Start Testimonials Section -->
			<div>
				<div class="container">
					<div class="row">
	 <div class="col-md-8">
	  
	   <!-- Start Recent Posts Carousel -->
	   <div class="latest-posts">
		<h4 class="classic-title"><span>Latest News</span></h4>
		<div class="latest-posts-classic custom-carousel touch-carousel" data-appeared-items="2">
		  
		  <!-- Posts 1 -->
		  <div class="post-row item">
			<div class="left-meta-post">
			  <div class="post-date"><span class="day">28</span><span class="month">Dec</span></div>
			  <div class="post-type"><i class="fa fa-picture-o"></i></div>
			</div>
			<h3 class="post-title"><a href="#">Standard Post With Image</a></h3>
			<div class="post-content">
			  <p>Hello <a class="read-more" href="#">Read More...</a></p>
			</div>
		  </div>
		  
		  
		</div>
	  </div>
	  <!-- End Recent Posts Carousel -->
	  
	</div>
	
	<div class="col-md-4">
	  
	  <!-- Classic Heading -->
	  <h4 class="classic-title"><span>Testimonials</span></h4>
	  
	  <!-- Start Testimonials Carousel -->
	  <div class="custom-carousel show-one-slide touch-carousel" data-appeared-items="1">
		<!-- Testimonial 1 -->
		<div class="classic-testimonials item">
		  <div class="testimonial-content">
			<p>  </div>
		  <div class="testimonial-author"><span>John Doe</span> - Customer</div>
		</div>
	  </div>
	  <!-- End Testimonials Carousel -->
	  
	</div>
	</div>
		  </div>
			</div>
			<!-- End Testimonials Section -->
			

	<!--ng-view for Container rendering---->
	<div class="container"  style="margin-top:20px;  ">
	<div ng-view>
	
	<a href="#/route1">Route 1</a><br/>
	</div>
	
	</div>
	<%@ include file="footer.jsp" %>
