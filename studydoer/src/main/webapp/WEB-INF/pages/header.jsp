
<%@page import="com.sd.web.enums.EnumRoles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>


<html ng-app="myApp"
	class="ltr js flexbox flexboxlegacy cssanimations csstransforms csstransforms3d csstransitions no-flexboxtweener">

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png"
	width="56" height="56" type="image/x-icon">

<!-- Full Body Container -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=0">

<head>



<title>Study Doer | Home</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<!--Angular script for UI/DO Rendering-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.1/angular.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.1/angular-route.min.js"></script>


<!-- Semantic-ui -->


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<!--Company css-->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.address.js"></script>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.0.0/semantic.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.0.0/semantic.min.css"
	rel="stylesheet">


<!--  -->

<link
	href="${pageContext.request.contextPath}/resources/css/document.css"
	rel="stylesheet">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.0.0/semantic.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.0.0/semantic.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/semantic/javascript/profile.js"></script>



<script
	src="${pageContext.request.contextPath}/resources/semantic/javascript/validate-form.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/lexememain.css"
	rel="stylesheet">
<!-- Responsive CSS Styles  -->


<!-- Css3 Transitions Styles  -->
<!-- Color CSS Styles  -->

<!--Angular Js-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/angular/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/angular/authCtrl.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/angular/adminCtrl.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/angular/DocumentCtrl.js"></script>



<!-- Add side bar -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/sidebar.js"></script>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/document.js"></script>

<script>
	var _contextPath = "${pageContext.request.contextPath}";

	$(document).ready(function() {

		$('#menu-button').click(function() {
			$('#container').toggleClass('active');
		});

	});
</script>



<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
</head>

<body class="site">
	<noscript>
		<div class="row" style="padding-top: 5%;">
			<div class="col-xs-8 col-xs-offset-2">
				<div class="alert alert-danger " role="alert">It appears that
					your web browser does not support JavaScript, or you have
					temporarily disabled scripting. Either way, this site won't work
					without it. Please enable the JavaScript!</div>
			</div>
		</div>

	</noscript>
	<!-- Start Header Section -->


	<header>
		<nav class="navbar navbar--desktop">
			<div class="navbar__inner">
				<div class="navbar__logo">
					<a href="${pageContext.request.contextPath}"> StudyDoer </a>
				</div>
				<!-- Menu Item -->
				<div class="navbar__menu">
					<ul>
						<!-- Ask Question -->
						<li><a href="${pageContext.request.contextPath}/askQuestion">Q/A</a></li>
						<!-- Library -->
						<li><a href="${pageContext.request.contextPath}/library">Library</a></li>

						<shiro:notAuthenticated>

							<!-- Login -->
							<!-- Sign up -->
							<li><a href="${pageContext.request.contextPath}/user/signup">Sign
									Up</a></li>

							<li><a href="${pageContext.request.contextPath}/user/login">SignIn</a></li>
						</shiro:notAuthenticated>

						<shiro:authenticated>

							<shiro:hasRole name="<%=EnumRoles.MODERATOR.getRole() %>">
								<li><a
									href="${pageContext.request.contextPath}/admin/docs/unverified/">DashBord</a></li>
							</shiro:hasRole>
						</shiro:authenticated>

						<shiro:authenticated>


							<li class="navbar__menu--dropdown" align="left"><a href=""
								data-toggle="dropdown" class="dropdown-toggle"> <img
									src="${pageContext.request.contextPath}/resources/images/nophoto_pic.gif"
									width="20px" height="20px"> <shiro:principal
										property="firstName" /> <b class="caret"></b></a>
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/profile/view">My
											Account</a></li>
									<li><a
										href="${pageContext.request.contextPath}/user/logout">Logout</a></li>
								</ul></li>

						</shiro:authenticated>

					</ul>
				</div>
			</div>
		</nav>




		<nav class="navbar navbar--mobile">
			<div class="navbar__logo">
				<a href="${pageContext.request.contextPath}"> StudyDoer </a>
			</div>
			<div class="navbar__menu-button">
				<span></span>
			</div>
			<div class="navbar__menu">
				<ul>
					<!-- Ask Question -->
					<li><a href="${pageContext.request.contextPath}/askQuestion">Q/A</a></li>
					<!-- Library -->
					<li><a href="${pageContext.request.contextPath}/library">Library</a></li>

					<shiro:notAuthenticated>

						<!-- Login -->
						<!-- Sign up -->
						<li><a href="${pageContext.request.contextPath}/user/signup">Sign
								Up</a></li>

						<li><a href="${pageContext.request.contextPath}/user/login">SignIn</a></li>
					</shiro:notAuthenticated>

					<shiro:authenticated>
<li><a
								href="${pageContext.request.contextPath}/admin/docs/unverified/">DashBord</a></li>
					</shiro:authenticated>

					<shiro:authenticated>


						<li class="navbar__menu--dropdown" align="left"><a href=""
							data-toggle="dropdown" class="dropdown-toggle"> <img
								src="${pageContext.request.contextPath}/resources/images/nophoto_pic.gif"
								width="20px" height="20px"> <shiro:principal
									property="firstName" /> <b class="caret"></b></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/profile/view">My
										Account</a></li>
								<li><a
									href="${pageContext.request.contextPath}/user/logout">Logout</a></li>
							</ul></li>

					</shiro:authenticated>

				</ul>
			</div>
		</nav>
	</header>