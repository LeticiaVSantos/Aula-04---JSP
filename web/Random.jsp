
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 04</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
    <center>
        <h1>Aula 04</h1><br/>
        <h2>JSP</h2><br/>
        <h3>Formulário de números aleatórios:</h3><br/>
        
         <form>
            
            Quantidade: <input type="text" name="num"/>
            <input type="submit" name="Gerar"/><br/>
            
        </form>
        <hr/>
        
        <%try{%>
            <%int num = Integer.parseInt(request.getParameter("num"));%>
             
            <table border="1">
            <tr><th>Índice</th><th>Número</th></tr>
            
            <%for(int i=1; i <=num; i++){%>
            <tr>
                <th><%= i %></th>
                <td><%= (int) (Math.random() * 1000) %></td>
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
