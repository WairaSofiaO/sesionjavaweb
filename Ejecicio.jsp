<%-- 
    Document   : Ejecicio
    Created on : 12/02/2020, 08:30:50 PM
    Author     : 503
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Clave correcta</h1>
        <table>
            <tr>
                <td>
                    <jsp:getProperty name="sesionActual" property="usuario" />
                <td>
            </tr>
            
            <tr>
                <td>
                    <jsp:getProperty name="sesionActual" property="jefe" />
                </td>
            </tr>
            
            <tr>
                <td>
                    <jsp:getProperty name="sesionActual" property="rol" />
                </td>
            </tr>
            <tr>
                <td
                    <jsp:getProperty name="sesionActual" property="clave" />
                </td>
            </tr>
               
        </table>
    </body>
</html>
