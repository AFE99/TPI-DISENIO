package diseño.TPI;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="Proveedor")
public class Proveedor extends Persona {
	//ATRIBUTOS
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_proveedor")
	private int id_proveedor;
	@Column(name="domicilioCom")
	private String domicilioCom;
	@Column(name="domicilioReal")
	private String domicilioReal;
	@Column(name="descripcion")
	private String descripcion;
	public int getId_proveedor() {
		return id_proveedor;
	}
	public void setId_proveedor(int id_proveedor) {
		this.id_proveedor = id_proveedor;
	}
	//Getters y Setters
	public String getDomicilioCom() {
		return domicilioCom;
	}
	public void setDomicilioCom(String domicilioCom) {
		this.domicilioCom = domicilioCom;
	}
	public String getDomicilioReal() {
		return domicilioReal;
	}
	public void setDomicilioReal(String domicilioReal) {
		this.domicilioReal = domicilioReal;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	//CONSTRUCTORES
	public Proveedor(String nombre, String apellido, int dNI, int telefono, Date fecha_nac, String email,
			String domicilioCom, String domicilioReal, String descripcion) {
		super(nombre, apellido, dNI, telefono, fecha_nac, email);
		this.domicilioCom = domicilioCom;
		this.domicilioReal = domicilioReal;
		this.descripcion = descripcion;
	}
	public Proveedor() {}
}
