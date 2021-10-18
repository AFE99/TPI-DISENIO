package diseño.TPI;



import java.sql.Date;

import javax.persistence.*;
@Entity
@Table(name="movMP")
public class movMP {
	//ATRIBUTOS
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name="matPrima")
	private int matPrima; //Hay que cambiar 'int' por 'MP' . Hago asi porque todavia no se conectar la BBDD . Luego de cambiar esto re-hacer getters y setters y Constructor
	@Column(name="descripcion")
	private String descripcion;
	@Column(name="fecha")
	private Date fecha;
	@Column(name="precio")
	private double precio;
	@Column(name="peso")
	private double peso;
	@Column(name="proveedor")
	private int proveedor; //Hay que cambiar 'String' por 'Proveedor' . Hago asi porque todavia no seconectar la BBDD
	@Column(name="descripcionProv")
	private String descripcionProv;
	@Column(name="id_usuario")
	private int id_usuario;
	
	//Constructor vacio
	public movMP() {};
	
	//Constructor con todos sus atributos
	public movMP(int matPrima, String descripcion, Date fecha, double precio, double peso, int proveedor,
			String descripcionProv) {
		super();
		this.matPrima = matPrima;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.precio = precio;
		this.peso = peso;
		this.proveedor = proveedor;
		this.descripcionProv = descripcionProv;
	}
	
	//Getters y Setters

	public String getDescripcion() {
		return descripcion;
	}
	
	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
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
	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}
	
	public String getDescripcionProv() {
		return descripcionProv;
	}
	public void setDescripcionProv(String descripcionProv) {
		this.descripcionProv = descripcionProv;
	}

	public int getMatPrima() {
		return matPrima;
	}

	public void setMatPrima(int matPrima) {
		this.matPrima = matPrima;
	}

	

	public int getProveedor() {
		return proveedor;
	}

	public void setProveedor(int proveedor) {
		this.proveedor = proveedor;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
