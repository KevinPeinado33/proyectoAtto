package pe.org.sehs.service;

import java.util.List;
import java.util.Map;

import pe.org.sehs.entity.MENU;

public interface LoginService {
	public List<Map<String,Object>>  validar(String user,String pass);
	public List<MENU> menu(int idp);

}
