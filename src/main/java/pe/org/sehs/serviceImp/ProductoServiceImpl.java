package pe.org.sehs.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.org.sehs.daoImp.ProductoDaoImp;
import pe.org.sehs.service.ProductoService;

@Service
public class ProductoServiceImpl implements ProductoService{

	
	@Autowired
	private ProductoDaoImp pri;
	
	@Override
	public List<Map<String, Object>> readAll() {
		// TODO Auto-generated method stub
		return pri.readAll();
	}


}
