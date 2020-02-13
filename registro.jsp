<%-- 
    Document   : registro
    Created on : 12/02/2020, 07:00:46 PM
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
        
        <h1>Bienvenido</h1>
        <%
            int zapatos = 350000;
            int tenis = 280000;
            int camisetas = 175000;
            int jeans = 200000;
            double aumJeans = 0.62;
            double aumZapat = 0.8;
            
            out.print("Precio de los zapatos: "+ zapatos+"\n");
            out.print("Precio de los tenis: "+ tenis+"\n");
            out.print("Precio de las camisetas: "+ camisetas+"\n");
            out.print("Precio de los jeans: "+ jeans+"\n");
        %>
        
        <%
            String UsuarioIn ="", RolIn="", JefeIn="", ClaveIn="", mensaje="";
            /*
            if (request.getParameter("txtusuario") !=null){
                UsuarioIn = request.getParameter("txtusuario");
            }
            if (request.getParameter("txtrol") !=null){
                RolIn = request.getParameter("txtrol");
            }
            if (request.getParameter("txtjefe") !=null){
                JefeIn = request.getParameter("txtjefe");
            }
            */
            if (request.getParameter("txtclave").equals("123")){
                ClaveIn = request.getParameter("txtclave");
            }else {
                response.sendRedirect("index.html");
                out.print("<script type=\"text/javascript\">");
                out.print("alert('Clave incorrecta');");
                out.print("location='index.jsp';");
                out.print("</script>");
            }            
        %>
        <!-- Instanciar el bean  
        variable de instancia id = sesionActual
        class beans.sesion donde sesion es la clase java (modelo) de donde 
        scope alcance 
        -->
        <jsp:useBean id="sesionActual" class="beans.sesion" scope="session"/>
        
        
        <!-- Llevar los atributos al bean-->
        <jsp:setProperty name="sesionActual" property="usuario" value="<%=UsuarioIn%>" />
        <jsp:setProperty name="sesionActual" property="rol" value="<%=RolIn%>" />
        <jsp:setProperty name="sesionActual" property="jefe" value="<%=JefeIn%>" />
        <jsp:setProperty name="sesionActual" property="clave" value="<%=ClaveIn%>" />
        
        <!-- Pintar en la vista los datos del bean -->
        
    </body>
</html>
