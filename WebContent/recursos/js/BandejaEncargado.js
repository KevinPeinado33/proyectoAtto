


$(document).ready(function() {
	alert("loquitaaao");
	listar();
	
	
})

function listar() {	
	$.get("mostrarpedidoiglesia",function(data) {		
		
		alert(data);
		
						for ( var i in data) {							
							var a = String(data[i].CODIGO);
							var b = String(data[i].NOMBRE);
							var c = String(data[i].NOM_TIPO);
							$("#contenido")
									.append(
											"<div class='col-md-6 col-sm-12'><div class='card'><div class='card-header'><h4 class='card-title' id='heading-labels'>Wsith Label &amp;Round label</h4><p >28/06/2018 </p><a class='heading-elements-toggle'><iclass='fa fa-ellipsis-v font-medium-3'></i></a></div><div class='card-body'><p class='card-text'  style='margin-top:-30px;'>Add a badge to card with</p><div class='heading-elements'><span class='badge badge-default badge-info'>En espera</span></div></div></div></div>");

						}
					});

}