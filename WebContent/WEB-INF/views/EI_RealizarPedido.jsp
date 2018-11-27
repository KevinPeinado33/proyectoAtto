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


<style>
body {
	font-family: 'Montserrat', sans-serif;
}
</style>
</head>

<body
	class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar"
	data-open="click" data-menu="vertical-menu" data-col="2-columns">

	<jsp:include page="template/IglesiaCabecera.jsp"></jsp:include>
	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-12 mb-2">
					<h3 class="content-header-title mb-0">
						   <a href="#" class="btn btn-social-icon mr-1 mb-1 btn-dropbox" style="margin-right:15px;padd">
                            <span class="fa fa-clipboard font-medium-3"></span>
                          </a>Realizar Pedido
					</h3>
					<div class="row breadcrumbs-top">
						<div class="breadcrumb-wrapper col-12">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Menu</a></li>
								<li class="breadcrumb-item active">Realizar Pedido</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<div class="content-body">




				<section id="card-actions" style="margin-top:25px;">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header ">

								<div class="card-tittle">

									<h4>
										<i class="ft ft-clipboard" style="margin-right: 8px;"> </i>Datos
										Generales
									</h4>

								</div>

								<a class="heading-elements-toggle"><i
									class="fa fa-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements"></div>
							</div>

							<div class="card-content collapse show"
								style="margin-top: -10px;">
								<div class="card-body">
									<div class="row">


										<div class="col-xl-5 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="titulo" class="bmd-label-floating">Titulo
													de Pedido</label> <input type="text" class="form-control"
													id="titulo"> <span class="bmd-help">We'll
													never share your email with anyone else.</span>
											</fieldset>
										</div>
										<div class="col-xl-7 col-lg-8 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="Descripcion" class="bmd-label-floating">Descripcion
													de pedido</label> <input type="text" class="form-control"
													id="descripcion"> <span class="bmd-help">We'll
													never share your email with anyone else.</span>
											</fieldset>
										</div>





									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				</section>





				<section id="card-actions">
				<div class="row">
					<div class="col-lg-12 col-md-6 col-sm-12">
						<div class="card">
							<div class="card-header">

								<div class="card-tittle">
									<h4>
										<i class="fa fa-table" style="margin-right: 8px;"></i>Productos
										Solicitados
									</h4>

								</div>

								<a class="heading-elements-toggle"><i
									class="fa fa-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">

										<li><button class="btn bg-blue bg-accent-1 round"
												data-toggle="modal" data-target="#large"
												style="color: white">
												<i class="fa fa-plus"></i>
											</button></li>
									</ul>
								</div>
							</div>

							<div class="card-content collapse show" style="margin-top: 10px;">
								<div class="card-body">
									<div class="row">



										<div class="col-lg-4 col-md-6 col-sm-12">
											<div class="form-group">


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

																	<div class="row">
																		<div class="col-xl-4 col-lg-6 col-md-12">
																			<fieldset class="form-group">
																			<label for="servicio" class="bmd-label-floating">Tipo Producto</label>
																				<select
																					required="required" class="form-control"
																					name="servicio" id="servicio">
																					<option value="" selected="selected"></option>
																					<option value="1">Uniformes</option>
																					<option value="2">Libros</option>
																				</select>
																			</fieldset>
																		</div>
																		<div class="col-xl-8 col-lg-8 col-md-12 mb-1">
																			<fieldset class="form-group" style="margin-top:14px;">
																				<label for="titulo" class="bmd-label-floating">Buscar producto</label> <input type="text" class="form-control"
																					id="nomp"> <span class="bmd-help">We'll
																					never share your email with anyone else.</span>
																			</fieldset>
																		</div>

																	</div>

																</div>
																<div class="container ">


																	<div
																		class="table-responsive vertical-scroll height-400">
																		<table class="table" id="tablita">
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

										<div class="container" style="margin-top: -18px;">


											<div class="table-responsive ">
												<table class="table" id="tablita2">
													<thead>
														<tr>
															<th>Código</th>
															<th>Tipo</th>
															<th>Nombre</th>
															<th class="col-2">Cantidad</th>
															<th></th>
														</tr>
													</thead>
													<tbody>

													</tbody>
												</table>
												<div id="imagen"></div>

											</div>


										</div>





									</div>
								</div>
							</div>





						</div>
						<div class="container pull-right" style="margin-top: 5px;">
							<button type="button" onclick="obtenerdatos();" style="heigth:40%;"
								class="btn btn-blue btn-min-width mr-1 mb-1 float-right">
								Aceptar<i class="fa fa-chevron-right" style="margin-left: 10px;"></i>
							</button>
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
		src="${urlrecursos}/app-assets/vendors/js/extensions/sweetalert.min.js"
		type="text/javascript"></script>
	<script
		src="${urlrecursos}/app-assets/vendors/js/forms/toggle/bootstrap-checkbox.min.js"
		type="text/javascript"></script>

	<script src="${urlrecursos}/app-assets/js/core/app-menu.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/core/app.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/scripts/customizer.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/scripts/ui/scrollable.js"
		type="text/javascript"></script>

	<script src="${urlrecursos}/app-assets/js/scripts/forms/switch.js"
		type="text/javascript"></script>

	<script
		src="${urlrecursos}/app-assets/vendors/js/extensions/toastr.min.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/js/JS_RealizarPedido.js" type="text/javascript"></script>

</body>
</html>