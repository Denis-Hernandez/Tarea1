<%-- 
    Document   : Usuario
    Created on : 09-oct-2022, 17:28:28
    Author     : Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Orbitron&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <section class="solar-system">
            <form action="srvUsuario" method="POST" >
                <table border="1" class="table">
                    <thead>
                        <tr>
                            <th colspan="3"><h1 class="header__title">Login Usuario</h1></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td><input name="txtNombre" class="form-control bg-dark text-white" placeholder="User" required/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input name="txtPassword" class="form-control bg-dark text-white" placeholder="Password" type="password" required/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><button class="panel__button">Iniciar</button></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </section>
        <%
            if(request.getAttribute("Respuesta")!=null){
                Boolean respuesta = Boolean.parseBoolean(request.getAttribute("Respuesta").toString());

                if(respuesta){
                    %><script>swal("Acceso Correcto", "Usuario/Password incorrecto", "success");</script><%
                }else{
                    %><script>swal("Acceso incorrecto", "Usuario/Password incorrecto", "error");</script><%
                }

            }
        %>
    </body>
</html>
