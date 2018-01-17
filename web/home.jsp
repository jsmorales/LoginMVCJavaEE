<%-- 
    Document   : home
    Created on : 17-ene-2018, 11:03:57
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Retomando las variables pasadas por url-->
        <%String val = request.getParameter("nombre");%>        
        <h1>Bienvenido <%=val%></h1>
    </body>
</html>
