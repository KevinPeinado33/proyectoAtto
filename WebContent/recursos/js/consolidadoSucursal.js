$(document).ready(function() {
	
	
	
	
	listarpe();
})




function listarpe() {
	$.get("mostrarpeSu",function(data) {
		alert(data);
		$('#tablita tbody tr').remove();							
		for ( var i in data) {					
							$("#tablita")
									.append(
											"<tr><td hidden>"+data[i].IDDETALLE_PEDIDO+"</td><td style='padding-top:20px;'>"
													+ data[i].CODIGO
													+ "</td><td style='padding-top:20px;'>"
													+ data[i].NOM_PRO+"</td><td>"+data[i].CANT+"</td><td style='padding-top:15px;'><button type='button' style='width:80%;font-weight:600;' class='btn btn-blue text-white' onclick='validarmodal(\"" 
													+ data[i].IDDETALLE_PEDIDO
													+ "\")' data-toggle='modal' data-target='#default'>Validar</button></td></tr>");
						

						}

				
					});

}

function validarmodal(a){
	alert(a);
}

function nueva(){
	$("#funcion1").toggle();
}
