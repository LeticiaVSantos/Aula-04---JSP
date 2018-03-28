
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <%@include file="WEB-INF/jspf/favicon.jspf" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 04: JSP forms</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
    <center>
        <h1>Aula 04</h1><br/>
        <h2>JSP</h2><br/>
        <h3>Formulário</h3><br/>
        
        <form>
            
            Nome:<br/>
            <input type="text" name="nome"/><br/>
            Idade:<br/>
            <input type="text" name="idade"/><br/><br/>
            <input type="submit" name="Enviar"/><br/>
            
        </form>
        <hr/>
        
        <%
            String nome = request.getParameter("nome");
            String idade = request.getParameter("idade");
        %>
        
        <%if(nome != null && idade != null) {%>
        
        <div>
            Seu nome é <b><%= nome %></b>
            e você tem <u><%= idade %> anos. </u>
            
        </div>
            
         <% } %>   
         
    </center>
    
     <%@include file="WEB-INF/jspf/footer.jspf" %>
    
    </body>
</html>
