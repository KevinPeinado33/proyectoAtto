$(document).ready(function() {

	listarpe();

})

var pedidosArray = new Array();

function listarpe() {
	
	$.get("pedidovalidarventas",function(data) {
						for ( var i in data) {						
							$("#tablita tr:last")
									.after(
											"<tr><td>"
													+ data[i].CODIGO
													+ "</td><td>"
													+ data[i].TITULO
													+ "</td><td>"
													+ data[i].FE_CREACION
													+ "</td><td><button type='button' class='btn btn-warning' onclick='validarmodal("
													+ data[i].IDPEDIDO
													+ ")' data-toggle='modal' data-target='#large'>validame</button></td></tr>");
							var obj = new Object();
							obj.idpe = data[i].IDPEDIDO;
							obj.codigo = data[i].CODIGO;
							obj.titulo = data[i].TITULO;
							obj.descri = data[i].DESCRIPCION;
							pedidosArray.push(obj);

						}

					});

}

function validarmodal(a) {
	ponerTitulo(a);
	$.get("detallepedido",{
						idpedido : a
					      },
					function(data) {
					    	    $("#tablita2").find("tr:gt(0)").remove();
					
					    	 for ( var i in data) {
							// d.iddetallepedido,d.cantidad,pro.codigo,pro.nom_producto
							$("#tablita2 tbody")
									.append(
											" <tr><td hidden>"
													+ data[i].IDDETALLEPEDIDO
													+ "</td><td style='padding-top:20px;'>"
													+ data[i].CODIGO
													+ "</td><td style='padding-top:20px;'>"
													+ data[i].NOM_PRODUCTO
													+ "</td><td style='padding-top:20px;'>"
													+ data[i].CANTIDAD
													+ "</td><td style='padding-top:-30px;'><div class='custom-control custom-checkbox my-1 mr-sm-2' style='margin-top:-10px;'><input type='checkbox' style='margin-top:-20px;' class='custom-control-input' id='chec"
													+ data[i].IDDETALLEPEDIDO
													+ "'><label class='custom-control-label' for='chec"
													+ data[i].IDDETALLEPEDIDO
													+ "'></label></div></td></tr>");

						}

					});
}

function ponerTitulo(b) {

}

function validarpedido(){
	alert('maincraaa');
	var a=0;
	$('#tablita2 tbody tr').each(function () {

		 var 	pk = $(this).find("td").eq(0).html();
		var nombre = $(this).find("td").eq(1).html();
		var apellidos = $(this).find("td").eq(3).html();

		alert(pk);
		if( $("#chec"+pk+"").is(':checked') ) {
		    alert('Completo:estado1');		 
		}else{
			alert('incompleto:estado 2');
			a=a+1;
		}
			
		});
	
	
	
	if(a>0){
		alert("El pedido esta incompleto:Estado pedido:faltante");
	}else{
		alert("El pedido esta completo:Estado de pedido completo");
		a=0;
	}
	
	
}