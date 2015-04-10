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
				 <a class="navbar-brand" href="${pageContext.request.contextPath}">NotoHub
				  </a>
				</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right" >
						<li><a href="${pageContext.request.contextPath}/user/login" ><i class="glyphicon glyphicon-cloud"></i> Login</a></li>
						<li><a href="${pageContext.request.contextPath}/user/signup" >Sign up</a></li>
						<li><a href="${pageContext.request.contextPath}/pages/profile.jsp" >Profile</a></li>

				 </ul>
			</div>
		</div>
		</nav>
	 </header> 
	 
