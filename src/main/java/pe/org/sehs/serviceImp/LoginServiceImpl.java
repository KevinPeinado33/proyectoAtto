package pe.org.sehs.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.org.sehs.daoImp.LoginDaoimp;
import pe.org.sehs.entity.MENU;
import pe.org.sehs.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDaoimp log;
	
	
	
	@Override
	public List<Map<String,Object>>  validar(String user, String pass) {
		// TODO Auto-generated method stub
		return log.validar(user, pass);
	}



	@Override
	public List<MENU> menu(int idp) {
		// TODO Auto-generated method stub
		return log.menu(idp);
	}

}
