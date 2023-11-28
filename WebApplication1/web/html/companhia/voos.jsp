<%-- 
    Document   : voos
    Created on : 24 de nov. de 2023, 11:00:04
    Author     : RickQ
--%>

<%@page import="DAO.Create"%>
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
        
        VoosMVC voos = new VoosMVC();
        int duraca = Integer.parseInt(request.getParameter("durc"));
        double valor = Integer.parseInt(request.getParameter("valor"));

        voos.setLocalDeSaida(request.getParameter("localDeSaida"));
        voos.setLocalChegada(request.getParameter("localChegada"));
        voos.setDiaSaida(request.getParameter("diaSaida"));
        voos.setHoraSaida(request.getParameter("horaSaida"));
        voos.setValor(valor);
        voos.setDuraca(duraca);
        
        Create create = new Create();
        create.cadastrarVoos(voos);
        %>
        <script> window.location.href='TLCadastroSucesso.html'; </script>
    </body>
</html>
