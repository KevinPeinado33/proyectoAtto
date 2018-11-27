package pe.org.sehs.service;

import java.util.List;
import java.util.Map;

public interface DetallePedidoService {
	List<Map<String,Object>> listarDetallePedido(String id_pedido);
    int CrearDetallePedido(int catidad,String idped,String idpro);
    int updateDetallePedido(String iddte,String esta);
	List<Map<String,Object>> listarDetallePedidoValidar(int id_sucursal);

}
