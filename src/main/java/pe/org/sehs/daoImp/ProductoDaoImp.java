package pe.org.sehs.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.org.sehs.dao.ProductoDao;

@Repository
public class ProductoDaoImp implements ProductoDao{
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}




	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}




	@Override
	public List<Map<String, Object>> readAll() {
		// TODO Auto-generated method stub
		
		
		return this.jdbcTemplate.queryForList("select * from producto");
	}

}
