package pe.org.sehs.dao;

import java.util.List;
import java.util.Map;

public interface DetallePedidoDao {

	List<Map<String,Object>> listarDetallePedido(int id_pedido);
	List<Map<String,Object>> listarDetallePedidoValidar(int id_sucursal);
    int CrearDetallePedido(int catidad,int idped,int idpro);
    int updateDetallePedido(int iddte,int esta);
}
