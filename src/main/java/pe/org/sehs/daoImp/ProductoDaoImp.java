package pe.org.sehs.daoImp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import pe.org.sehs.dao.ProductoDao;

@Repository
public class ProductoDaoImp implements ProductoDao{	
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
	public List<Map<String, Object>> readAll() {
		return this.jdbcTemplate.queryForList("SELECT P.*,T.NOM_TIPO FROM PRODUCTO P ,TIPO T WHERE T.IDTIPO=P.TIPO_IDTIPO");
	}
	

}
