package pe.org.sehs.controller;

import java.io.IOException;
import java.io.Reader;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import pe.org.sehs.entity.MENU;
import pe.org.sehs.serviceImp.LoginServiceImpl;

@Controller
public class LoginController {

	@Autowired
	private LoginServiceImpl lsim;

	/*
	 * @RequestMapping(path = "/log", method = RequestMethod.GET) public String
	 * login1(HttpServletRequest request) {
	 * 
	 * 
	 * 
	 * System.out.println("llego perro"); String nomus =
	 * request.getParameter("uss"); String contra = request.getParameter("coo");
	 * 
	 * return "/home";
	 * 
	 * 
	 * }
	 */

	@RequestMapping(path = "/home", method = RequestMethod.POST)
	public String main1(HttpSession session, @RequestParam("uss") String nomus, @RequestParam("coo") String contra) {
		System.out.println("holi");
		int num = 0;
		String returne = "";
		// String nomus = request.getParameter("uss");
		// String contra = request.getParameter("coo");
		List<Map<String, Object>> list = (lsim.validar(nomus, contra));
		if (list.size() == 0) {
			System.out.println("usuari incorrecto");
			returne = "redirect:/";
		} else {

			for (Map<String, Object> mm : list) {
				System.out.println("lleg proyyo");
				session.setAttribute("nom", mm.get("NOMBRES"));
				session.setAttribute("nom_rol", mm.get("NOM_ROL"));
				System.out.println(mm.get("IDPERSONA").getClass());
				String a = (String) mm.get("IDPERSONA");
				num = Integer.parseInt(a);
				System.out.println(num);
			}
			List<MENU> list1 =(List<MENU>) (lsim.menu(num));
			session.setAttribute("menu",list1);


			for (MENU game: list1) {
			    System.out.println(game.getIcon());
			}

			returne = "main";
		}
		return returne;
	}

}
