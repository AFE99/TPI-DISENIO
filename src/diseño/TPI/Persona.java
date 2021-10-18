package diseño.TPI;

import java.util.Date;

import javax.persistence.*;
@Entity
@Table(name="Persona")
public class Persona {
	//ATRIBUTOS--------------------------------
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name="nombre")
	private String nombre;
	@Column(name="apellido")
	private String apellido;
	@Column(name="dni")
	private int DNI;
	@Column(name="telefono")
	private int telefono;
	@Column(name="fecha_nac")
	private Date fecha_nac;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getFecha_nac() {
		return fecha_nac;
	}
	public void setFecha_nac(Date fecha_nac) {
		this.fecha_nac = fecha_nac;
	}
	@Column(name="email")
	private String email;
	//Getters y Setters------------------------
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public int getDNI() {
		return DNI;
	}
	public void setDNI(int dNI) {
		DNI = dNI;
	}
	
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	//Constructores
	public Persona(String nombre, String apellido, int dNI, int telefono, Date fecha_nac, String email) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		DNI = dNI;
		this.telefono = telefono;
		this.fecha_nac = fecha_nac;
		this.email = email;
	}
	
	public Persona() {}
}
