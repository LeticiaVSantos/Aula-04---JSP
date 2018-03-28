

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <%@include file="WEB-INF/jspf/favicon.jspf" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 04: JSP Tabuada</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
    <center>
        <h1>Aula 04</h1><br/>
        <h2>JSP</h2><br/>
        <h3>Tabuada:</h3><br/>
        
         <form>
            
            Número: <input type="text" name="num"/>
            <input type="submit" name="Gerar"/><br/>
            
        </form>
        <hr/>
        
        <%try{%>
            <%int num = Integer.parseInt(request.getParameter("num"));%>
             
            <table border="0">
                <%for (int i=1; i<=10; i++) {%>
                <tr>
                
                <th><%= num %> x <%= i%></th>
                <td><%= (int) (num*i) %></td>
            </tr>
            
            <%}%>
            
            </table>

               <%}catch(Exception ex) {%> 
         
              Informe a quantidade de números aleatórios desejada
              e clique em "Gerar" no formulário acima.
              
         <%}%> 
         
    </center>
    
     <%@include file="WEB-INF/jspf/footer.jspf" %>
    
    </body>
</html>
