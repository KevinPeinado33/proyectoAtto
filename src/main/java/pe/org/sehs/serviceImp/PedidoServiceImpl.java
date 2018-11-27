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
	public int validarPedido(String idped, int idtra, String esta) {
		// TODO Auto-generated method stub
		return pri.validarPedido(idped, idtra, esta);
	}



	@Override
	public List<Map<String, Object>> listarpedidoiglesia(int id_encargado) {
		
		return pri.listarpedidoiglesia(id_encargado);
		
	}



	@Override
	public List<Map<String, Object>> listarFaltantes(int id_su) {
		// TODO Auto-generated method stub
		return pri.listarFaltantes(id_su);
	}



	@Override
	public int updatepedido(String iddetalle, String cantidad) {
		// TODO Auto-generated method stub
		return pri.updatepedido(iddetalle, cantidad);
	}



	@Override
	public int insertDetallePasos(String idpedido, int idtrabajador) {
		// TODO Auto-generated method stub
		return pri.insertDetallePasos(idpedido, idtrabajador);
	}



	@Override
	public List<Map<String, Object>> listarpedidoasucu(int id_sucursal) {
		// TODO Auto-generated method stub
		return pri.listarpedidoasucu(id_sucursal);
	}








	

}
