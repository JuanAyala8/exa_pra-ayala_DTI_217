<%-- 
    Document   : baja
    Created on : 21/07/2021, 07:23:21 AM
    Author     : Juan Ayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Baja JSP Paciente</title>
        <!--Liberias y componentes de JS y CSS3-->
        <!-----------------------------BOOTSTRAP----------------------------->
        <!--Icono-->
        <link rel="Icon" type="img/png" href="img/logoicono.png">
        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>
        <!--Ventanas emergentes-->
        <link rel="stylesheet" type="text/css" href="css/ventanas.css">
        <link rel="stylesheet" href="style.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
        <link ref="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href="css/navbar.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/geolocation.css">
        <link type="text/css" rel="stylesheet" href="demobar_files/bootstrap.css">
        <script type="text/javascript" src="demobar_files/jquery-latest.min.js"></script>
        <script type="text/javascript" src="demobar_files/jquery.min.js"></script>
        <script type="text/javascript" src="demobar_files/bootstrap.js"></script>
        <script src="js/ie-emulation-modes-warning.js"> </script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!-----------------------------/BOOTSTRAP----------------------------->
    </head>
    <body>
        <!--LIBRERIAS-->
        <%@page import = "java.sql.*"%>
        <%@page import = "conexionbd.Conexion" %>
        <%@page errorPage = "error.jsp" %>
        <%
       Conexion conexion=new Conexion("jdbc:mysql://localhost/bddtiayala","root", "");
           String curp= request.getParameter("curp");
            //ejecucion y sentencia SQL
            String queryBaja ="DELETE FROM pacientes WHERE curp = '"+curp+"'";
            int confirma=conexion.ejecutaSentencia(queryBaja);
            if (confirma==1) {
        %>
        <div class="container">
            <div class="jumbotron">
                <center><img src="img/mac.png" class="img-responsive"></center>
                <div class="thumbnail">
                    <div class="alert-danger">
                        <center>
                            <h2>Paciente Eliminado Exitosamente</h2>
                            <hr>
                            <h3>Confirma curp</h3>
                            <br>
                            <h3><i>Curp Paciente: <%= curp %></i></h3>
                        </center>
                        
                    </div>
                </div>
                <a href="consulta.jsp"<h4>Consultar</h4></a>
                <% } else{ %>
                <div class="alert-warning">
                    <hr>
                    <center>
                        <h3>Error no existe ese paciente con curp!!</h3>
                        <h3><i>No se elimino ningun registro</i></h3>
                        <hr>
                        <%
                          }  
                        %>
                    </center>
                </div>
                    <h4>Fecha y hora del sistema: <%= new java.util.Date() %></h4>
                    <a href="consulta.jsp"><h4>Consulta Pacientes</h4></a>
            </div>
        </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/main.js"></script>
    <script type="js/jquery-1.8.0.min"></script>        
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>