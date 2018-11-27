package pe.org.sehs.dao;

import java.util.List;
import java.util.Map;

public interface DetallePedidoDao {

	List<Map<String,Object>> listarDetallePedido(String id_pedido);
	List<Map<String,Object>> listarDetallePedidoValidar(int id_sucursal);
    int CrearDetallePedido(int catidad,String idped,String idpro);
    int updateDetallePedido(String iddte,String esta);
}
