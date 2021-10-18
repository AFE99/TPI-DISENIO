<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Reciplas</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/recursos/estilos/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/recursos/estilos/propio.css">
    <script defer src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.13.0/js/v4-shims.js"></script>
</head>
<body>

    <header>
        <div class="barra">
            <div class="volver">
                <a href="@Url.Action("materiaprima","CTRLGestionMP")">
                    <i class="fas fa-arrow-left" style="font-size: 30px; text-decoration: none;"></i>
                </a>
            </div>
            <a href="index.html">
                <img src="${pageContext.request.contextPath}/recursos/imgs/logo.png" href="" alt="" height="90%">
            </a>
            <div class="titulo">
                <h3 class="h3 font-weight-normal">GestiÛn de Materia Prima</h3>
                <p class="text-right">PreparaciÛn y almacenamiento</p>
            </div>
        </div>
    </header>
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

    <div class="container" style="margin-top: 75px;>
        <div class="card">
            <div class="card card-header">
                <h5 class="h5 font-weight-normal mb-3">Movimientos de Materia Prima</h5> <br>
                <a type="button" class="btn btn-primary col col-md-2"  href="#" data-toggle="collapse" data-target="#filtrarPor" aria-expanded="false" aria-controls="#filtrarPor">
                    <i class="fas fa-chevron-down"></i>
                    Filtrar por
                </a>
            </div>

            <div class="collapse" id="filtrarPor">
                <form class="row">
                    <div class="form-group col-6 my-sm-2">
                        <input type="checkbox" class="input-control mx-sm-3" name="selnombre" aria-hidden="true">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="input-control mx-sm-3" name="nombre"/>
                    </div>
                    <div class="form-group col-6 my-sm-2">
                        <input type="checkbox" class="input-control mx-sm-3" name="selidproducto" aria-hidden="true">
                        <label for="idproducto">ID Producto</label>
                        <input type="text" class="input-control mx-sm-3" name="idproducto"/>
                    </div>
                    <div class="form-group col-6">
                        <input type="checkbox" class="input-control mx-sm-3" name="selproveedor" aria-hidden="true">
                        <label for="proveedor">Proveedor</label>
                        <input type="text" class="input-control mx-sm-3" name="proveedor"/>
                    </div>
                    <div class="form-group col-6">
                        <input type="checkbox" class="input-control mx-sm-3" name="selidproducto" aria-hidden="true">
                        <label for="fecha">Fecha</label>
                        <input type="date" class="input-control mx-sm-3" name="fecha"/>
                    </div>
                </form>
            </div>

            <div class="card card-body table-responsive">
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">ID de MP</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Cantidad (kg)</th>
                            <th scope="col">DescripciÛn</th>
                            <th scope="col">Proveedor</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Precio ($)</th>
                            <th scope="col">ID Usuario</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">231321</td>
                            <td>Botellas plasticas</td>
                            <td>135</td>
                            <td class="text-truncate" style="max-width: 150px;">Verdes, solo de ese color</td>
                            <td>Ricardo Ramirez</td>
                            <td>23/02/2019</td>
                            <td>2.75</td>
                            <td>21333</td>
                            <td>
                                <a href="#" role="button" data-toggle="modal" data-target="#editarMP">
                                    <i class="fas fa-pencil-alt" style="font-size: 15px; color: #000000;"></i>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="modal fade" id="editarMP" tabindex="-1" role="dialog" aria-labelledby="editarMPTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editarMPTitle">Editar materia prima</h5>
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
                                    <div class="form-group col-md-6">
                                        <label class="mx-md-2" for="cond">ID DEL ART√çCULO</label>
                                        <input style="width: 80px;"  type="" class="form-control mx-md-2 my-sm-2" id="idarticulo" placeholder="231321" disabled maxlength="5" size="5"/>
                                        <small class="text-muted">(*)</small>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="cond">NOMBRE</label>
                                        <input style="width: 140px;"  type="" class="form-control mx-md-2 my-sm-2" id="idarticulo" placeholder="Botellas plasticas" disabled maxlength="5" size="5"/>
                                        <small class="text-muted">(*)</small>
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="descr" class="mx-sm-4">DESCRIPCI√ìN</label>
                                        <textarea style="width: 450px;" type="" class="form-control mx-sm-0 my-sm-3" id="descr"></textarea>
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="precio" class="mx-sm-5">PRECIO</label>
                                        <input type="" class="form-control mx-sm-0 mr-sm-2 my-sm-3" min="0" id="precio" size="7" >
                                        <small class="text-muted">pesos &nbsp (*)</small>
                                        <br/>
                                    </div>
                                    <div class="col-1"></div>
                                    <div class="form-group col-5">
                                        <label for="peso" class="mx-md-2">PESO &nbsp&nbsp</label>
                                        <input type="" class="form-control mr-sm-2 my-sm-3" min="0" size="7" id="peso" >
                                        <small class="text-muted">kg &nbsp (*)</small>
                                    </div>
                                    <div class="form-group col-11">
                                        <label for="idproveedor" class="mx-sm-4">NOMBRE &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br>PROVEEDOR</label>
                                        <input type="selector" class="form-control mr-sm-2 my-sm-3" id="idarticulo" list="listacond2" min="1"/>
                                        <small class="text-muted">(*)</small>
                                        <datalist id="listacond2">
                                            <option value="Hernan Garmendia"></option>
                                            <option value="Juan Gomez"></option>
                                        </datalist>
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="descrproveedor" class="mx-md-2">DESCRIPCI√ìN &nbsp&nbsp&nbsp<br>PROVEEDOR</label>
                                        <textarea type="text" class="form-control mx-sm-4 my-sm-3" id="descrproveedor"></textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Guardar</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <!-- Ac√° abajo van a estar ubicados los scripts de js pertenecientes a la p√°gina -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/recursos/js/bootstrap.js"></script>

</body>
</html>