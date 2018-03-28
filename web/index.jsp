
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 04: JSP</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
    <center>
        <h1>Aula 04</h1><br/>
        <h2>Java Server Pages</h2><br/>
        <h3>Lendo data e hora em scriptlet</h3>
        
        <%
            java.util.Date now = new java.util.Date();
            out.println("Agora, no servidor: " +now);
        %>  
        
        <br/><br/>
        
        <h3>Lendo a data e hora com expression</h3>
        <%= "Agora, no servidor: " + new java.util.Date() %>
        
    </center>
    
    <%@include file="WEB-INF/jspf/footer.jspf" %>
    
    </body>
</html>
