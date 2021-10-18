package diseño.TPI;

import java.sql.Date;

import javax.persistence.*;

@Entity
@Table(name="MP")
public class MP {
	//ATRIBUTOS---------------------------------------
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int ID;
	@Column(name="nombre")
	private String nombre;
	@Column(name="descripcion")
	private String descripcion;
	@Column(name="cantidad")
	private double cantidad;
	@Column(name="from_date")
	private Date from_date;
	
	//Metodo incrementar cantidad
	public void incCantidad(double c) {
		this.cantidad = this.cantidad + c;
	}
	//Getters y Setters------------------------------
	public int getID() {
		return ID;
	}
	public Date getFrom_date() {
		return from_date;
	}
	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public double getCantidad() {
		return cantidad;
	}
	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}
	//Metodo constructor------------------------------
	private MP() {}
	public MP(String nomb, String desc) 
	{
		this.nombre = nomb;
		this.descripcion = desc;
		this.cantidad=0;
	}
	//TO STRING
	@Override
	public String toString() {
		return "MP [ID=" + ID + ", nombre=" + nombre + ", descripcion=" + descripcion + ", cantidad=" + cantidad
				+ ", from_date=" + from_date + "]";
	}
	
}
