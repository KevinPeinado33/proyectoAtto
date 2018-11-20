$(document).ready(function() {
listar();
})
function listar() {	
	$.post("detallepedidovalida",function(data) {						
						for ( var i in data) {	
							alert(data);
							$("#tablita")
									.append(
											"<tr><td>"
													+ data[i].IDDETALLEPEDIDO
													+ "</td><td>"+data[i].NOMBRE+"</td><td>"
													+ data[i].CANTIDAD
													+ "</td><td  style='max-width:30px;'><input type='text' class='form-control' id='input" 
													+ data[i].IDDETALLEPEDIDO
													+ "'></td></tr>");
						}
					});
}



function validar(){	
	$('#tablita tbody tr').each(function() {
		var pk = $(this).find("td").eq(0).html();	
		var input = $("#input" + pk + "").val();	
		alert(pk);
		alert(input);
	});
}

