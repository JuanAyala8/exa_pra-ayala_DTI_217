<%-- 
    Document   : alta
    Created on : 21/07/2021, 07:20:54 AM
    Author     : Juan Ayala
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page Alta Paciente</title>
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
    <center>
        <h1>Sistema Java WEB AYALA Hospital</h1>
        </center>
        <hr>
        <!---librerias de conexion>
        <%@page import="java.sql.*" %>
       <%@page import="conexionbd.Conexion"%> 
      
        <!---/librerias de conexion>
<!Llamada a la conexxion de base de datos y variables, intruccion sql para insertar--->
    <%
       Conexion conexion=new Conexion("jdbc:mysql://localhost/bddtiayala","root", "");  
       String nombre= request.getParameter("nombre");
       String curp= request.getParameter("curp");
     int diashosp= Integer.parseInt(request.getParameter("diashosp"));
     int cobdia= Integer.parseInt(request.getParameter("cobdia"));
     int total= diashosp*cobdia;
    String altaQuery= "INSERT INTO pacientes VALUES ('"+nombre+"', '"+curp+"', '"+diashosp+"', '"+total+"')";
    int c = conexion.ejecutaSentencia(altaQuery);
    
    
    
    if(c==1){//Inicia if
    %> 
    <div class="container">
        <div class="jumbotron" >
            <center>
                <h2>Confirma alta de registro Paciente</h2>
                <img src="img/mac.png" class="img img-responsive" alt="list"/>
                <hr>
                <div class="thumbnail" >
                    <h2>Se agrego de forma exitosa un nuevo Paciente</h2>
                    <hr>
                    <h3>Nombre: <%= nombre %></h3>
                    <h3>Curp : <%= curp %></h3>
                    <h3>Dias hospitalizacion: <%= diashosp %></h3>
                    <h3>Cobro por dia: <%= cobdia %></h3>  
                    <h3>Total: <%= total %></h3>
                 </div>
                  <hr>
                       <h3>Fecha y hora del sistema: <%= new java.util.Date()%> </h3>
                       <a href="alta.html"><h4>Regresar a Menu Principal</h4></a>
                       <a href="consulta.jsp"><h4>Consulta Pacientes</h4></a>
            </center>
            <%
            }
            %>   
        </div>
    </div>
     <!Termina llamada a la conexxion de base de datos--->
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