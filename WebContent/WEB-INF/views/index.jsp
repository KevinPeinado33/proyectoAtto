<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>


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
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/core/colors/palette-gradient.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:700"
	rel="stylesheet">

<style>
body {
	font-family: 'Open Sans', sans-serif;
	background-image: url("recursos/images/fondo.jpg");
	/* The image used */
	background-position: center; /* Center the image */
	background-repeat: no-repeat; /* Do not repeat the image */
	background-size: cover;
	/* Resize the background image to cover the entire container */
}
</style>
</head>


<!-- 
	<section class="material-half-bg">
		<div class="cover"></div>
	</section>
	<section class="login-content">
		<div class="logo">
			<h1>VUELVE PORFAVORr :(</h1>
		</div>
		<div class="login-box">
			<form class="login-form" action="home" method="post">
				<h3 class="login-head">
					<i class="fa fa-lg fa-fw fa-user"></i>INICIAR SESION
				</h3>
				<div class="form-group">
					<label class="control-label">USERNAME</label> <input
						class="form-control" type="text" placeholder="Email" autofocus>
				</div>
				<div class="form-group">
					<label class="control-label">PASSWORD</label> <input
						class="form-control" type="password" placeholder="Password">
				</div>
				<div class="form-group">
					<div class="utility">
						<div class="animated-checkbox">
							<label> <input type="checkbox"><span
								class="label-text">Stay Signed in</span>
							</label>
						</div>
						<p class="semibold-text mb-2">
							<a href="#" data-toggle="flip">Forgot Password ?</a>
						</p>
					</div>
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block">
						<i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN
					</button>
				</div>
			</form>
			<form class="forget-form" action="index.html">
				<h3 class="login-head">
					<i class="fa fa-lg fa-fw fa-lock"></i>Forgot Password ?
				</h3>
				<div class="form-group">
					<label class="control-label">EMAIL</label> <input
						class="form-control" type="text" placeholder="Email">
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block">
						<i class="fa fa-unlock fa-lg fa-fw"></i>RESET
					</button>
				</div>
				<div class="form-group mt-3">
					<p class="semibold-text mb-0">
						<a href="#" data-toggle="flip"><i
							class="fa fa-angle-left fa-fw"></i> Back to Login</a>
					</p>
				</div>
			</form>
		</div>
	</section>
	
	-->

<body
	class="vertical-layout vertical-menu 1-column   menu-expanded blank-page blank-page"
	data-open="click" data-menu="vertical-menu" data-col="1-column">
	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row"></div>
			<div class="content-body">
				<section class="flexbox-container">
					<div
						class="col-12 d-flex align-items-center justify-content-center">


						<div class="col-md-4 col-4 box-shadow-2 p-0">
							<div class="card border-grey border-lighten-3 m-0"
								style="height: 550px;">

								<div class="card-content">
									<div class="card-body">
										<div class="row">



											<div class="col-xl-12 col-lg-12 col-md-12 mb-1">


												<div class="container-fluid"
													style="width: 75%; padding-top: 50px;">


													<h2 style="font-weight: bold">Hola!</h2>
													<p style="font-size: 12px; color: #BFC5CC;">Bienvenido
														al sistema de solicitudes Atto.Porfavor ingrese los datos
														solicitados</p>

													<form action="home" method="post">

														<fieldset class="form-group" style="margin-top: 50px;">
															<label for="titulo" class="bmd-label-floating"
																style="font-size: 13px;">Usuario:</label> <input
																type="text" class="form-control" name="uss"
																placeholder="">




														</fieldset>






														<fieldset class="form-group">
															<label for="titulo" class="bmd-label-floating"
																style="margin-top: 13px; font-size: 13px;">Contraseña:</label>
															<input type="password" class="form-control" id="contra"
																name="coo" placeholder="">




														</fieldset>


														<div class="container center-block" align="center"
															style="margin-top: 60px;">
															<input type="submit"
																class="btn btn-min-width mr-1 mb-1 text-white"
																style="font-weight: bold; height: 50px; width: 110%; margin-left: -20px; background-color: #55A8FD"
																value="Ingresar">



														</div>



													</form>


												</div>


											</div>





										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>















	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<!-- BEGIN VENDOR JS-->
	<script src="${urlrecursos}/app-assets/vendors/js/vendors.min.js"
		type="text/javascript"></script>
	<!-- BEGIN VENDOR JS-->
	<!-- BEGIN PAGE VENDOR JS-->
	<script
		src="${urlrecursos}/app-assets/vendors/js/forms/icheck/icheck.min.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"
		type="text/javascript"></script>
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN STACK JS-->
	<script src="${urlrecursos}/app-assets/js/core/app-menu.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/core/app.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/scripts/customizer.js"
		type="text/javascript"></script>
	<!-- END STACK JS-->
	<!-- BEGIN PAGE LEVEL JS-->
	<script
		src="${urlrecursos}/app-assets/js/scripts/forms/form-login-register.js"
		type="text/javascript"></script>

	<script>
		$(document).ready(function() {

		})
	</script>

</body>
</html>