package pe.org.sehs.dao;

import java.util.List;
import java.util.Map;

public interface PedidoDao {
	
	List<Map<String,Object>> listarPedidoaValidar(int id_su);
	List<Map<String,Object>> listarFaltantes(int id_su);
	Map<String, Object> NuevoPedido(String titulo,String descricion,int idencar,int idsucur);
    int validarPedido(String idped,int idtra,String esta);
    List<Map<String, Object>> listarpedidoiglesia(int id_encargado);
    int updatepedido(String iddetalle,String cantidad);
    int insertDetallePasos(String idpedido,int idtrabajador);
    List<Map<String, Object>> listarpedidoasucu(int id_sucursal);



}
