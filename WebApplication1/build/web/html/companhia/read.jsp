<%-- 
    Document   : read
    Created on : 24 de nov. de 2023, 14:15:09
    Author     : RickQ
--%>

<%@page import="MVC.VoosMVC"%>
<%@page import="java.util.ArrayList"%>
<%@page import="MVC.PassagemMVC"%>
<%@page import="DAO.Read"%>
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
            
        Read read = new Read();
        ArrayList<VoosMVC> listaVoos = read.pesquisarVoos();
        
        out.print("Lista"+ listaVoos.size() + "</br>");
        
        for(int num = 0; num < listaVoos.size(); num++){
            out.print(listaVoos.get(num).getLocalChegada()+ "<br>");
            out.print( listaVoos.get(num).getLocalDeSaida()+ "<br>");
            out.print(listaVoos.get(num).getHoraSaida()+ "<br>");
            out.print(listaVoos.get(num).getLocalChegada()+ "<br>");
            }
        
        
            }
        catch(Exception e){}
        
        %>
        
    </body>
</html>
