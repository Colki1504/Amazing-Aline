<%-- 
    Document   : CadComp
    Created on : 23 de nov. de 2023, 23:58:38
    Author     : RickQ
--%>

<%@page import="DAO.Create"%>
<%@page import="MVC.*"%>
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
            CompanhiaMVC companhia = new CompanhiaMVC();
            companhia.setNome(request.getParameter("nome"));
            companhia.setEmail(request.getParameter("email"));
            companhia.setCnpj(request.getParameter("cnpj"));
            companhia.setLocal(request.getParameter("local"));
            companhia.setSenha(request.getParameter("senha"));
            
            Create create = new Create();
            create.cadastrarCompanhia(companhia);
            }
            catch(Exception e){ 
            out.print(" Erro" + e.getMessage());
            }

        %>
    </body>
</html>
