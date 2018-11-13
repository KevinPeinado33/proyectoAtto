package pe.org.sehs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
// hola mundo XD
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
	
	
	return "NuevoPedido";
}
@GetMapping("/bandeja")
public String bande() {
	return "BandejaEncargado";
}

@GetMapping("/validacionpedido")
public String validacionP() {
	return "ValidarPedido";
}

@GetMapping("/GenerarConsolidado")
public String GenerarC() {
	return "GenerarConsolidado";
}


@GetMapping("/cotizacion")
public String GenerarCo() {
	return "GenerarCotizacion";
}


@GetMapping("/EnviarPedido")
public String caso() {
	return "EnviarPedPro";
}

}
