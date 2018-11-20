
$(document).ready(function() {
	listar();
	
	
})

var ProductosSolicitados = new Array();
var listasReservado = new Array();
function listar() {	
	$.post("listarProductos",function(data) {						
						for ( var i in data) {							
							var a = String(data[i].CODIGO);
							var b = String(data[i].NOMBRE);
							var c = String(data[i].NOM_TIPO);
							$("#tablita tr:last")
									.after(
											"<tr><td hidden>"+data[i].TIPO_PRODUCTO_IDTIPO+"</td><td>"
													+ data[i].CODIGO
													+ "</td><td>"
													+ data[i].NOMBRE
													+ "</td><td  style='max-width:30px;'><input type='text' class='form-control'  id='input" 
													+ data[i].IDPRODUCTO
													+ "'></td><td ><button type='button' class='btn btn-success text-white'  onclick='seleccionar(\""
													+ a
													+ "\",\""
													+ b												
													+ "\",\""
													+ c
													+ "\", "
													+ data[i].IDPRODUCTO
													+ ")'>"
													+ "<i class='fa fa-location-arrow '></i></button></td></tr>");

						}
					});

}

function seleccionar(a,b,c,id_pro) {

	var input = $("#input" + id_pro + "").val();	
	if (input === '') {		
		cant_faltante();
								
	} else {
		if (ProductosSolicitados.length > 0) {
			var i = 0;
			var si = 1;
			while (i < ProductosSolicitados.length) {
				if (ProductosSolicitados[i].idpro === id_pro) {					
					pro_enlista();																					
					i =  ProductosSolicitados.length;
					si = null;
				}
				i++;
			}
			if (si !== null) {						
				llenarobjeto(id_pro,b,a,c,input)	
				pro_selecionado();
				listarArray();
				si = 1;
			}
		} else {			
			llenarobjeto(id_pro,b,a,c,input)
			pro_selecionado();			
			listarArray();
		}
	}
	
}

function listarArray() {	
	$('#tablita2 tbody tr').remove();
	for (var i = 0; i < ProductosSolicitados.length; i++) {		
		$("#tablita2")
				.append(
						"<tr><td hidden>"
								+ ProductosSolicitados[i].idpro
								+ "</td><td>"
								+ ProductosSolicitados[i].cod
								+ "</td><td><div class='badge badge-success' style='height:20px;font-size:12px;'>"+ProductosSolicitados[i].tip+"</div></td><td>"
								+ ProductosSolicitados[i].nom
								+ "</td><td>"
								+ ProductosSolicitados[i].cant
								+ "</td><td><button type='button' class='btn btn-danger text-white' onclick='eliminar("
								+ i
								+ ")'><i class='fa fa-bitbucket'></i></button></td>"
								+ "</tr>");
	}

}

function eliminar(a) {
	
	ProductosSolicitados.splice(a, 1);
	toastr.error("Producto Eliminado",
			"",
			{
		positionClass : "toast-top-right",
		containerId : "toast-top-right",
		        showMethod : "slideDown",
				hideMethod : "slideUp",
				timeOut : 2e3
			})	
	listarArray();
}

function pedido() {

	alert("esto es titulo");

}

function obtenerdatos() {
	var titu = $("#titulo").val();
	var descri = $("#descripcion").val();	
	/*
	$('#tablita2 tbody tr').each(function() {
		var pk = $(this).find("td").eq(0).html();		
		alert(pk);
	});
	*/	
	if(titu==="" || descri==="" ||ProductosSolicitados.length===0){
		toastr.warning("Por favor complete todos los datos",				
				{
			positionClass : "toast-top-right",
			containerId : "toast-top-right",
			        showMethod : "slideDown",
					hideMethod : "slideUp",
					timeOut : 2e3
				})
						
								
	}else{
		$.post("guardarPedido",{titulo:titu,descripcion:descri,idsucursal:1,idencargado:1}, function (data) {    						
			Detallepedido(data.IDI);
			/*
			for ( var i in data) {
			alert(data[i].IDI);
			}
			*/					
	    });			
	}				
}



function Detallepedido(a){	
	var prod = JSON.stringify(ProductosSolicitados);
	var proa = JSON.stringify(a);	
	$.post("guardarDetallePedido", {list:prod,idp:proa}, function (data) {
        alert(data);
});	
}

function llenarobjeto(id_pro,b,a,c,input){
	var obj = new Object();			
	obj.idpro = id_pro;
	obj.nom = b;
	obj.cod = a;
	obj.tip= c;
	obj.cant = input;									
	ProductosSolicitados.push(obj);	
}
function pro_selecionado(){
	toastr.success("Producto Seleccionado",
			"",
			{
		positionClass : "toast-top-right",
		containerId : "toast-top-right",
		        showMethod : "slideDown",
				hideMethod : "slideUp",
				timeOut : 2e3
			})	
}

function pro_enlista(){
	toastr.warning("Producto ya en lista",
			"",
			{
		positionClass : "toast-top-right",
		containerId : "toast-top-right",
		        showMethod : "slideDown",
				hideMethod : "slideUp",
				timeOut : 2e3
			})
}

function cant_faltante(){

	toastr.warning("Ingrese la cantidad",				
			{
		positionClass : "toast-top-right",
		containerId : "toast-top-right",
		        showMethod : "slideDown",
				hideMethod : "slideUp",
				timeOut : 2e3
			})		
			
}

$("#nomp").keyup(function () {
    var tableReg = document.getElementById('tablita');
    var searchText = document.getElementById('nomp').value.toLowerCase();
    for (var i = 1; i < tableReg.rows.length; i++) {
        var cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
        var encontrado = false;
        for (var j = 0; j < cellsOfRow.length && !encontrado; j++) {
            var compareWith = cellsOfRow[j].innerHTML.toLowerCase();
            if (searchText.length === 0 || (compareWith.indexOf(searchText) > -1)) {
                encontrado = true;
            }
        }
        if (encontrado) {
            tableReg.rows[i].style.display = '';
        } else {
            tableReg.rows[i].style.display = 'none';
        }
    }
});




