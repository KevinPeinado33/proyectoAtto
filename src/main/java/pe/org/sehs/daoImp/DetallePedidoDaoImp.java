package pe.org.sehs.daoImp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;

import pe.org.sehs.dao.DetallePedidoDao;

public class DetallePedidoDaoImp implements DetallePedidoDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	private SimpleJdbcCall jdbcCall;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}




	@Override
	public List<Map<String, Object>> listarDetallePedido(String id_pedido) {
		// TODO Auto-generated method stub
		return this.jdbcTemplate.queryForList("SELECT D.IDDETALLE_PEDIDO,D.CANTIDAD,PRO.CODIGO,PRO.NOM_PRO FROM PEDIDO P,DETALLE_PEDIDO D,PRODUCTO PRO WHERE IDPEDIDO=? AND PRO.IDPRODUCTO=D.PRODUCTO_IDPRODUCTO AND D.PEDIDO_IDPEDIDO=P.IDPEDIDO",id_pedido);
	}
	
	@Override
	public int CrearDetallePedido(int catidad, String idped,String idpro) {
		
		System.out.println("legueee");
		System.out.println(idped);
		System.out.println(idpro);
		System.out.println(catidad);
		int x = 0;
		try {
			
			System.out.println("legueee");
			Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
			jdbcCall=new SimpleJdbcCall(jdbcTemplate).withCatalogName("PKG_PEDIDO").withProcedureName("PRO_CREATE_DETALLE_PEDIDO");					
			parametrosIngresoMap.put("CANTI",catidad);
			parametrosIngresoMap.put("ID_PE", idped);
			parametrosIngresoMap.put("ID_PRO",idpro);
									
			SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
			jdbcCall.execute(parametrosCountDataFile);	
				
			x=1;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error: " + e);
		}
		
			
		return x;
	}
	@Override
	public int updateDetallePedido(String iddte,String esta) {
		Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
		jdbcCall=new SimpleJdbcCall(jdbcTemplate).withCatalogName("PKG_PEDIDO").withProcedureName("P_DETALLE_PEDIDO_UPDATE");					
		parametrosIngresoMap.put("IDDET",iddte);
		parametrosIngresoMap.put("ESTAD",esta);							
		SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
		jdbcCall.execute(parametrosCountDataFile);	
		return 1;
	}
	@Override
	public List<Map<String, Object>> listarDetallePedidoValidar(int id_sucursal) {
		// TODO Auto-generated method stub
		return this.jdbcTemplate.queryForList("SELECT  D.*,PR.NOMBRE FROM DETALLE_PEDIDO D,PEDIDO P, PRODUCTO PR WHERE D.ESTADO=1 AND D.PEDIDO_IDPEDIDO=P.IDPEDIDO AND D.PRODUCTO_IDPRODUCTO=PR.IDPRODUCTO AND P.SUCURSAL_IDSUCURSAL=?",id_sucursal);

	}

}
