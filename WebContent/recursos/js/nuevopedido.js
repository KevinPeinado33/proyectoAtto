/**
 * 
 */
$(document).ready(function() {
	listar();
   
})

var ProductosSolicitados = new Array();

function listar() {
alert("llegue a listarrr");
	$.get("listarProductos",function(data) {
		alert(data);
		
						for ( var i in data) {
							alert(data[i].NOMBRE);
							/*
							var a = String(data[i].CODIGO);
							var b = String(data[i].NOM_PRODUCTO);
							$("#tablita tr:last").after(
											"<tr><td>"
													+ data[i].CODIGO
													+ "</td><td>"
													+ data[i].NOM_PRODUCTO
													+ "</td><td><input type='text' class='form-control' id='input"
													+ data[i].IDPRODUCTO
													+ "'></td><td><button type='button' class='btn btn-warning' onclick='seleccionar(\""
													+ a
													+ "\",\""
													+ b
													+ "\", "
													+ data[i].IDPRODUCTO
													+ ")'>"
													+ "Seleccionar Producto</button></td></tr>");
													*/
						 }
	});
	
	
	
}
/*
function seleccionar(a, b, id_pro) {
	var input = $("#input" + id_pro + "").val();
	
	if(input===''){
		alert("Por favor ingrese la cantidad");
	}else{
		

		if (ProductosSolicitados.length > 0) {
			var i = 0;
			var si = 1;
			while (i < ProductosSolicitados.length) {
				if (ProductosSolicitados[i].idpro === id_pro) {
					alert("Producto ya en lista");
					i = listaReservados.length;
					si = null;
				}
				i++;
			}
			if (si !== null) {
				//cambiar despues
				var obj = new Object();
				obj.idpro = id_pro;
				obj.nom = a;
				obj.cod = b;
				obj.cant = input;
				ProductosSolicitados.push(obj);
				listarArray();			
				si = 1;
			}
		} else {
			//cambiar despues
			var obj = new Object();
			obj.idpro = id_pro;
			obj.nom = a;
			obj.cod = b;
			obj.cant = input;
			ProductosSolicitados.push(obj);
			listarArray();
		}
		
		
		
	}
	
	
}

function listarArray() {
	$('#tablita2 tbody tr').remove();
	
	for (var i = 0; i < ProductosSolicitados.length; i++) {
		$("#tablita2").append(
						"<tr><td>"
								+ ProductosSolicitados[i].nom
								+ "</td><td>"
								+ ProductosSolicitados[i].cod
								+ "</td><td>faltatiposelect</td><td>"
								+ ProductosSolicitados[i].cant
								+ "</td><td><button type='button' class='btn btn-danger' onclick='eliminar("
								+ i
								+ ")'><i class='fa fa-trash-o'></i></button></td>" +
						"</tr>");
	}

}

function eliminar(a){
	alert(a);
	ProductosSolicitados.splice(a, 1);
	listarArray();
}	

function pedido(){
	var titu = $("#titulo").val();
	var descri = $("#descripcion").val();
	alert("esto es titulo");

}


function obtenerdatos(){
alert("llego");
	$('#tablita2 tbody tr').each(function () {

	var pk = $(this).find("td").eq(0).html();
	var nombre = $(this).find("td").eq(1).html();
	var apellidos = $(this).find("td").eq(3).html();

	alert(pk);
	
		
	});
}

function prueba10(){
	
	if( $('#switchery').is(':checked') ) {
	    alert('Seleccionado');
	}else{
		alert('nel');
	}
		
}
*/
