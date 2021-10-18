<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MATERIA PRIMA ENTRANTE</title>
</head>
<body>
	<h1>REGISTRO DE MATERIA PRIMA ENTRANTE</h1>
	<form:form action="procesarFormulario" modelAttribute="movimientoMP">	
	ID Materia Prima: <form:input path="matPrima"/>
	<br><br><br>
	Descripción: <form:input path="descripcion"/>
	<br><br><br>
	Precio: <form:input path="precio"/>
	<br><br><br>
	Peso: <form:input path="peso"/>
	<br><br><br>
	ID proveedor: <form:input path="proveedor"/>
	<br><br><br>
	Descripción proveedor: <form:input path="descripcionProv"/>
	<br><br><br>
	<input type="submit" value="Guardar">
	</form:form>
	
</body>
</html>