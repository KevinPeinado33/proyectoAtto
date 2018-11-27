package pe.org.sehs.daoImp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import pe.org.sehs.dao.PedidoDao;

public class PedidoDaoImp implements PedidoDao{
	
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
	public List<Map<String, Object>> listarPedidoaValidar(int id_su) {
		// TODO Auto-generated method stub
					
		return this.jdbcTemplate.queryForList("SELECT *FROM PEDIDO where estado=0 AND SUCURSAL_IDSUCURSAL=?",id_su);
	}

	@Override
	public Map<String, Object> NuevoPedido(String titulo,String descricion,int idencar,int idsucur) {
		Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
		jdbcCall=new SimpleJdbcCall(jdbcTemplate).withCatalogName("PKG_PEDIDO").withProcedureName("PRO_CREATE_PEDIDO");					
		parametrosIngresoMap.put("TITU",titulo);
		parametrosIngresoMap.put("DESCRI",descricion);
		parametrosIngresoMap.put("IDENCA", idencar);
		parametrosIngresoMap.put("IDSU",idsucur);				
		SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
		Map<String, Object> parametrosSalida = jdbcCall.execute(parametrosCountDataFile);			
        return  parametrosSalida;     
	}

	@Override
	public int validarPedido(String idped, int idtra, String esta) {
		Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
		jdbcCall=new SimpleJdbcCall(jdbcTemplate).withCatalogName("PKG_PEDIDO").withProcedureName("P_VALIDAR_PEDIDO_V");					
		parametrosIngresoMap.put("IDPED",idped);
		parametrosIngresoMap.put("IDTRABAJADOR",idtra);
		parametrosIngresoMap.put("ESTA",esta);						
		SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
		jdbcCall.execute(parametrosCountDataFile);	
		int a =1;
		return a;
	}
	
	@Override
	public List<Map<String, Object>> listarpedidoiglesia(int id_encargado) {					
		return this.jdbcTemplate.queryForList("SELECT *FROM PEDIDO where estado=0 AND SUCURSAL_IDSUCURSAL=?",id_encargado);
	}

	@Override
	public List<Map<String, Object>> listarFaltantes(int id_su) {
		// TODO Auto-generated method stub
		return this.jdbcTemplate.queryForList("SELECT DE.PEDIDO_IDPEDIDO AS IDPEDIDO,DE.IDDETALLE_PEDIDO,PRO.CODIGO AS CODIGO_PRO,P.CODIGO,PRO.NOM_PRO,DE.CANTIDAD FROM DETALLE_PEDIDO DE,PRODUCTO PRO,PEDIDO P WHERE DE.ESTADO=1 AND PRO.IDPRODUCTO=DE.PRODUCTO_IDPRODUCTO AND P.SUCURSAL_IDSUCURSAL=1 AND P.ESTADO=3 AND P.IDPEDIDO=DE.PEDIDO_IDPEDIDO order by P.FECHA_CREACION asc");
	}

	@Override
	public int updatepedido(String iddetalle, String cantidad) {
		// TODO Auto-generated method stub
		Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
		jdbcCall=new SimpleJdbcCall(jdbcTemplate).withCatalogName("PKG_PEDIDO").withProcedureName("P_DETALLE_PEDIDO_UPDATE_FALTAN");					
		parametrosIngresoMap.put("CANTIDADFALTANTE",iddetalle);
		parametrosIngresoMap.put("IDDETALLEPEDIDO",cantidad);
							
		SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
		jdbcCall.execute(parametrosCountDataFile);	
		int a =1;
		return a;
	}

	@Override
	public int insertDetallePasos(String idpedido, int idtrabajador) {
		// TODO Auto-generated method stub
		Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
		jdbcCall=new SimpleJdbcCall(jdbcTemplate).withCatalogName("PKG_PEDIDO").withProcedureName("P_UPDATEPASOPEDIDOFALTANTES");					
		parametrosIngresoMap.put("IDPED",idpedido);
		parametrosIngresoMap.put("IDTRABAJADOR",idtrabajador);						
		SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
		jdbcCall.execute(parametrosCountDataFile);	
		int a =1;
		return a;
	}

	@Override
	public List<Map<String, Object>> listarpedidoasucu(int id_sucursal) {
		// TODO Auto-generated method stub
		return this.jdbcTemplate.queryForList("SELECT PRO.CODIGO,PRO.NOM_PRO,DE.CANTIDAD,DE.CANTIDAD_FALTANTE AS CANT,DE.IDDETALLE_PEDIDO FROM DETALLE_PEDIDO DE,PEDIDO P,PRODUCTO PRO WHERE DE.ESTADO=2 AND DE.PEDIDO_IDPEDIDO=P.IDPEDIDO AND P.SUCURSAL_IDSUCURSAL=1 AND PRO.IDPRODUCTO=DE.PRODUCTO_IDPRODUCTO"); 
	}
	
	
	
	
	
	
	
}
