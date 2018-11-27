package pe.org.sehs.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import pe.org.sehs.serviceImp.DetallePedidoServiceImpl;
import pe.org.sehs.serviceImp.PedidoServiceImpl;

@Controller
public class PedidoController {
	@Autowired
	private DetallePedidoServiceImpl detalleSer;
	
	@Autowired
	private PedidoServiceImpl pedidoSer;
	
	
	@RequestMapping(path = "/guardarDetallePedido", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int guardarDetallePedido(HttpServletRequest request) {
		
		 String data = request.getParameter("list");
		 String idi = request.getParameter("idp");
       
         System.out.println(idi);
         JsonParser parser = new JsonParser();
         JsonArray gsonArr = parser.parse(data).getAsJsonArray();
         int r = 1;
         for (JsonElement obj : gsonArr) {
             JsonObject gsonObj = obj.getAsJsonObject();          
            detalleSer.CrearDetallePedido(Integer.parseInt(gsonObj.get("cant").getAsString()),idi,gsonObj.get("idpro").getAsString());             
        }
		return r;
					
	}
	
	
	
	
	@RequestMapping(path = "/guardarPedido", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String guardarPedido(HttpServletRequest request) {
		String titulo = request.getParameter("titulo");
		String descricion = request.getParameter("descripcion");
		int idsu = Integer.parseInt(request.getParameter("idsucursal"));
		int iden = Integer.parseInt(request.getParameter("idencargado"));
		Gson g = new Gson();
		return g.toJson(pedidoSer.NuevoPedido(titulo, descricion, idsu, iden));
	}
	
	
	
	

	@RequestMapping(path = "/mostrarpedido", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String MostrarPedido(HttpServletRequest request) {
		System.out.println("llego a mostrar pedido");
		Gson g = new Gson();
		return g.toJson(pedidoSer.listarPedidoaValidar(1));
	}
	
	@RequestMapping(path = "/detallepedido", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String listDetallePedido(HttpServletRequest request){	
		
	String id = request.getParameter("idpedido");
		Gson g=new Gson();
		return g.toJson(detalleSer.listarDetallePedido(id));
	}
	
	@RequestMapping(path = "/validarpeC", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String validarPedidove(HttpServletRequest request){	
		
		String id =request.getParameter("idpedido");
		String esta = request.getParameter("estado");		
		System.out.println("locoo"+id+"esta"+esta);
		Gson g=new Gson();
		return g.toJson(pedidoSer.validarPedido(id, 1, esta));
	}
	
	
	@RequestMapping(path = "/updateDetalle", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String updateDetalle(HttpServletRequest request){	
		
		String idde =request.getParameter("iddetalle");
		String esta = request.getParameter("estado");
		Gson g=new Gson();
		return g.toJson(detalleSer.updateDetallePedido(idde, esta));
	}
	
	
	@RequestMapping(path = "/detallepedidovalida", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String listDetallePedidovalidar2(HttpServletRequest request){	
		
		//int id = Integer.parseInt(request.getParameter("idpedido"));
		Gson g=new Gson();
		return g.toJson(detalleSer.listarDetallePedidoValidar(1));
	}
	//////////////////////////////////
	
	
	@RequestMapping(path = "/mostrarpedidoiglesia", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String MostrarPedidoIglesia(HttpServletRequest request) {
		System.out.println("llego a mostrar pedido");
		Gson g = new Gson();
		return g.toJson(pedidoSer.listarpedidoiglesia(1));
	}
	
	@RequestMapping(path = "/mostrarfaltantes", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String MostrarFaltantes(HttpServletRequest request) {
		System.out.println("llego a mostrar pedido");
		Gson g = new Gson();
		return g.toJson(pedidoSer.listarFaltantes(1));
	}

	
	
	
	@RequestMapping(path = "/mostrarpeSu", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String MostrarProSu(HttpServletRequest request) {
		System.out.println("llego a mostrar pedido");
		Gson g = new Gson();
		return g.toJson(pedidoSer.listarpedidoasucu(1));
	}

	//////////////////
	

	
	
	
	

}
