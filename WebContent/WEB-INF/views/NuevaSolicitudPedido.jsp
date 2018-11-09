<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atto Proyect</title>

<spring:url value="/recursos" var="urlrecursos"></spring:url>
<link href="${urlrecursos}/app-assets/css/vendors.min.css"
	rel="stylesheet">
<link rel="apple-touch-icon"
	href="${urlrecursos}/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${urlrecursos}/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/vendors.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/app.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/css/core/colors/palette-gradient.css">
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/assets/css/style.css">
 
</head>

<body
	class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar"
	data-open="click" data-menu="vertical-menu" data-col="2-columns">

	<jsp:include page="template/IglesiaCabecera.jsp"></jsp:include>
	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-12 mb-2">
					<h3 class="content-header-title mb-0">Realizar Solicitud</h3>						
					<div class="row breadcrumbs-top">
						<div class="breadcrumb-wrapper col-12">
							<ol class="breadcrumb">								
								<li class="breadcrumb-item"><a href="#">Menu</a></li>
								<li class="breadcrumb-item active">Nueva Solicitud</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<div class="content-body">
				<div class="col-md-6 col-sm-12">
              <div class="card text-white box-shadow-0 bg-gradient-y-success">
                <div class="card-header">
                  <h4 class="card-title">Vertical Gradient</h4>
                  <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                  <div class="heading-elements">
                    <ul class="list-inline mb-0">
                      <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                      <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                      <li><a data-action="close"><i class="ft-x"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="card-content collapse show">
                  <div class="card-body">
                    <p class="card-text">Use <code>.bg-gradient-y-*</code> class for vertical gradient.</p>
                    <p class="card-text">Oat cake ice cream candy chocolate cake chocolate cake cotton
                      candy dragée apple pie. Brownie carrot cake candy canes bonbon
                      fruitcake topping halvah. Cake sweet roll cake cheesecake cookie
                      chocolate cake liquorice. Apple pie sugar plum powder donut
                      soufflé.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>

			</div>
		</div>
	</div>



	<footer class="footer footer-static footer-dark navbar-border">
	<p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2">
		<span class="float-md-left d-block d-md-inline-block">Copyright
			&copy; 2018 <a class="text-bold-800 grey darken-2"
			href="https://themeforest.net/user/pixinvent/portfolio?ref=pixinvent"
			target="_blank">PIXINVENT </a>, All rights reserved.
		</span> <span
			class="float-md-right d-block d-md-inline-block d-none d-lg-block">Hand-crafted
			& Made with <i class="ft-heart pink"></i>
		</span>
	</p>
	</footer>



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