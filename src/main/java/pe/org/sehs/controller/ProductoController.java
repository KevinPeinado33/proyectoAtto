package pe.org.sehs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import pe.org.sehs.serviceImp.DetallePedidoServiceImpl;
import pe.org.sehs.serviceImp.ProductoServiceImpl;

@Controller
public class ProductoController {

	@Autowired
	private ProductoServiceImpl productoSer;


	@RequestMapping(path = "/listarProductos", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String listarProductos() {
		Gson g = new Gson();
		return g.toJson(productoSer.readAll());
	}

	
}
