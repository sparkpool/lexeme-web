
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<html ng-app="myApp" style="height: 158px;">

<!-- Full Body Container -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=0">

<head>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<!--Angular script for UI/DO Rendering-->
<script
	src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/angular-route.min.js"></script>


<!-- Semantic-ui -->


<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<!--Company css-->
<script
	src="http://patrickgawron.com/wp/wp-content/uploads/2013/11/jquery.address.js"></script>

<link
	href="${pageContext.request.contextPath}/resources/semantic/css/semantic.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/semantic/css/semantic.min.css"
	rel="stylesheet">

<script
	src="${pageContext.request.contextPath}/resources/semantic/javascript/semantic.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/semantic/javascript/semantic.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/semantic/javascript/profile.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/semantic/javascript/validate-form.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/lexememain.css"
	rel="stylesheet">
<!-- Responsive CSS Styles  -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/responsive.css"
	media="screen">

<!-- Css3 Transitions Styles  -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/colors/peach.css"
	media="screen">

<!-- Color CSS Styles  -->

<!--Angular Js-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/angular/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/angular/authCtrl.js"></script>

<script>
	var _contextPath = "${pageContext.request.contextPath}";

	$(document).ready(function() {

		$('#menu-button').click(function() {
			$('#container').toggleClass('active');
		});

	});
</script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lwb-css.css"
	type="text/css" media="screen" charset="utf-8">


<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">


</head>

<body>

	<!-- Start Header Section -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation"
		id="slide-nav">

		<div class="container">
			<div class="navbar-header">
				<a class="navbar-toggle"> <span class="sr-only">Toggle
						navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a> <a class="logo" href="${pageContext.request.contextPath}">NotoHub</a>



			</div>
			<div id="slidemenu">
				<ul class="nav navbar-nav navbar-right">

					<shiro:hasAnyRoles name="STUDENT, TUTOR, TUTOR_UNVERIFIED, STUDENT_UNVERIFIED">
						<li><a href="#" id="#res">Resources</a></li>
						<li><a href="#how">How it works</a></li>

					</shiro:hasAnyRoles>
					<li><a href="${pageContext.request.contextPath}/doc/upload">Earn
							Money</a></li>


					<shiro:notAuthenticated>
						<li class="active"><a
							href="${pageContext.request.contextPath}/user/login"><i
								class="glyphicon glyphicon-cloud"></i> Login</a></li>
						<li><a href="${pageContext.request.contextPath}/user/signup">Sign
								up</a></li>


					</shiro:notAuthenticated>
					<shiro:hasRole name="MODERATOR">
						<li><a
							href="${pageContext.request.contextPath}/admin/docs/unverified/">DashBord</a></li>

					</shiro:hasRole>

					<shiro:authenticated>


						<li id="dropdown" align="left"><a href=""
							data-toggle="dropdown" class="dropdown-toggle"> <img
								src="${pageContext.request.contextPath}/resources/images/nophoto_pic.gif"
								width="20px" height="20px"> <shiro:principal
									property="firstName" /> <b class="caret"></b></a>
							<ul class="dropdown-menu">
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
	</div>