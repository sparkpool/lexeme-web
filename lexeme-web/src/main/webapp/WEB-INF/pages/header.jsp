	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<html>
	
	<head>
	   <!-- Full Body Container -->
		<div id="container">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=0">
	
		<!--Angular script for UI/DO Rendering-->
		<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/angular-route.min.js"></script>
	
	
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700" rel="stylesheet" type="text/css">
		<!--Company css-->
	
		<link href="${pageContext.request.contextPath}/resources/css/lexememain.css" rel="stylesheet">
	   <!-- Responsive CSS Styles  -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive.css" media="screen">
	
		<!-- Css3 Transitions Styles  -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css" media="screen">

	   <!-- Color CSS Styles  -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/red.css" title="red" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/jade.css" title="jade" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/green.css" title="green" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/blue.css" title="blue" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/beige.css" title="beige" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/cyan.css" title="cyan" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/orange.css" title="orange" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/peach.css" title="peach" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/pink.css" title="pink" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/purple.css" title="purple" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/sky-blue.css" title="sky-blue" media="screen" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors/yellow.css" title="yellow" media="screen" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.migrate.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modernizrr.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/asset/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.fitvids.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/nivo-lightbox.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.appear.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/count-to.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.textillate.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.lettering.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.easypiechart.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.parallax.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/mediaelement-and-player.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/script.js"></script>
	
	</head>
	<body>
	
	
			
			
			<!-- Start Header Section --> 
			<div class="hidden-header"></div>
			<header class="clearfix">
				
				<!-- Start Top Bar -->
				<div class="top-bar">
					<div class="container">
						<div class="row">
							<div class="col-md-7">
								<!-- Start Contact Info -->
								<ul class="contact-details">
									<li><a href="#"><i class="fa fa-map-marker"></i> A-88, Sector-4, Noida, India</a>
									</li>
									<li><a href="#"><i class="fa fa-envelope-o"></i> info@lexeme.com</a>
									</li>
									<li><a href="#"><i class="fa fa-phone"></i> +12 345 678 000</a>
									</li>
								</ul>
								<!-- End Contact Info -->
							</div><!-- .col-md-6 -->
							<div class="col-md-5">
								<!-- Start Social Links -->
								<ul class="social-list">
									<li>
										<a class="facebook itl-tooltip" data-placement="bottom" title="Facebook" href="#"><i class="fa fa-facebook"></i></a>
									</li>
									<li>
										<a class="twitter itl-tooltip" data-placement="bottom" title="Twitter" href="#"><i class="fa fa-twitter"></i></a>
									</li>
									<li>
										<a class="google itl-tooltip" data-placement="bottom" title="Google Plus" href="#"><i class="fa fa-google-plus"></i></a>
									</li>
									<li>
										<a class="dribbble itl-tooltip" data-placement="bottom" title="Dribble" href="#"><i class="fa fa-dribbble"></i></a>
									</li>
									<li>
										<a class="linkdin itl-tooltip" data-placement="bottom" title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a>
									</li>
									<li>
										<a class="flickr itl-tooltip" data-placement="bottom" title="Flickr" href="#"><i class="fa fa-flickr"></i></a>
									</li>
									<li>
										<a class="tumblr itl-tooltip" data-placement="bottom" title="Tumblr" href="#"><i class="fa fa-tumblr"></i></a>
									</li>
									<li>
										<a class="instgram itl-tooltip" data-placement="bottom" title="Instagram" href="#"><i class="fa fa-instagram"></i></a>
									</li>
									<li>
										<a class="vimeo itl-tooltip" data-placement="bottom" title="vimeo" href="#"><i class="fa fa-vimeo-square"></i></a>
									</li>
									<li>
										<a class="skype itl-tooltip" data-placement="bottom" title="Skype" href="#"><i class="fa fa-skype"></i></a>
									</li>
								</ul>
								<!-- End Social Links -->
							</div><!-- .col-md-6 -->
						</div><!-- .row -->
					</div><!-- .container -->
				</div><!-- .top-bar -->
				<!-- End Top Bar -->
		 
		<nav class="navbar navbar-default navbar-static-top">
			<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>     
				
				</button>
				 <a class="navbar-brand" href="">
							   NotoHub
				  </a>
				</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right" >
						<li><a href="${pageContext.request.contextPath}/user/login" ><i class="glyphicon glyphicon-cloud"></i> Login</a></li>
						<li><a href="${pageContext.request.contextPath}/user/login" >Sign up</a></li>
				 </ul>
			</div>
		</div>
		</nav>
	 </header> 
	 
	 
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
			
			
			
			