<%-- 
    Document   : index
    Created on : ago 20, 2017, 1:08:38 p.m.
    Author     : HP
--%>



<%@page import="java.util.List"%>
<%@page import="services.webservices.Institucion"%>
<%@page import="java.text.DateFormat"%> 
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion Sistema de Matriculación Control y Registro</title>
        
        <script type="text/javascript"> 
            function texto(e){
                            key = e.keyCode || e.which;
                            teclado = String.fromCharCode(key).toLowerCase();
                            nombre = " abcdefghijklmnñopqrstuvwxyz";
                            especiales = "8-37-38-46-164";
                            teclado_especial = false;
                            for (var i in especiales){
                                if(key==especiales[i]){
                                    teclado_especial = true; break;
                                }
                            }
                            if(nombre.indexOf(teclado)==-1 && !teclado_especial){
                                return false;
                            }
                        }
                        function numeros(k){
                            key = k.keyCode || k.which;
                            teclado = String.fromCharCode(key);
                            nume = "0123456789.$";
                            especi = "8-37-38-46";
                            tec_espe = false;
                            for (var c in especi){
                                if(key==especi[c]){
                                    tec_espe = true;
                                }
                            }
                            if(nume.indexOf(teclado)==-1 && !tec_espe){
                                return false;
                            }
                        }
                
        </script>
        
        <style type="text/css">
        body
        { 
             background-image: url();
	     background-color: #CCCCCC;
	     border: 0px solid #009900;
	     height: 1650px;
	     width: 720px;
	     margin-left: 300px;
	     padding-left:5px;
	     padding-right:5px;   
        }
        table {
            font: 75%/1.5em arial, times, sans-serif;
            border-collapse: separate;
            border-width: medium;
            border-spacing: 5px;
            
        }
        td {
            border-bottom: 1px ridge #fff;
            border-left: 1px ridge #fff;
            vertical-align: inherit;
            padding: 5px;
            border-style:groove;
            
        }
        tr {
            background: #63D300; 
        }
        </style>

    </head>
    <body>
        
            <font size="6">
            <b>
                <center>
                    <header style="color: #188EE5">Sistema de Matriculacion Control y Registro de Estudiantes y Docentes</header>
                </center>
            
            </b>
            </font>
        
        <h1>Ingresar Institución</h1>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	services.webservices.ServicesWS_Service service = new services.webservices.ServicesWS_Service();
	services.webservices.ServicesWS port = service.getServicesWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String administrador = request.getParameter("administrador");
	int contrasena = Integer.parseInt(request.getParameter("contrasena"));
	// TODO process result here
        java.lang.String result = port.ingresarInstitucion(administrador, contrasena);
	out.println("<font color='#F40C0C'>"+result+"</font>"); 
    } catch (Exception ex) {
	out.println("<font color='#F40C0C'>"+"No se ingreso correctamente" +" "+ "</font>");
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    <form action="index.jsp" method="post">
            <table border="2" align="center">
                <tr>
                    <th>Administrador/a:</th>
                    <td><input type="text" name="administrador" size="40" required></td>
                </tr>
                <tr>
                    <th>Contraseña:</th>
                    <td><input type="password" name="contrasena" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Enviar"></td>
                </tr> 
            </table>
        </form>
    
    
    <h2>Buscar Institución</h2>
        <%-- start web service invocation --%><hr/>
    <%
    try {
	services.webservices.ServicesWS_Service service = new services.webservices.ServicesWS_Service();
	services.webservices.ServicesWS port = service.getServicesWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String administrador = request.getParameter("administrador");
	// TODO process result here
	java.lang.String result = port.buscarInstitucion(administrador);
	out.println("<font color='#F40C0C'>"+"Resultado de la consulta:  "+result +" "+ "</font>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    <form action="index.jsp" method="post">
            <table border="3" align="center">
                <tr>
                    <th>Administrador/a:</th>
                    <td><input type="text" name="administrador" size="40" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Buscar"></td>
                </tr>
            </table>
        </form>
    
    
    <h1>Ingresar Docentes</h1>
        <%-- start web service invocation --%><hr/>
    <%
    try {
	services.webservices.ServicesWS_Service service = new services.webservices.ServicesWS_Service();
	services.webservices.ServicesWS port = service.getServicesWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String codDocente = request.getParameter("codDocente");
	java.lang.String codEstudiante = request.getParameter("codEstudiante");
	java.lang.String administrador = request.getParameter("administrador");
	java.lang.String nombre = request.getParameter("nombre");
	java.lang.String apellido = request.getParameter("apellido");
	int cedula = Integer.parseInt(request.getParameter("cedula"));
	java.lang.String directorA = request.getParameter("directorA");
	java.lang.String sexo = request.getParameter("sexo");
	int anoLectivo = Integer.parseInt(request.getParameter("anoLectivo"));
	// TODO process result here
	java.lang.String result = port.ingresarDocente(codDocente, codEstudiante, administrador, nombre, apellido, cedula, directorA, sexo, anoLectivo);
	out.println("<font color='#0B190F'>"+result +" "+ "</font>"); 
        System.out.println("");  
    } catch (Exception ex) {
	out.println("<font color='#0B190F'>"+"No se ingreso correctamente" +" "+ "</font>");
    }
    %>
    <%-- end web service invocation --%><hr/>


    
    <form action="index.jsp" method="post">
            <table border="3" align="center">
                <tr>
                    <th>Codigo_Docente:</th>
                    <td><input type="text" name="codDocente" onkeypress="return numeros(event)" size="10" required></td>
                </tr>
                <tr>
                    <th>Codigo_Estudiante:</th>
                    <td><input type="text" name="codEstudiante" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <th>Administrador/a:</th>
                    <td><input type="text" name="administrador" size="40" required></td>
                </tr>
                <tr>
                    <th>Nombre:</th>
                    <td><input type="text" name="nombre" size="40" required></td>
                </tr>
                <tr>
                    <th>Apellido:</th>
                    <td><input type="text" name="apellido" size="40" required></td>
                </tr>
                <tr>
                    <th>Cedula:</th>
                    <td><input type="int" name="cedula" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <th>Director/a:</th>
                    <td><input type="text" name="directorA" size="40" required></td>
                </tr>
                <tr>
                    <th>Sexo:</th>
                    <td><input type="text" name="sexo" onkeypress="return texto(event)" size="15" required></td>
                </tr>
                <tr>
                    <th>Año_Lectivo:</th>
                    <td><input type="int" name="anoLectivo" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Enviar"></td>
                </tr> 
            </table>
        </form>
    
    
    <h2>Buscar Docentes</h2>
        <%-- start web service invocation --%><hr/>
    <%
    try {
	services.webservices.ServicesWS_Service service = new services.webservices.ServicesWS_Service();
	services.webservices.ServicesWS port = service.getServicesWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String codDocente = request.getParameter("codDocente");
	// TODO process result here
	java.lang.String result = port.buscarDocente(codDocente);
	out.println("<font color='#0B190F'>"+"Resultado de la consulta: " +" "+result+" "+"</font>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    <form action="index.jsp" method="post">
            <table border="3" align="center">
                <tr>
                    <th>Codigo_Docente:</th>
                    <td><input type="text" name="codDocente" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Buscar"></td>
                </tr>
            </table>
        </form>
    
    
    <h1>Ingresar Estudiantes</h1>
               <%-- start web service invocation --%><hr/>
    <%
    try {
	services.webservices.ServicesWS_Service service = new services.webservices.ServicesWS_Service();
	services.webservices.ServicesWS port = service.getServicesWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String codEstudiante = request.getParameter("codEstudiante");
	int cedula = Integer.parseInt(request.getParameter("cedula"));
	java.lang.String nombre = request.getParameter("nombre");
	java.lang.String apellido = request.getParameter("apellido");
	int grado = Integer.parseInt(request.getParameter("grado"));
	java.lang.String sexo = request.getParameter("sexo");
	java.lang.String paralelo = request.getParameter("paralelo");
	java.lang.String fechaMatricula = request.getParameter("fechaMatricula");
	int anoLectivo = Integer.parseInt(request.getParameter("anoLectivo"));
	// TODO process result here
	java.lang.String result = port.ingresarEstudiante(codEstudiante, cedula, nombre, apellido, grado, sexo, paralelo, fechaMatricula, anoLectivo);
	out.println("<font color='#DF7B09'>"+result+" "+ "</font>"); 
    } catch (Exception ex) {
	out.println("<font color='#DF7B09'>"+"No se ingreso correctamente" +" "+ "</font>");
    }
    %>
    <%-- end web service invocation --%><hr/>

    
    
    <form action="index.jsp" method="post">
            <table border="3" align="center">
                <tr>
                    <th>Codigo_Estudiante:</th>
                    <td><input type="text" name="codEstudiante" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <th>Cedula:</th>
                    <td><input type="int" name="cedula" onkeypress="return numeros(event)" size="40" required></td>
                </tr>
                <tr>
                    <th>Nombre:</th>
                    <td><input type="text" name="nombre" size="40" required></td>
                </tr>
                <tr>
                    <th>Apellido:</th>
                    <td><input type="text" name="apellido" size="40" required></td>
                </tr>
                <tr>
                    <th>Grado:</th>
                    <td><input type="int" name="grado" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <th>Sexo:</th>
                    <td><input type="text" name="sexo" onkeypress="return texto(event)" size="40" required></td>
                </tr>
                <tr>
                    <th>Paralelo:</th>
                    <td><input type="text" name="paralelo" onkeypress="return texto(event)" size="15" required></td>
                </tr>
                <tr>
                    <th>Fecha_Matricula:</th>
                    <td><input type="text" name="fechaMatricula" format="dd/MM/yyyy" size="15" required></td>
                </tr>
                <tr>
                    <th>Año_Lectivo:</th> 
                    <td><input type="int" name="anoLectivo" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Enviar"></td>
                </tr> 
            </table>
        </form>
    
    
    <h2>Buscar Estudiantes</h2>
        <%-- start web service invocation --%><hr/>
    <%
    try {
	services.webservices.ServicesWS_Service service = new services.webservices.ServicesWS_Service();
	services.webservices.ServicesWS port = service.getServicesWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String codEstudiante = request.getParameter("codEstudiante");
	// TODO process result here
	java.lang.String result = port.buscarEstudiante(codEstudiante);
	out.println("<font color='#DF7B09'>"+"Resultado de la consulta:  " +" "+result +" "+ "</font>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    <form action="index.jsp" method="post">
            <table border="3" align="center">
                <tr> 
                    <th>Codigo Estudiante:</th>
                    <td><input type="text" name="codEstudiante" onkeypress="return numeros(event)" size="15" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Buscar"></td>
                </tr>
            </table>
       </form>
    
<p>
        <center> <font size=5
            <footer style="color: #E88E29"> &copy; Copyright 2017 - Ingeniería de Software 2.</footer>
            </font> </center </p>



    </body>
</html>
