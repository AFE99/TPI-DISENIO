package diseño.TPI;

import java.util.Date;

import javax.persistence.*;
@Entity
@Table(name="Empleado")
public class Empleado extends Persona {
	//ATRIBUTOS-----------------------
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int ID;
	@Column(name="user")
	private String user;
	@Column(name="pass")
	private String pass;
	@Column(name="cuil")
	private int CUIL;
	@Column(name="from_date")
	private Date from_date;
	@Column(name="to_date")
	private Date to_date;
	//Getters y Setters
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getCUIL() {
		return CUIL;
	}
	public void setCUIL(int cUIL) {
		CUIL = cUIL;
	}
	public Date getFrom_date() {
		return from_date;
	}
	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}
	public Date getTo_date() {
		return to_date;
	}
	public void setTo_date(Date to_date) {
		this.to_date = to_date;
	}
	//Constructor vacio
	public Empleado() {}
	//Constructor completo
	public Empleado(int iD, String user, String pass, int cUIL, Date from_date, Date to_date) {
		super();
		ID = iD;
		this.user = user;
		this.pass = pass;
		CUIL = cUIL;
		this.from_date = from_date;
		this.to_date = to_date;
	}
	
	
}
