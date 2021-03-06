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

	<jsp:include page="template/Trabajador.jsp"></jsp:include>

	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-12 mb-2">
					<h3 class="content-header-title mb-0">Realizar Consolidado</h3>
					<div class="row breadcrumbs-top">
						<div class="breadcrumb-wrapper col-12">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Menu</a></li>
								<li class="breadcrumb-item active">Realizar Consolidado</li>
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
										<i class="fa fa-file-text" style="margin-right: 8px;"> </i>Realizar
										Consolidado
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



										<div class="container" style="margin-top: 18px;">


											<div class="table-responsive">
												<table class="table" id="tablita">
													<thead>
														<tr>
															<th>C�digo Producto</th>
															<th>Nombre Producto</th>
															<th>Cantidad Faltante</th>
															<th>Acciones</th>
														</tr>
													</thead>
													<tbody>
														<tr>

														</tr>
													</tbody>
												</table>
											</div>


										</div>



										<div class="container pull-right" style="margin-top: 5px;">
											<button type="button" onclick="validar();"
												class="btn btn-blue round btn-min-width mr-1 mb-1 float-right">
												Guardar<i class="fa fa-chevron-right"
													style="margin-left: 10px;"></i>
											</button>
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





	<!-- Modal -->
	<div class="modal fade text-left" id="default" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true" >
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width:650px;height:400px;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel1">Productos
						Solicitados</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" >
					<button type="button" onclick="nueva()"
						class="btn btn-blue round btn-min-width mr-1 mb-1">Nueva
						Sucursal</button>
					<div class="row" style="margin-top: 50px;">
						<div class="col-sm-3">
							<fieldset class="form-group">
								<label for="servicio" class="bmd-label-floating">Sucursal</label>
								<select required="required" class="form-control" name="servicio"
									id="servicio">
									<option value="" selected="selected"></option>
									<option value="1">Lima-Norte</option>
									<option value="2">Trujillo</option>
								</select>
							</fieldset>
						</div>




						<div class="col-sm-2">

							<fieldset class="form-group"
								style="margin-top: 14px; width: 60px;">
								<label for="titulo" class="bmd-label-floating">cantidad</label>
								<input type="text" class="form-control" id="nomp">
							</fieldset>
						</div>

						<div class="col-sm-4">
							<fieldset>
                          <h5>Fecha
                          </h5>
                          <div class="form-group">
                            <input type="text" class="form-control date-inputmask" id="date-mask" placeholder="Enter Date"
                            />
                          </div>
                        </fieldset>
                        <fieldset>
						</div>
						
						<div class="col-sm-3">								
							<button type="button" onclick="validar();" style="margin-top: 15px;"
												class="btn btn-blue btn-min-width mr-1 mb-1 float-right">
												Guardar
 							</button>														
						</div>
					</div>
					
					
					
					<div  id="funcion1" style="margin-top: 50px;">
					
					
					<div class="row" >
					
					
					<div class="col-sm-3">
							<fieldset class="form-group">
								<label for="servicio" class="bmd-label-floating">Sucursal</label>
								<select required="required" class="form-control" name="servicio"
									id="servicio">
									<option value="" selected="selected"></option>
									<option value="1">Lima-Norte</option>
									<option value="2">Trujillo</option>
								</select>
							</fieldset>

					</div>




						<div class="col-sm-2">
							<fieldset class="form-group"
								style="margin-top: 14px; width: 60px;">
								<label for="titulo" class="bmd-label-floating">cantidad</label>
								<input type="text" class="form-control" id="nomp">
							</fieldset>
						</div>

						<div class="col-sm-4">
							<fieldset>
                          <h5>Fecha 
                          </h5>
                          <div class="form-group">
                            <input type="text" class="form-control date-inputmask" id="date-mask" placeholder="Enter Date"
                            />
                          </div>
                        </fieldset>
                        <fieldset>
						</div>
						
						<div class="col-sm-3">								
							<button type="button" onclick="validar();" style="margin-top: 15px;"
												class="btn btn-blue btn-min-width mr-1 mb-1 float-right">
												Guardar
 							</button>														
						</div>													
					</div>
					
					
					
					</div>
					
				</div>



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
	<script src="${urlrecursos}/app-assets/js/scripts/customizer.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/app-assets/js/scripts/forms/switch.js"
		type="text/javascript"></script>
	<script src="${urlrecursos}/js/consolidadoSucursal.js"
		type="text/javascript"></script>


</body>
</html>