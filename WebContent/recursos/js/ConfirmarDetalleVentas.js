$(document).ready(function() {

	listar();
})

var  pedidos= new Array();


function listar() {
	$
			.get(
					"mostrarfaltantes",
					function(data) {
						for ( var i in data) {

							$("#tablita")
									.append(
											"<tr><td hidden>"
													+ data[i].IDPEDIDO
													+ "</td><td hidden>"
													+ data[i].IDDETALLE_PEDIDO
													+ "</td><td>"
													+ data[i].CODIGO
													+ "</td><td>"
													+ data[i].CODIGO_PRO
													+ "</td><td>"
													+ data[i].NOM_PRO
													+ "</td><td>"
													+ data[i].CANTIDAD
													+ "</td><td  style='width:30%;'><input type='text' value='"
													+ data[i].CANTIDAD
													+ "' style='width:30%;' class='form-control'  id='input"
													+ data[i].IDDETALLE_PEDIDO
													+ "'></td></tr>");

						}

					});
}
var i = 0;

function validar() {
	alert("validara");

	$("#tablita tbody tr").each(function() {
		var idpedido = $(this).find("td").eq(0).html();
		var iddetalle = $(this).find("td").eq(1).html();
		var cantidad = $(this).find("td").eq(5).html();
	    var input = $("#input" + iddetalle + "").val();
		if (input > cantidad) {
			i = i + 1;
		}
	});
	validar_a();	
}

function validar_a(){
	
	if(i==0){
		alert("muy bien");
		i=0;
	}else{
		alert("nel perro");
		i=0;
		
	}
	data();
	
}

function datos_a(){
	
	$("#tablita tbody tr").each(function() {
		var idpedido = $(this).find("td").eq(0).html();
		var iddetalle = $(this).find("td").eq(1).html();			
		var input = $("#input" + iddetalle + "").val();					
	});
}

function data(){
	
	$("#tablita tbody tr").each(function() {
		var idpedido = $(this).find("td").eq(0).html();
		var i = 0;
		var si = 1;
		if(pedidos.length > 0){
			while (i < pedidos.length) {
				if (pedidos[i].idpro === idpedido) {																													
					i =  ProductosSolicitados.length;
					si = null;
				}else{
					var obj = new Object();			
					obj.idped = idpedido;									
					pedidos.push(obj);	
				}
				i++;
			}
		}else{
			var obj = new Object();			
			obj.idped = idpedido;									
			pedidos.push(obj);	
		}
			
	});
	alert(pedidos);
	
}



