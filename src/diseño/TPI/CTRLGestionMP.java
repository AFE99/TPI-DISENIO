package diseño.TPI;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CTRLGestionMP {
	
	
	//Metodo tipo MAIN del controlador digamo{{
	@RequestMapping
	public String muestraPagina(Model modelo) { //Este es el metodo encargado de mapear cual es el archivo jsp (la vista) que queremos ver
		modelo.addAttribute("movimientoMP", new movMP());
		return "materiaprima";
		//return "paginaEjemplo";
	}
	
	/*
	//Metodo para pedirle el formulario al servidor
	@RequestMapping("/muestraFormulario") //Con esta notacion le estamos indicando a Spring que vamos a hacer un request/peticion de una URL, que se encontrara entre los parentesis, esta URL sera la que el usuario debera utilizar para que el servidor le devuelva el formulario de abajo
	public String muestraFormulario(Model modelo) { //Proporciona el formulario
		
		//movMP movimientoMP = new movMP(); //Creo una instancia movMP
		
		modelo.addAttribute("movimientoMP", new movMP()); //la instancia que cree arriba va a viajar a traves del objeto identificado como "movimientoMP"
			
		return "HolaAlumnosFormulario";
	}*/
	
	
	//Metodo para que procese el formulario que hemos rellenado y hemos enviado.
	@RequestMapping("/procesarFormulario") //Debemos especificar la URL en donde se muestre la rta al formulario
	public String procesarFormulario(@ModelAttribute("movimientoMP") movMP movimientoMP) {
		
		SessionFactory miFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(movMP.class).buildSessionFactory();
		Session nuevaSesion = miFactory.openSession();
		
		try {
			//Comenzar sesion			
			nuevaSesion.beginTransaction();
			//INSER INTO..
			nuevaSesion.save(movimientoMP);
			//COMMIT
			nuevaSesion.getTransaction().commit();
			//Cierro sesion
			nuevaSesion.close();
		}finally {
			miFactory.close();
		}
		return "materiaprima";
	}
	
	@RequestMapping("/mostrarListado")
	public String mostrarListado() {
		return "listadomp";
	}
	
	@RequestMapping("/goMateriaprima")
	public String goMateriaprima() {
		return "materiaprima";
	}
	
}
