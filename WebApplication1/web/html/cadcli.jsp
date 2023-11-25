<%-- 
    Document   : cadcli
    Created on : 23 de nov. de 2023, 22:44:46
    Author     : RickQ
--%>

<%@page import="DAO.Create"%>
<%@page import="MVC.UserMVC"%>
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
            UserMVC cliente = new UserMVC();
            cliente.setNome(request.getParameter("nome"));
            cliente.setEmail(request.getParameter("email"));
            cliente.setCpf(request.getParameter("cpf"));
            cliente.setPassaporte("passaporte");
            cliente.setSenha("senha");
            
            Create create = new Create();
            create.CadastrarCliente(cliente);
            }
            catch(Exception e){ 
            out.print(" Erro" + e.getMessage());
            }

        %>
        
    </body>
</html>
