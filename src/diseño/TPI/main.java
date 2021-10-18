package diseño.TPI;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class main {

	public static void mainn(String[] args,HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		SessionFactory miFactory = new Configuration()
		.addAnnotatedClass(movMP.class)
		.addAnnotatedClass(MP.class)
		.addAnnotatedClass(Persona.class)
		.configure("hibernate.cfg.xml")
		.buildSessionFactory();
		PrintWriter out = response.getWriter();
		Session nuevaSesion = miFactory.openSession();
		
		try {
			//Comenzar sesion			
			nuevaSesion.beginTransaction();
			//CONSULTA SELECT..
			List<Object[]> listMovMPs =(List<Object[]>) nuevaSesion.createQuery("FROM movMP m,MP p, Persona per WHERE ((m.matPrima=p.id) and (per.id=m.proveedor))").list();
			
			for (Object[] objeto : listMovMPs) {
				movMP mov = (movMP) objeto[0];
				MP mp = (MP) objeto[1]; 
				Persona per = (Persona) objeto[2];
				System.out.println(mov.getId()+" -- "+mp.getNombre()+" -- "+per.getNombre());
			}
			out.println("<tbody>");
			for (Object[] Listado : listMovMPs) {
				movMP mov = (movMP) Listado[0];
				MP mp = (MP) Listado[1]; 
				Persona per = (Persona) Listado[2];
				out.println("<tr>"+
		        "<th scope='row'>"+mov.getId()+"</td>"
		        /*
		        +"<td>"+Botellas plasticas+"</td>"
		        +"<td>"+135+"</td>"
		        +"<td class='text-truncate' style='max-width: 150px;'>"+Verdes, solo de ese color+"</td>"
		        +"<td>"+Ricardo Ramirez+"</td>"
		        +"<td>"+23/02/2019+"</td>"
		        +"<td>"+2.75+"</td>"
		        +"<td>"+21333+"</td>"
		        +"<td><a href='#' role='button' data-toggle='modal' data-target=''#editarMP'><i class='fas fa-pencil-alt' style='font-size: 15px; color: #000000;'></i></a></td>"
		    */+"</tr>");
			} out.println("</tbody>");
				
			//COMMIT
			nuevaSesion.getTransaction().commit();
			//Cierro sesion
			nuevaSesion.close();
			
		}finally {
			miFactory.close();
		}
	}
	
}


