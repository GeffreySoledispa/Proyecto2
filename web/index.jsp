<%-- 
    Document   : index
    Created on : ago 20, 2017, 1:08:38 p.m.
    Author     : HP
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion Sistema_Matriculación</title>
    </head>
    <body>
        
        
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
	out.println("<font color='red'>"+result+"</font>"); 
    } catch (Exception ex) {
	out.println("<font color='red'>"+"No se ingreso correctamente"+"</font>");
    }
    %>
    <%-- end web service invocation --%><hr/>
    

    <form action="index.jsp" method="post">
            <table>
                <tr>
                    <th>Administrador_a:</th>
                    <td><input type="text" name="administrador" size="40" required></td>
                </tr>
                <tr>
                    <th>Contraseña:</th>
                    <td><input type="int" name="contrasena" size="15" required></td>
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
	out.println("<font color='red'>"+"Resultado de la consulta:  "+result+"</font>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    <form action="index.jsp" method="post">
            <table>
                <tr>
                    <th>Administrador_a:</th>
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
	out.println("<font color='orange'>"+result+"</font>"); 
    } catch (Exception ex) {
	out.println("<font color='orange'>"+"No se ingreso correctamente"+"</font>");
    }
    %>
    <%-- end web service invocation --%><hr/>


    
    <form action="index.jsp" method="post">
            <table>
                <tr>
                    <th>Codigo_Docente:</th>
                    <td><input type="text" name="codDocente" size="10" required></td>
                </tr>
                <tr>
                    <th>Codigo_Estudiante:</th>
                    <td><input type="text" name="codEstudiante" size="15" required></td>
                </tr>
                <tr>
                    <th>Administrador_a:</th>
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
                    <td><input type="int" name="cedula" size="15" required></td>
                </tr>
                <tr>
                    <th>Director_a:</th>
                    <td><input type="text" name="directorA" size="40" required></td>
                </tr>
                <tr>
                    <th>Sexo:</th>
                    <td><input type="text" name="sexo" size="15" required></td>
                </tr>
                <tr>
                    <th>Año_Lectivo:</th>
                    <td><input type="int" name="anoLectivo" size="15" required></td>
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
	out.println("<font color='orange'>"+"Resultado de la consulta:  "+result+"</font>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    <form action="index.jsp" method="post">
            <table>
                <tr>
                    <th>Codigo_Docente:</th>
                    <td><input type="text" name="codDocente" size="15" required></td>
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
	javax.xml.datatype.XMLGregorianCalendar fechaMatricula = null;
	int anoLectivo = Integer.parseInt(request.getParameter("anoLectivo"));
	// TODO process result here
	java.lang.String result = port.ingresarEstudiante(codEstudiante, cedula, nombre, apellido, grado, sexo, paralelo, fechaMatricula, anoLectivo);
	out.println("<font color='yellow'>"+result+"</font>"); 
    } catch (Exception ex) {
	out.println("<font color='yellow'>"+"No se ingreso correctamente"+"</font>");
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    <form action="index.jsp" method="post">
            <table>
                <tr>
                    <th>Codigo_Estudiante:</th>
                    <td><input type="text" name="codEstudiante" size="15" required></td>
                </tr>
                <tr>
                    <th>Cedula:</th>
                    <td><input type="int" name="cedula" size="40" required></td>
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
                    <td><input type="int" name="grado" size="15" required></td>
                </tr>
                <tr>
                    <th>Sexo:</th>
                    <td><input type="text" name="sexo" size="40" required></td>
                </tr>
                <tr>
                    <th>Paralelo:</th>
                    <td><input type="text" name="paralelo" size="15" required></td>
                </tr>
                <tr>
                    <th>Fecha_Matricula:</th>
                    <td><input type="date" name="fechaMatricula" size="15" required></td>
                </tr>
                <tr>
                    <th>Año_Lectivo:</th>
                    <td><input type="int" name="anoLectivo" size="15" required></td>
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
	out.println("<font color='yellow'>"+"Resultado de la consulta:  "+result+"</font>");
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    <form action="index.jsp" method="post">
            <table>
                <tr> 
                    <th>Codigo Estudiante:</th>
                    <td><input type="text" name="codEstudiante" size="15" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Buscar"></td>
                </tr>
            </table>
        </form>
    
    


    </body>
</html>
