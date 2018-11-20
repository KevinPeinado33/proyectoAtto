package pe.org.sehs.entity;

public class MENU {

	private String nombre;
	private String url;
	private String icon;
		
	public MENU() {
		super();
	}

	public MENU(String nombre, String url, String icon) {
		super();
		this.nombre = nombre;
		this.url = url;
		this.icon = icon;
	}
	
	
	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	@Override
	public String toString() {
		return "MENU [nombre=" + nombre + ", url=" + url + ", icon=" + icon + "]";
	}

	
	
}
