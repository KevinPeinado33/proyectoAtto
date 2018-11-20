package pe.org.sehs.daoImp;

import java.sql.Types;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;

import oracle.jdbc.OracleTypes;
import pe.org.sehs.dao.LoginDao;
import pe.org.sehs.entity.MENU;

public class LoginDaoimp implements LoginDao {

	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private SimpleJdbcCall jdbcCall;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String,Object>>  validar(String user, String pass) {
		// TODO Auto-generated method stub
	
			// TODO Auto-generated method stub
			// TODO Auto-generated method stub
			
	/*
		jdbcCall = new SimpleJdbcCall(jdbcTemplate).withProcedureName("PR_LOGIN");
			jdbcCall.declareParameters(new SqlParameter("US", OracleTypes.VARCHAR),new SqlParameter("CO", OracleTypes.VARCHAR),new SqlOutParameter("READ_LOGIN", OracleTypes.CURSOR));
			Map<String, Object> out = jdbcCall.execute(new MapSqlParameterSource().addValue("US",user),new MapSqlParameterSource().addValue("CO",pass));
			System.out.println(out);		
	  return out;
		*/
		
		Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
		jdbcCall=new SimpleJdbcCall(jdbcTemplate).withFunctionName("FP_LOGIN");							
		parametrosIngresoMap.put("NOMUS",user);			
		parametrosIngresoMap.put("CONTRA",pass);			
		SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
		Map<String, Object> parametrosSalida = jdbcCall.execute(parametrosCountDataFile);									
		//(Map<String, Object>)parametrosSalida.get("return")		 	 
		/*
		jdbcCall = new SimpleJdbcCall(jdbcTemplate).withProcedureName("PR_LOGIN").declareParameters
				(new SqlParameter("US", OracleTypes.VARCHAR),new SqlParameter("CO", OracleTypes.VARCHAR),new SqlOutParameter("READ_LOGIN", OracleTypes.CURSOR));
		Map<String, Object> out = jdbcCall.execute(new MapSqlParameterSource().addValue("US",user),new MapSqlParameterSource().addValue("CO",pass));
		System.out.println(out.get("READ_LOGIN"));
		return (Map<String, Object>) out.get("READ_LOGIN");			
	  */
		System.out.println(parametrosSalida.get("return"));
		System.out.println(parametrosSalida.get("return").getClass());
		List<Map<String,Object>> list = (List<Map<String, Object>>)(parametrosSalida.get("return"));
		return list;	
		
		
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<MENU> menu(int idp) {
		// TODO Auto-generated method stub
		
		List<MENU> a=new ArrayList<>();
		Map<String, Object> parametrosIngresoMap = new HashMap<String, Object>();			
		jdbcCall=new SimpleJdbcCall(jdbcTemplate).withFunctionName("FP_MENU");							
		parametrosIngresoMap.put("IDI",idp);							
		SqlParameterSource parametrosCountDataFile = new MapSqlParameterSource().addValues(parametrosIngresoMap);
		Map<String, Object> parametrosSalida = jdbcCall.execute(parametrosCountDataFile);	
		List<Map<String,Object>> list = (List<Map<String, Object>>) (parametrosSalida.get("return"));	
		System.out.println(list);
		MENU m=new MENU();
		for (Map<String, Object> mm : list) {								
			String nom=(String)mm.get("NOMBRE");
			String url=(String)mm.get("URL");
			String ico=(String)mm.get("ICON");
			a.add(new MENU(nom,url,ico));
		}			
	
		
		return a;
	}

}
