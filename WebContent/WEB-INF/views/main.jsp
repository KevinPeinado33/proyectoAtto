<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<spring:url value="/recursos" var="urlrecursos"></spring:url>
<link href="${urlrecursos}/app-assets/css/vendors.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/vendors/css/extensions/sweetalert.css">
<link rel="apple-touch-icon"
	href="${urlrecursos}/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${urlrecursos}/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/vendors/css/forms/toggle/switchery.min.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/vendors.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/vendors/css/extensions/toastr.css">

<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/app.css">
<!-- END STACK CSS-->
<!-- BEGIN Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/pages/gallery.css">

<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/core/colors/palette-gradient.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/fonts/simple-line-icons/style.min.css">
<style>
body {
	font-family: 'Montserrat', sans-serif;
	background-image: url("recursos/images/fondomain.svg");
	/* The image used */
	background-position: center; /* Center the image */
	background-repeat: no-repeat; /* Do not repeat the image */
	background-size: cover;
	/* Resize the background image to cover the entire container */
}

#cartita:hover {
	-webkit-transform: scale(1.2);
	transform: scale(1.2)
}
</style>
</head>

<body
	class="horizontal-layout horizontal-menu 2-columns   menu-expanded"
	data-open="click" data-menu="horizontal-menu" data-col="2-columns">

	<nav
		class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-static-top navbar-light navbar-border navbar-brand-center">
	<div class="navbar-wrapper">
		<div class="navbar-header">
			<ul class="nav navbar-nav flex-row">
				<li class="nav-item mobile-menu d-md-none mr-auto"><a
					class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i
						class="ft-menu font-large-1"></i></a></li>
				<li class="nav-item"><a class="navbar-brand" href="index.html">
						<img class="brand-logo" alt=""
						src="../../../app-assets/images/logo/stack-logo.png">
						<h2 class="brand-text">Stack</h2>
				</a></li>
				<li class="nav-item d-md-none"><a
					class="nav-link open-navbar-container" data-toggle="collapse"
					data-target="#navbar-mobile"><i class="fa fa-ellipsis-v"></i></a></li>
			</ul>
		</div>
		<div class="navbar-container container center-layout">
			<div class="collapse navbar-collapse" id="navbar-mobile">
				<ul class="nav navbar-nav mr-auto float-left">

				</ul>
				<ul class="nav navbar-nav float-right">
					<li class="dropdown dropdown-language nav-item"><a
						class="dropdown-toggle nav-link" id="dropdown-flag" href="#"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
							class="flag-icon flag-icon-gb"></i><span
							class="selected-language"></span></a>
						<div class="dropdown-menu" aria-labelledby="dropdown-flag">
							<a class="dropdown-item" href="#"><i
								class="flag-icon flag-icon-gb"></i> English</a> <a
								class="dropdown-item" href="#"><i
								class="flag-icon flag-icon-fr"></i> French</a> <a
								class="dropdown-item" href="#"><i
								class="flag-icon flag-icon-cn"></i> Chinese</a> <a
								class="dropdown-item" href="#"><i
								class="flag-icon flag-icon-de"></i> German</a>
						</div></li>
					<li class="dropdown dropdown-notification nav-item"><a
						class="nav-link nav-link-label" href="#" data-toggle="dropdown"><i
							class="ficon ft-bell"></i> <span
							class="badge badge-pill badge-default badge-danger badge-default badge-up">5</span>
					</a>
						<ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
							<li class="dropdown-menu-header">
								<h6 class="dropdown-header m-0">
									<span class="grey darken-2">Notifications</span> <span
										class="notification-tag badge badge-default badge-danger float-right m-0">5
										New</span>
								</h6>
							</li>
							<li class="scrollable-container media-list"><a
								href="javascript:void(0)">
									<div class="media">
										<div class="media-left align-self-center">
											<i class="ft-plus-square icon-bg-circle bg-cyan"></i>
										</div>
										<div class="media-body">
											<h6 class="media-heading">You have new order!</h6>
											<p class="notification-text font-small-3 text-muted">Lorem
												ipsum dolor sit amet, consectetuer elit.</p>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">30 minutes ago</time>
											</small>
										</div>
									</div>
							</a> <a href="javascript:void(0)">
									<div class="media">
										<div class="media-left align-self-center">
											<i
												class="ft-download-cloud icon-bg-circle bg-red bg-darken-1"></i>
										</div>
										<div class="media-body">
											<h6 class="media-heading red darken-1">99% Server load</h6>
											<p class="notification-text font-small-3 text-muted">Aliquam
												tincidunt mauris eu risus.</p>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">Five hour ago</time>
											</small>
										</div>
									</div>
							</a> <a href="javascript:void(0)">
									<div class="media">
										<div class="media-left align-self-center">
											<i
												class="ft-alert-triangle icon-bg-circle bg-yellow bg-darken-3"></i>
										</div>
										<div class="media-body">
											<h6 class="media-heading yellow darken-3">Warning
												notifixation</h6>
											<p class="notification-text font-small-3 text-muted">Vestibulum
												auctor dapibus neque.</p>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">Today</time>
											</small>
										</div>
									</div>
							</a> <a href="javascript:void(0)">
									<div class="media">
										<div class="media-left align-self-center">
											<i class="ft-check-circle icon-bg-circle bg-cyan"></i>
										</div>
										<div class="media-body">
											<h6 class="media-heading">Complete the task</h6>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">Last week</time>
											</small>
										</div>
									</div>
							</a> <a href="javascript:void(0)">
									<div class="media">
										<div class="media-left align-self-center">
											<i class="ft-file icon-bg-circle bg-teal"></i>
										</div>
										<div class="media-body">
											<h6 class="media-heading">Generate monthly report</h6>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">Last month</time>
											</small>
										</div>
									</div>
							</a></li>
							<li class="dropdown-menu-footer"><a
								class="dropdown-item text-muted text-center"
								href="javascript:void(0)">Read all notifications</a></li>
						</ul></li>
					<li class="dropdown dropdown-notification nav-item"><a
						class="nav-link nav-link-label" href="#" data-toggle="dropdown"><i
							class="ficon ft-mail"></i> <span
							class="badge badge-pill badge-default badge-warning badge-default badge-up">3</span>
					</a>
						<ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
							<li class="dropdown-menu-header">
								<h6 class="dropdown-header m-0">
									<span class="grey darken-2">Messages</span> <span
										class="notification-tag badge badge-default badge-warning float-right m-0">4
										New</span>
								</h6>
							</li>
							<li class="scrollable-container media-list"><a
								href="javascript:void(0)">
									<div class="media">
										<div class="media-left">
											<span class="avatar avatar-sm avatar-online rounded-circle">
												<img
												src="../../../app-assets/images/portrait/small/avatar-s-1.png"
												alt="avatar"><i></i>
											</span>
										</div>
										<div class="media-body">
											<h6 class="media-heading">Margaret Govan</h6>
											<p class="notification-text font-small-3 text-muted">I
												like your portfolio, let's start.</p>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">Today</time>
											</small>
										</div>
									</div>
							</a> <a href="javascript:void(0)">
									<div class="media">
										<div class="media-left">
											<span class="avatar avatar-sm avatar-busy rounded-circle">
												<img
												src="../../../app-assets/images/portrait/small/avatar-s-2.png"
												alt="avatar"><i></i>
											</span>
										</div>
										<div class="media-body">
											<h6 class="media-heading">Bret Lezama</h6>
											<p class="notification-text font-small-3 text-muted">I
												have seen your work, there is</p>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">Tuesday</time>
											</small>
										</div>
									</div>
							</a> <a href="javascript:void(0)">
									<div class="media">
										<div class="media-left">
											<span class="avatar avatar-sm avatar-online rounded-circle">
												<img
												src="../../../app-assets/images/portrait/small/avatar-s-3.png"
												alt="avatar"><i></i>
											</span>
										</div>
										<div class="media-body">
											<h6 class="media-heading">Carie Berra</h6>
											<p class="notification-text font-small-3 text-muted">Can
												we have call in this week ?</p>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">Friday</time>
											</small>
										</div>
									</div>
							</a> <a href="javascript:void(0)">
									<div class="media">
										<div class="media-left">
											<span class="avatar avatar-sm avatar-away rounded-circle">
												<img
												src="../../../app-assets/images/portrait/small/avatar-s-6.png"
												alt="avatar"><i></i>
											</span>
										</div>
										<div class="media-body">
											<h6 class="media-heading">Eric Alsobrook</h6>
											<p class="notification-text font-small-3 text-muted">We
												have project party this saturday.</p>
											<small> <time class="media-meta text-muted"
													datetime="2015-06-11T18:29:20+08:00">last month</time>
											</small>
										</div>
									</div>
							</a></li>
							<li class="dropdown-menu-footer"><a
								class="dropdown-item text-muted text-center"
								href="javascript:void(0)">Read all messages</a></li>
						</ul></li>
					<li class="dropdown dropdown-user nav-item"><a
						class="dropdown-toggle nav-link dropdown-user-link" href="#"
						data-toggle="dropdown"> <span class="avatar avatar-online">
								<img
								src="../../../app-assets/images/portrait/small/avatar-s-1.png"
								alt=""><i></i>
						</span> <span class="user-name"><%=session.getAttribute("nom")%></span>
					</a>
						<div class="dropdown-menu dropdown-menu-right">
							<a class="dropdown-item" href="user-profile.html"><i
								class="ft-user"></i> Edit Profile</a> <a class="dropdown-item"
								href="email-application.html"><i class="ft-mail"></i> My
								Inbox</a> <a class="dropdown-item" href="user-cards.html"><i
								class="ft-check-square"></i> Task</a> <a class="dropdown-item"
								href="chat-application.html"><i class="ft-message-square"></i>
								Chats</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="login-with-bg-image.html"><i
								class="ft-power"></i> Logout</a>
						</div></li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-12 mb-2"></div>
			</div>
			<div class="content-body">
				<!-- Background color start -->

				<div class="text-center " style="margin-top: 20px;">
					<h2>
						Welcome back,<%=session.getAttribute("nom")%></h2>
				</div>
				<div class="container" style="margin-top:50px;">
					<div class="row">
						<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
						<c:forEach var="listValue" items="${menu}">
							<div class="col-xl-2 col-lg-6 col-12 ">

<!-- Falta poner responsive -->
								<a href="${listValue.url}"
									style="pointer: cursor; text-decoration: none;">
									<div class="card" id="cartita" style="height:220px;">
										<div class="card-content">
											<div class="card-body ">

												<div class="container-fe">
													<img class="img-fluid" src="recursos/images/${listValue.nombre}.svg"
														width=100%;>
												</div>

												<div class="container text-center" style="margin-top:10px;">
												<h4 style="color:#3786C2">${listValue.nombre}</h4>
												</div>
												

											</div>
										</div>
									</div>

								</a>


							</div>



						</c:forEach>












					</div>
				</div>
			</div>
		</div>
	</div>






	<script src="${urlrecursos}/app-assets/vendors/js/vendors.min.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/core/app-menu.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/core/app.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/scripts/customizer.js"
		type="text/javascript"></script>
</body>
</html>
