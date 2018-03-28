
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 04: JSP (Somador)</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
    <center>
        <h1>Aula 04</h1><br/>
        <h2>JSP</h2><br/>
        <h3>Formulário de Soma:</h3><br/>
        
        <form>
            
            <input type="text" name="num_1"/> + <input type="text" name="num_2"/>
            <input type="submit" name="Somar"/><br/>
        </form>
        <hr/>
        
        <%try{%>
            <%double num_1 = Double.parseDouble(request.getParameter("num_1"));%>
             <%double num_2 = Double.parseDouble(request.getParameter("num_2"));%>
              <%double soma = num_1 + num_2;%>

        
        <div>
            
            A soma de <b><%= num_1%></b> e <u><%= num_2 %></u>
            é <b><%= soma %></b>
  
        </div>
            
         <%}catch(Exception ex) {%>  
         
              Informe valores válidos e clique em "Somar" no formulário acima.
         <%}%>     
        
    </center>
    
     <%@include file="WEB-INF/jspf/footer.jspf" %>
    
    </body>
</html>
