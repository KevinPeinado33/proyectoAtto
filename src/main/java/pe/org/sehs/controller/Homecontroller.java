
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
    
@GetMapping("/solicitud")
public String soli() {       
    return "EI_RealizarPedido";
}



@GetMapping("/bandejaE")
public String bande() {
    return "BandejaEncargado";
}
@GetMapping("/confirmardetallev")
public String bands() {
    return "EV_ConfirmarDetalleVentas";
}
@GetMapping("/vis")
public String ASD() {
    return "vista2";
}
@GetMapping("/validacionpedido")
public String validacionP() {
    return "EV_ValidarPedido";
}
@GetMapping("/validarfaltante")
public String validacionf() {
    return "ConfirmarDetalleVentas";
}

}

