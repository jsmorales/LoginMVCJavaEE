<%-- 
    Document   : index
    Created on : 16-ene-2018, 16:08:36
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!-- Esto se aplica igual en todas partes-->
        <link rel="stylesheet" href="css/style.css"/>
        
    </head>
    <body>
        <%String val = request.getParameter("error");%>
        <%val = val == null ? "none" : "true";%>
        <h1>Login Page</h1>
        <div style="display:<%= val%>;">
            <p>Error de autenticación, inténtelo de nuevo</p>
        </div>
        <div>
            <form action="autenticar" method="POST">
                <label for="user">Usuario</label>
                <input type="text" name="user" id="user"/>
                <br>
                <label for="pass">Contraseña</label>
                <input type="password" name="pass" id="pass"/>
                <br>
                <input type="submit" name="enviar" id="enviar"/>
            </form>
            
            <button id="btn01">Saludar!</button>
        </div>        
        <script src="js/login.js"></script>
    </body>
</html>
