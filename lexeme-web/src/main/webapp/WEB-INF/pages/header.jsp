	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<html ng-app="myApp" style="height: 158px; ">
	
	<head>
	   <!-- Full Body Container -->
		<div id="container">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=0">
	
		<!--Angular script for UI/DO Rendering-->
		<script src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/angular-route.min.js"></script>
	
	
	
		<!-- Semantic-ui -->
	
		
 		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700" rel="stylesheet" type="text/css">
		<!--Company css-->
	
		<link href="${pageContext.request.contextPath}/resources/semantic/css/semantic.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/semantic/css/semantic.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/semantic/css/card.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/semantic/css/card.min.css" rel="stylesheet">

		<script src="${pageContext.request.contextPath}/resources/semantic/javascript/semantic.js"></script>
		<script src="${pageContext.request.contextPath}/resources/semantic/javascript/semantic.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/semantic/javascript/validate-form.js"></script>
		<script src="${pageContext.request.contextPath}/resources/semantic/javascript/profile.js"></script>

		<link href="${pageContext.request.contextPath}/resources/semantic/css/semantic.min.css" rel="stylesheet">
	
		<link href="${pageContext.request.contextPath}/resources/css/lexememain.css" rel="stylesheet">
	   <!-- Responsive CSS Styles  -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive.css" media="screen">
	
		<!-- Css3 Transitions Styles  -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css" media="screen">

	   <!-- Color CSS Styles  -->
	
	<!--Angular Js-->
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular-route.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/angular/app.js"></script>
	
	</head>
			
			
	<body>
	
	
			
			
			<!-- Start Header Section -->
					
			<header class="clearfix">
				
				<!-- Start Top Bar -->
		 
		<nav class="navbar navbar-default navbar-static-top">
			<div class="container">
			<div class="navbar-header">
			
				 <a class="navbar-brand" href="${pageContext.request.contextPath}">NotoHub
				  </a>
				</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right" >
						<li><a href="${pageContext.request.contextPath}/user/login" ><i class="glyphicon glyphicon-cloud"></i> Login</a></li>
						<li><a href="${pageContext.request.contextPath}/user/signup" >Sign up</a></li>
						<li><a href="${pageContext.request.contextPath}/user/profile" >Profile</a></li>

				 </ul>
			</div>
		</div>
		</nav>
	 </header> 
