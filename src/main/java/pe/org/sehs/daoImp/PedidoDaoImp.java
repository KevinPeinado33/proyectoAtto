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
					
		return this.jdbcTemplate.queryForList("SELECT *FROM PEDIDO where estado=0");
	}

	@Override
	public Map<String, Object> NuevoPedido(String titulo,String descricion,int idencar,int idsucur) {
		Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
		jdbcCall=new SimpleJdbcCall(jdbcTemplate).withCatalogName("PKG_PEDIDO").withProcedureName("P_CREATE_PEDIDO");					
		parametrosIngresoMap.put("TITU",titulo);
		parametrosIngresoMap.put("DESCRI",descricion);
		parametrosIngresoMap.put("IDENCA", idencar);
		parametrosIngresoMap.put("IDSU",idsucur);				
		SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
		Map<String, Object> parametrosSalida = jdbcCall.execute(parametrosCountDataFile);			
        return  parametrosSalida;     
	}

	@Override
	public int validarPedido(int idped, int idtra, int esta) {
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

}
