<%-- 
    Document   : deleteVoos
    Created on : 28 de nov. de 2023, 09:11:12
    Author     : RickQ
--%>

<%@page import="MVC.PassagemMVC"%>
<%@page import="DAO.Delete"%>
<%@page import="MVC.VoosMVC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
            
        PassagemMVC passagem = new PassagemMVC(); 
        Delete delete = new Delete();
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        passagem.setIdPassagem(id);
        
        delete.DeletePacotes(passagem);
        
        %>        
        <script> window.location.href='deletadoSucesso.html'; </script> 
        
        <%
        } catch(Exception e){
        
        
            }

        %>
    </body>
</html>
