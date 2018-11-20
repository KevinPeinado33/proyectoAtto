package pe.org.sehs.service;

import java.util.List;
import java.util.Map;

public interface DetallePedidoService {
	List<Map<String,Object>> listarDetallePedido(int id_pedido);
    int CrearDetallePedido(int catidad,int idped,int idpro);
    int updateDetallePedido(int iddte,int esta);
	List<Map<String,Object>> listarDetallePedidoValidar(int id_sucursal);

}
