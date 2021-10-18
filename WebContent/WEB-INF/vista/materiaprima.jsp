<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Reciplas</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/recursos/estilos/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/recursos/estilos/propio.css">
    <script defer src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.13.0/js/v4-shims.js"></script>
</head>
<body>

    <header>
        <div class="barra">
            <div class="volver">
                <!--<a href="index.html"> 
                    <i class="fas fa-arrow-left" style="font-size: 30px; text-decoration: none;"></i>
                </a> -->
            </div>
            <div>
            <!--<a href="index.html"> -->
                <img src="${pageContext.request.contextPath}/recursos/imgs/logo.png" alt="" height="90%">
            <!--</a> -->
            </div>
            <div class="titulo">
                <h1 class="h3 font-weight-normal">Gestión de Materia Prima</h1>
                <p class="text-right">Preparación y almacenamiento</p>
            </div>
            
        </div>
    </header>
    <img src="${pageContext.request.contextPath}/recursos/imgs/190517-Foto-RECICLAJE-SUM.png" alt="" id="fondoGral">
    <div class="usuario"> 
        <div class="row">
            <div>
                <i class="fas fa-user-tie" style="font-size: 30px;"></i>
            </div>
            <div>
                <p>   Nombre y Apellido</p>
            </div>
        </div>
    </div>


    <div class="botonera">

        

        <div class="container">
            <div class="row">
                <div class="boton-circular text-center col">
                    <a href="#" role="button" data-toggle="modal" data-target="#agregarMP">
                        <i class="fas fa-plus" style="font-size: 140px;"></i>
                        <br> <br>
                        <h2 class="h4 mb-4 my-2">Agregar</h3>
                    </a>
                </div>
                <div class="boton-circular text-center col">
                    <!--<a href="#" role="button" data-toggle="modal" data-target="#descontarMP"> -->
                        <i class="fas fa-minus" style="font-size: 140px;"></i>
                        <br> <br>
                        <h2 class="h4 mb-4 my-2">Descontar</h3>
                    <!-- </a> -->
                </div>
                <div class="boton-circular text-center col">
                    <a href="mostrarListado" >
                        <i class="fas fa-clipboard-list" style="font-size: 140px;"></i>
                        <br> <br>
                        <h2 class="h4 mb-4 my-2">Listar/modificar</h3>
                    </a>
                </div>
            </div>

            <div class="modal fade" id="agregarMP" tabindex="-1" role="dialog" aria-labelledby="agregarMPTitle" aria-hidden="true" data-backdrop="static">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="agregarMPTitle">Registro de materia prima entrante</h5>
                            <span>
                                <script type="text/javascript">
                                    var d = new Date();
                                    document.write('<b>Fecha: </b>'+d.getDate(),'/'+(d.getMonth()+1),'/'+d.getFullYear());
                                </script>
                            </span>
                        </div>
                        <div class="modal-body">
                            <form:form action="procesarFormulario" modelAttribute="movimientoMP">
                                <div class="form-inline">
                                    <div class="form-group col-md-6">
                                        <label class="mx-md-2" for="cond">ID DE MATERIA PRIMA</label>
                                        <form:input path="matPrima" style="width: 100px;" class="form-control mx-md-2 my-sm-2" min="0" id="cond" placeholder=""/>
                                        <small class="text-muted">(*)</small>
                                        <!--<datalist id="listacond">
                                            <option value="231321"></option>
                                            <option value="231322"></option>
                                            <option value="231323"></option>
                                            <option value="231324"></option>
                                            <option value="231325"></option>
                                        </datalist>-->
                                    </div>
                                    <!--<div class="form-group col-md-6">
                                        <label for="cond">NOMBRE</label>
                                        <input style="width: 140px;" type="selector" class="form-control mx-sm-2 my-sm-2" min="0" id="cond" list="listacond1" placeholder=""/>
                                        <small class="text-muted">(*)</small>
                                        <datalist id="listacond1">
                                            <option value="Plastico 1"></option>
                                            <option value="PlÃ¡stico 2"></option>
                                            <option value="PlÃ¡stico 3"></option>
                                            <option value="PlÃ¡stico 4"></option>
                                            <option value="PlÃ¡stico 5"></option>
                                        </datalist>
                                    </div> -->
                                    <div class="form-group col-12">
                                        <label for="descr" class="mx-sm-4">DESCRIPCIÓN &nbsp&nbsp&nbsp&nbsp</label>
                                        <form:textarea path="descripcion" style="width: 450px;" type="" class="form-control mx-sm-0 my-sm-3" id="descr"/>
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="precio" class="mx-sm-5">PRECIO</label>
                                        <form:input path="precio" type="" class="form-control mx-sm-0 mr-sm-2 my-sm-3" min="0" id="precio" size="7" />
                                        <small class="text-muted">pesos (*)</small>
                                        <br/>
                                    </div>
                                    <div class="col-1"></div>
                                    <div class="form-group col-5">
                                        <label for="peso" class="mx-md-2">PESO &nbsp</label>
                                        <form:input path="peso" type="" class="form-control mr-sm-2 my-sm-9" min="0" size="7" id="peso" />
                                        <small class="text-muted class="pr-sm-9">kg &nbsp (*)</small>
                                    </div>
                                    <div class="form-group col-11">
                                        <label for="idproveedor" class="mx-sm-4">ID PROVEEDOR <br>PROVEEDOR</label>
                                        <form:input path="proveedor" type="selector" class="form-control mr-sm-2 my-sm-3" id="idarticulo" list="listacond2" min="1"/>
                                        <small class="text-muted">(*)</small>
                                        <!--<datalist id="listacond2">
                                            <option value="Hernan Garmendia"></option>
                                            <option value="Juan Gomez"></option>
                                        </datalist>-->
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="descrproveedor" class="mx-md-2">DESCRIPCIÓN &nbsp&nbsp&nbsp&nbsp<br>PROVEEDOR</label>
                                        <form:textarea path="descripcionProv" type="text" class="form-control mx-sm-4 my-sm-3" id="descrproveedor"/>
                                    </div>
                                </div>
                                <div class="modal-footer">
                            <small class="text-muted">(*) Campo obligatorio</small>
                            <button type="button" class="btn btn btn-secondary" data-toggle="modal" data-target="#preguntaCA">Cancelar</button>
                            <button type="submit" value="Guardar" class="btn btn-primary">Guardar</button>
                        </div>
                            </form:form>
                            
                        </div>
                        
                    </div>
                </div>
            </div>


            <!--div class="modal fade" id="descontarMP" tabindex="-1" role="dialog" aria-labelledby="descontarMPTitle" aria-hidden="true" data-backdrop="static">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="DescontarMPTitle">Descuento de materia prima</h5>
                            <span>
                                <script type="text/javascript">
                                    var d = new Date();
                                    document.write('<b>Fecha: </b>'+d.getDate(),'/'+(d.getMonth()+1),'/'+d.getFullYear());
                                </script>
                            </span>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-inline">
                                    <div class="form-group col-6">
                                        <label for="idarticulo" class="">ID DEL ARTICULO</label>
                                        <input style="width: 100px;" type="text" class="form-control mx-sm-3 my-sm-3" autocomplete="on" size="5" name="idarticulo" list="listacond">
                                        <small class="text-muted">(*)</small>
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="nombre" class="">NOMBRE</label>
                                        <input type="text" class="form-control mx-sm-3 my-sm-3" id="nombre" size="13" autocomplete="on" list="listacond1">
                                        <small class="text-muted">(*)</small>
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="descr" class="mr-sm-4">DESCRIPCIÃ“N</label>
                                        <textarea style="width: 456px;"  type="" class="form-control mx-sm-3 my-sm-3" id="descr" ></textarea>
                                        <small class="text-muted">(*)</small>
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="stock" class="mr-sm-4">STOCK&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br>DISPONIBLE</label>
                                        <input type="" class="form-control mx-sm-3 my-sm-2" id="total" disabled placeholder="#####" size="8">
                                        <small class="text-muted">kg</small>
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="peso" class="mr-sm-4">CANTIDAD A &nbsp&nbsp<br> DESCONTAR</label>
                                        <input type="" class="form-control mx-sm-3 my-sm-3" min="0" id="descuento" size="8">
                                        <small class="text-muted">kg &nbsp (*)</small>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <small class="text-muted">(*) Campo obligatorio</small>
                            <button type="button" class="btn btn btn-secondary" data-toggle="modal" data-target="#preguntaCD">Cancelar</button>
                            <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#preguntaGD">Guardar</button>
                        </div>
                    </div>
                </div>
            </div-->

            <!--MODALES DE AGREGADO-->

            <div>
                <div class="modal fade" id="preguntaCA" tabindex="-1" role="dialog" aria-labelledby="preguntaTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <b>¿Está seguro de que desea cancelar?</b>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn btn-secondary" data-dismiss="modal">No</button>
                                <button type="submit" class="btn btn-primary" data-toggle="modal" data-dismiss="modal" data-target="#agregarMP">Si</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="preguntaGA" tabindex="-1" role="dialog" aria-labelledby="preguntaTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <b>Â¿EstÃ¡ seguro de que desea continuar?</b>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn btn-secondary" data-dismiss="modal">No</button>
                                <button type="button" class="btn btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#imprimirAgregado">Si</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="imprimirAgregado" tabindex="-1" role="dialog" aria-labelledby="imprimirAgregadoTitle" aria-hidden="true" data-backdrop="static">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" data-toggle="modal" data-target="#agregarMP" aria-label="Cerrar todo">
                                    <span aria-hidden="true">&times</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Imprimir un comprobante de la operaciÃ³n:</p><a type="button" class="btn btn-primary" href="" >  <i class="fas fa-print" style="font-size:15px;"></i>  Imprimir</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            

            <!--MODALES DE DESCUENTO-->
        
            <div>
                <div class="modal fade" id="preguntaCD" tabindex="-1" role="dialog" aria-labelledby="preguntaTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <b>¿Está seguro de que desea cancelar?</b>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn btn-secondary" data-dismiss="modal">No</button>
                                <button type="submit" class="btn btn-danger" data-toggle="modal" data-dismiss="modal" data-target="#descontarMP">Si</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="preguntaGD" tabindex="-1" role="dialog" aria-labelledby="preguntaTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <b>¿Estas seguro de que desea continuar?</b>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn btn-secondary" data-dismiss="modal">No</button>
                                <button type="button" class="btn btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#descontarMP">Si</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

        </div>
    </div>

    <a href="" type="button" class="btn btn-secondary" id="logout">Cerrar sesión</a>

    <!-- AcÃ¡ abajo van a estar ubicados los scripts de js pertenecientes a la pÃ¡gina -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/recursos/js/bootstrap.js"></script>
</body>
</html>