package pe.org.sehs.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.org.sehs.daoImp.DetallePedidoDaoImp;
import pe.org.sehs.service.DetallePedidoService;

@Service
public class DetallePedidoServiceImpl implements DetallePedidoService{

	@Autowired
	private DetallePedidoDaoImp dpi;
	
	@Override
	public List<Map<String, Object>> listarDetallePedido(String id_pedido) {
		// TODO Auto-generated method stub
		return dpi.listarDetallePedido(id_pedido);
	}

	@Override
	public int CrearDetallePedido(int catidad,String idped, String idpro) {
		// TODO Auto-generated method stub
		return dpi.CrearDetallePedido(catidad, idped, idpro);
	}

	@Override
	public int updateDetallePedido(String iddte, String esta) {
		// TODO Auto-generated method stub
		return dpi.updateDetallePedido(iddte, esta);
	}

	@Override
	public List<Map<String, Object>> listarDetallePedidoValidar(int id_sucursal) {
		// TODO Auto-generated method stub
		return dpi.listarDetallePedidoValidar(id_sucursal);
	}

}
