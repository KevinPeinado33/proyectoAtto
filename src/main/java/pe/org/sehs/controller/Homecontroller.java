package pe.org.sehs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Homecontroller {
@GetMapping("/")
public String index() {
	return "index";
}
@PostMapping("/home")
public String main1() {
	return "main";
}
@GetMapping("/home")
public String main2() {
	return "main";
}
@GetMapping("/solicitud")
public String soli() {
	return "NuevaSolicitudPedido";
}

}
