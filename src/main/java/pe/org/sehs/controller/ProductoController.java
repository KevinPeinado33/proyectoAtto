package pe.org.sehs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import pe.org.sehs.serviceImp.ProductoServiceImpl;

@Controller
public class ProductoController {

	@Autowired
	private ProductoServiceImpl productoSer;
	
	@RequestMapping(path = "/listarProductos", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String listarProductos(){	
		Gson g=new Gson();
		return g.toJson(productoSer.readAll());
	}
	
}
