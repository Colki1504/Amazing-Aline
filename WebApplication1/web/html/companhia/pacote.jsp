<%-- 
    Document   : pacote
    Created on : 24 de nov. de 2023, 00:25:26
    Author     : RickQ
--%>

<%@page import="DAO.Create"%>
<%@page import="MVC.PassagemMVC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        PassagemMVC passagem = new PassagemMVC();
        int adulto,crianca,bebe;
        try{
        adulto = Integer.parseInt(request.getParameter("adulto"));
        crianca = Integer.parseInt(request.getParameter("crianca"));
        bebe = Integer.parseInt(request.getParameter("bebe"));
        
        passagem.setLocalSaida(request.getParameter("localDeSaida"));
        passagem.setDiaSaida(request.getParameter("diaDeSaida"));
        passagem.setHoraSaida(request.getParameter("horaDeSaida"));
        passagem.setLocalChegada(request.getParameter("localDeChegada"));
        passagem.setDiaChegada(request.getParameter("diaDeChegada"));
        passagem.setHorachegada(request.getParameter("horarioDeChegada"));
        passagem.setLocalEntrada(request.getParameter("LocalEntrada"));
        //passagem.setAdulto(adulto);
        passagem.setCrianca(crianca);
        passagem.setBebe(bebe);
         
        
        Create create = new Create();
        create.cadastrarPacotes(passagem);
            }
            catch(Exception e){ 
            out.print(" Erro" + e.getMessage());
            }
        %>
    </body>
</html>
