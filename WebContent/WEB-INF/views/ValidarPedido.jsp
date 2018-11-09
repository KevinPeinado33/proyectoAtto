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
	href="${urlrecursos}/app-assets/vendors/css/forms/toggle/switchery.min.css">
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

<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<style>
body {
	font-family: 'Raleway', sans-serif;
}
</style>
<body
	class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar"
	data-open="click" data-menu="vertical-menu" data-col="2-columns">

	<jsp:include page="template/VentasCabecera.jsp"></jsp:include>

	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-12 mb-2">
					<h3 class="content-header-title mb-0">
						<i class="fa fa-plus-circle" style="margin-right: 8px;"></i>Validar
						Pedido
					</h3>
					<div class="row breadcrumbs-top">
						<div class="breadcrumb-wrapper col-12">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Menu</a></li>
								<li class="breadcrumb-item active">Validar Pedido</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<div class="content-body">

				<section id="card-actions">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">

								<div class="card-tittle">

									<h4>
										<i class="fa fa-file-text" style="margin-right: 8px;"> </i>Lista
										Pedidos
									</h4>

								</div>

								<a class="heading-elements-toggle"><i
									class="fa fa-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements"></div>
							</div>

							<div class="card-content collapse show"
								style="margin-top: -15px;">
								<div class="card-body">
									<div class="row">



										<div class="container" style="margin-top: -18px;">


											<div class="table-responsive">
												<table class="table" id="tablita">
													<thead>
														<tr>
															<th>Código</th>
															<th>Titulo</th>
															<th>Fecha Creación</th>
															<th>Validar</th>
														</tr>
													</thead>
													<tbody>

													</tbody>
												</table>
											</div>


										</div>
										<div class="modal fade text-left" id="large" tabindex="-1"
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
														<p>*Puede buscar los productos solicitados.No olvide
															poner la cantidad del producto solicitado</p>
														<hr>



														<div class="container">

															<div class="row"></div>





															<div class="container" style="margin-top: -18px;">


																<div class="table-responsive">
																	<table class="table" id="tablita2">
																		<thead>
																			<tr>
																				<th>Código</th>
																				<th>Nombre</th>
																				<th>Cantidad</th>
																				<th>Completo/Faltante</th>
																			</tr>
																		</thead>
																		<tbody>

																		</tbody>
																	</table>
																</div>


															</div>


															<div class="container float-right">
															
															<button type="button" class="btn btn-danger btn-round mr-1 mb-1" onclick='validarpedido()'>Validar Pedido</button>
															</div>




														</div>

													</div>
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







	<script src="${urlrecursos}/app-assets/vendors/js/vendors.min.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/forms/toggle/bootstrap-checkbox.min.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/forms/toggle/switchery.min.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/core/app-menu.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/core/app.js"
		type="text/javascript"></script>
			<script src="${urlrecursos}/js/validarpedido.js" type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/scripts/customizer.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/scripts/forms/switch.js"
		type="text/javascript"></script>


</body>
</html>