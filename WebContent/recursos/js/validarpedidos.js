$(document).ready(function() {

	listarpe();

})

var pedidosArray = new Array();
var idpedido =0;
function listarpe() {
	$.get("mostrarpedido",function(data) {
		$('#tablita tbody tr').remove();							
		for ( var i in data) {					
			var a=data[i].IDPEDIDO;
							$("#tablita")
									.append(
											"<tr><td style='padding-top:20px;'>" +
											"<div class='row'><div class='col-sm-3'><i class='icon-bg-circle bg-red bg-darken-1'>DP</i></div>"+
											"<div class='col-sm-6'><div style='margin-top:-10px;margin-left:-23px;'>" +
											"<p style='font-weight:700'>Diego Puma Paco</p>" +
											"<p style='margin-top:-15px;color:#BBC1CA'><i class='fa fa-circle-o text-green'></i>Iglesia Villa Union</p></div></div>" +											
											"</td><td style='padding-top:20px;'>"
													+ data[i].CODIGO
													+ "</td><td style='padding-top:20px;'>"
													+ data[i].FECHA_CREACION
													+ "</td><td style='padding-top:15px;'><button type='button' style='width:80%;font-weight:600;' class='btn btn-blue text-white'" +
															" onclick='validarmodal(\"" 
													+ data[i].IDPEDIDO
													+ "\")' data-toggle='modal' data-target='#defaultSize'>Validar</button></td></tr>");
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
	idpedido=a;
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
													+ data[i].IDDETALLE_PEDIDO
													+ "</td><td style='padding-top:20px;'>"
													+ data[i].CODIGO
													+ "</td><td style='padding-top:20px;'>"
													+ data[i].NOM_PRO
													+ "</td><td style='padding-top:20px;'>"
													+ data[i].CANTIDAD
													+ "</td><td style='padding-top:15px;'><div class='custom-control  custom-checkbox my-1 mr-sm-2' style='margin-top:-10px;'><input type='checkbox' style='margin-top:-20px;cursor:pointer;' class='custom-control-input switchery text-danger danger' id='chec"
													+ data[i].IDDETALLE_PEDIDO
													+ "'><label class='custom-control-label' for='chec"
													+ data[i].IDDETALLE_PEDIDO
													+ "'></label></div></td></tr>");
							
							
							  
	                          
	                         
	                       

						}

					});

}



function ponerTitulo(b) {

}

function validarpedido(){
	var a=0;
	

	$('#tablita2 tbody tr').each(function () {
		 var iddetalle = $(this).find("td").eq(0).html();	
		if( $("#chec"+iddetalle+"").is(':checked') ) {
		    //alert('Completo:estado3');	
		    ingre(iddetalle,3);
		}else{
			//alert('incompleto:estado 1');
			ingre(iddetalle,1);
			a=a+1;
		}			
		});
	validarestadopedido(a);
		
	
	
}
function validarestadopedido(a){
	if(a>0){
		//alert("El pedido esta incompleto:Estado pedido:faltante");
		pe(idpedido,3);		
	}else{
		//alert("El pedido esta completo:Estado de pedido completo");		
		pe(idpedido,1)
		a=0;
	}
}


function ingre(a,b){
	$.post("updateDetalle",{iddetalle:a,estado:b},function(data) {
	
	});
}

function pe(a,b){
	$.post("validarpeC",{idpedido:a,estado:b},function(data) {
		 listarpe();
		 $(".modal").modal('hide');
		 pe_validado();
	
		 
	});
}


function pe_validado(){
	toastr.success("Pedido Validado",
			"",
			{
		positionClass : "toast-top-right",
		containerId : "toast-top-right",
		        showMethod : "slideDown",
				hideMethod : "slideUp",
				timeOut : 2e3
			})	
}