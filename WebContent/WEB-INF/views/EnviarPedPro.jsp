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

<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/vendors/css/tables/datatable/datatables.min.css">

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
<link rel="stylesheet" type="text/css"
	href="${urlrecursos}/app-assets/vendors/css/tables/datatable/datatables.min.css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<style>
body {
	font-family: 'Raleway', sans-serif;
}
</style>

</head>
<body
	class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar"
	data-open="click" data-menu="vertical-menu" data-col="2-columns">
	<!-- fixed-top-->
	<jsp:include page="template/IglesiaCabecera.jsp"></jsp:include>

	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-12 mb-2">
					<h3 class="content-header-title mb-0">Mi Bandeja</h3>
					
				</div>

			</div>
			<div class="content-body">
				<!-- DOM - jQuery events table -->
				<section id="dom">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Lista de Pedidos por Enviar</h4>
								<a class="heading-elements-toggle"><i
									class="fa fa-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">
										<li><a data-action="collapse"><i class="ft-minus"></i></a></li>
										<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
										<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
										<li><a data-action="close"><i class="ft-x"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="card-content collapse show">
								<div class="card-body card-dashboard">


									<ul class="nav nav-tabs nav-underline">
										<li class="nav-item"><a class="nav-link active"
											id="homeIcon1-tab1" data-toggle="tab" href="#homeIcon11"
											aria-controls="homeIcon11" aria-expanded="true"><i
												class="fa fa-envelope-o"></i>Pendientes</a></li>
										<li class="nav-item"><a class="nav-link "
											id="profileIcon1-tab1" data-toggle="tab"
											href="#profileIcon11" aria-controls="profileIcon11"
											aria-expanded="false"><i class="fa fa-envelope-open"></i>Procesados</a>
										</li>


									</ul>
									<div class="tab-content px-1 pt-1">
										<div role="tabpanel" class="tab-pane active in" id="homeIcon11"
											aria-labelledby="homeIcon1-tab1" aria-expanded="true">



											<div class="container" style="margin-top:20px;">
												<div class="table-responsive">
													<table class="table" id="tabs">
														<thead>
															<tr>
																<th>Estado</th>
																<th>Pedido N°</th>
																<th>Nombre Sucursal</th>
																<th>Cantidad</th>
																<th>Acciones</th>
															</tr>
														</thead>
														<tbody>
															<th></th>
															<th></th>
															<th></th>
															<th></th>
															<th><li><button class="btn bg-blue bg-accent-1 round"
												data-toggle="modal" data-target="#modalcito"
												style="color: white">
												<i class="fa fa-plus"></i>
											  Ver</button></li></th>
															
														</tbody>
													</table>
												</div>
												<div class="modal fade text-left" id="modalcito" tabindex="-1"
													role="dialog" aria-labelledby="myModalLabel17"
													aria-hidden="true">
													<div class="modal-dialog modal-lg" role="document">
														<div class="modal-content">
															<div class="modal-header">
																<h4 class="modal-title" id="myModalLabel17">Productos</h4>
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">
																<p>Listado de Productos </p>
																<hr>
																<div class="container">

																	<div class="table-responsive">
																		<table class="table" id="tabPed">
																			<thead>
																				<tr>
																					<th>Codigo</th>
																					<th>Nombre</th>																																							
																					<th>Cantidad</th>
																					<th></th>
																				</tr>
																			</thead>
								
																		</table>
																	</div>


																</div>

															</div>

														</div>
													</div>
												</div>
											</div>




										</div>
										<div class="tab-pane " id="profileIcon11"
											role="tabpanel" aria-labelledby="profileIcon1-tab1"
											aria-expanded="false">
											
											
											<div class="container" style="margin-top:20px;">
												<div class="table-responsive">
													<table class="table" id="tabs1">
														<thead>
															<tr>
																<th>Estado</th>
																<th>Pedido N°</th>
																<th>Nombre Sucursal</th>
																<th>Cantidad</th>
																<th>Acciones</th>
															</tr>
														</thead>
														<tbody>

														</tbody>
													</table>
												</div>

											</div>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- DOM - jQuery events table -->
				<!-- Column rendering table -->

				<!-- File export table -->
			</div>
		</div>
	</div>
	<!-- BEGIN VENDOR JS-->
	<script src="${urlrecursos}/app-assets/vendors/js/vendors.min.js"
		type="text/javascript"></script>
	<!-- BEGIN VENDOR JS-->
	<!-- BEGIN PAGE VENDOR JS-->
	<script
		src="${urlrecursos}/app-assets/vendors/js/tables/datatable/datatables.min.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/tables/buttons.flash.min.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/vendors/js/tables/jszip.min.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/tables/pdfmake.min.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/vendors/js/tables/vfs_fonts.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/tables/buttons.html5.min.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/tables/buttons.print.min.js"
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

	<!-- END PAGE LEVEL JS-->
</body>
</html>