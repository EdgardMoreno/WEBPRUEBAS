<%-- 
    Document   : login
    Created on : 08/02/2018, 01:22:52 PM
    Author     : emoreno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ValidarServlet" method="POST">
            <h5>LOGIN</h5>
            <label>Usuario:</label>
            <input type="text" name="usuario" id="usuario" value="emoreno"/>
            <br/>
            <label>PassWord</label>
            <input type="password" name="password" id="password" value="123" />
            <br/>
            <input type="submit" value="Iniciar Sesion" /> Contraseña -> 123
            
            <h5>OTRO EJEMPLO MAS COMPLETO: https://www.journaldev.com/7252/jsf-authentication-login-logout-database-example</h5>
            
        </form>
    </body>
</html>
