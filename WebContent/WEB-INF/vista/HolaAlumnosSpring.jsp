<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- METODO DE RESPUESTA -->
	<!-- Este archivo se tiene que llamar exactamente igual a como lo hemos especificado en el metodo "procesarFormulario" -->
<p>
La materia prima con ID ${movimientoMP.matPrima}, cuya descripción es: <!-- despues del punto debe ir el nombre del cuadro de texto ("nombreAlumno" en este caso) -->
${movimientoMP.descripcion}
De peso: ${movimientoMP.peso}
De precio: ${movimientoMP.precio}
Cuyo proveedor fue: ${movimientoMP.proveedor}
Descripcion Prov: ${movimientoMP.descripcionProv}
<br>
</p>
<p>
<h2> Atencion a todos </h2>
 
${mensajeClaro} 
<p>  
</body>
</html>