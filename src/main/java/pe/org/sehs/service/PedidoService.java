package pe.org.sehs.service;

import java.util.List;
import java.util.Map;

public interface PedidoService {
	List<Map<String,Object>> listarPedidoaValidar(int id_su);
	Map<String, Object> NuevoPedido(String titulo,String descricion,int idencar,int idsucur);
    int validarPedido(int idped,int idtra,int esta);


}
