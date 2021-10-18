package diseño.TPI;

import java.sql.Date;

public class listMovMP {
	private int id_MP;
	private String nombre;
	private double cantidad;
	private String descripcion;
	private String proveedor;
	private Date fecha;
	private double precio;
	private int id_user;
	public int getId_MP() {
		return id_MP;
	}
	public void setId_MP(int id_MP) {
		this.id_MP = id_MP;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getCantidad() {
		return cantidad;
	}
	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getProveedor() {
		return proveedor;
	}
	public void setProveedor(String proveedor) {
		this.proveedor = proveedor;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public listMovMP(int id_MP, String nombre, double cantidad, String descripcion, String proveedor, Date fecha,
			double precio, int id_user) {
		super();
		this.id_MP = id_MP;
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.descripcion = descripcion;
		this.proveedor = proveedor;
		this.fecha = fecha;
		this.precio = precio;
		this.id_user = id_user;
	}
	
	@Override
	public String toString() {
		return "listMovMP [id_MP=" + id_MP + ", nombre=" + nombre + ", cantidad=" + cantidad + ", descripcion="
				+ descripcion + ", proveedor=" + proveedor + ", fecha=" + fecha + ", precio=" + precio + ", id_user="
				+ id_user + "]";
	}
	public listMovMP() {}
}
