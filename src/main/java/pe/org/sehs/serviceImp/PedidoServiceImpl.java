package pe.org.sehs.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.org.sehs.daoImp.PedidoDaoImp;
import pe.org.sehs.service.PedidoService;

@Service
public class PedidoServiceImpl implements PedidoService{

	
	@Autowired
	private PedidoDaoImp pri;

	
	
	@Override
	public Map<String, Object> NuevoPedido(String titulo, String descricion, int idencar, int idsucur) {
		// TODO Auto-generated method stub
		return pri.NuevoPedido(titulo, descricion, idencar, idsucur);
	}



	@Override
	public List<Map<String, Object>> listarPedidoaValidar(int id_su) {
		// TODO Auto-generated method stub
		return pri.listarPedidoaValidar(id_su);
	}



	@Override
	public int validarPedido(int idped, int idtra, int esta) {
		// TODO Auto-generated method stub
		return pri.validarPedido(idped, idtra, esta);
	}

}
