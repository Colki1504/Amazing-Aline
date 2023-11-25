<%@page import="MVC.VoosMVC"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.Read"%>
<%@page import="MVC.PassagemMVC"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #d1eefe; /* Alteração da cor de fundo */
    }
  
    .container {
      max-width: 800px;
      margin: 20px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center; /* Adição para centralizar o conteúdo */
    }
  
    .header {
      background-color: #082929;
      color: #fff;
      padding: 10px;
      text-align: center;
      font-size: 24px;
      border-radius: 4px;
      margin-bottom: 20px;
    }
  
    .button {
      background-color: #082929; /* Alteração da cor do botão */
      color: #fff;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-right: 10px;
    }
  
    .button:hover {
      background-color: #082929;;
    }
  
    .form {
      display: flex;
      flex-direction: column;
    }
  
    input, label, button {
      margin-bottom: 10px;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
  
    .date-container {
      display: flex;
      justify-content: space-between;
      margin-bottom: 10px;
    }
  
    #includeHotel {
      margin-right: 5px;
    }
  
    .submit-button {
      background-color: #2ecc71;
      color: #fff;
      border: none;
      border-radius: 4px;
      padding: 10px;
      cursor: pointer;
    }
  
    .submit-button:hover {
      background-color: #27ae60;
    }
    .botoes{
      justify-content: space-between;
    }
    table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

th {
  background-color: #f2f2f2;
}

tr:hover {
  background-color: #f5f5f5;
}

    td a button {
      background-color: #ff6666; /* Cor vermelha */
      color: #fff; /* Cor do texto */
      padding: 8px 12px; /* Espa�amento interno do bot�o */
      border: none; /* Sem borda */
      border-radius: 4px; /* Bordas arredondadas */
      cursor: pointer; /* Cursor de ponteiro ao passar por cima */
      transition: background-color 0.3s, color 0.3s, box-shadow 0.3s; /* Adicionando transi��o para suavizar as altera��es */
    }

    /* Efeito hover para o bot�o de delete */
    td a button:hover {
      background-color: #cc0000; /* Cor mais escura ao passar o mouse */
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Sombra ao passar o mouse */
    }
    .buy-button {
  background-color: #ffcc00; /* Cor amarela */
  color: #000; /* Cor do texto */
  padding: 10px 20px; /* Espa�amento interno do bot�o */
  font-size: 16px; /* Tamanho da fonte */
  border: 2px solid #ffcc00; /* Borda de 2 pixels s�lidos com a mesma cor do fundo inicial */
  border-radius: 4px; /* Bordas arredondadas */
  cursor: pointer; /* Cursor de ponteiro ao passar por cima */
  transition: background-color 0.3s, color 0.3s, border-color 0.3s; /* Adicionando transi��o para suavizar as altera��es de cor */
}

/* Efeito hover para o bot�o */
.buy-button:hover {
  background-color: #ffd700; /* Nova cor ao passar o mouse */
  color: #333; /* Nova cor do texto ao passar o mouse */
  border-color: #ffd700; /* Nova cor da borda ao passar o mouse */
}

/* Efeito hover para o bot�o */
.buy-button:hover {
  background-color: #ffd700; /* Altera��o da cor ao passar o mouse */
}

a { 
  color: #fff; /* Cor padr�o do texto do link */
  text-decoration: none; /* Remover sublinhado padr�o */
  transition: color 0.3s; /* Adicionando uma transi��o para suavizar a mudan�a de cor */
  cursor: pointer; 
}

/* Efeito hover para a tag <a> */
a:hover {
  color: #ff9900; /* Nova cor ao passar o mouse sobre o link */
}
.buy-button {
  background-color: #ffcc00; /* Cor amarela */
  color: #000; /* Cor do texto */
  padding: 10px 20px; /* Espa�amento interno do bot�o */
  font-size: 16px; /* Tamanho da fonte */
  border: 2px solid #ffcc00; /* Borda de 2 pixels s�lidos com a mesma cor do fundo inicial */
  border-radius: 4px; /* Bordas arredondadas */
  cursor: pointer; /* Cursor de ponteiro ao passar por cima */
  transition: background-color 0.3s, color 0.3s, border-color 0.3s; /* Adicionando transi��o para suavizar as altera��es de cor */
}

/* Efeito hover para o bot�o */
.buy-button:hover {
  background-color: #ffd700; /* Nova cor ao passar o mouse */
  color: #333; /* Nova cor do texto ao passar o mouse */
  border-color: #ffd700; /* Nova cor da borda ao passar o mouse */
}

/* Efeito hover para o bot�o */
.buy-button:hover {
  background-color: #ffd700; /* Altera��o da cor ao passar o mouse */
}

a { 
  color: #fff; /* Cor padr�o do texto do link */
  text-decoration: none; /* Remover sublinhado padr�o */
  transition: color 0.3s; /* Adicionando uma transi��o para suavizar a mudan�a de cor */
  cursor: pointer; 
}

/* Efeito hover para a tag <a> */
a:hover {
  color: #ff9900; /* Nova cor ao passar o mouse sobre o link */
}
  </style>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cadastro de Voos</title>
</head>
<body>

<div class="container">
  <div class="header">
    <div>Companhia</div>
  </div>
  <div class="botoes">
  <button class="button" onclick="abrirPagina('voo.html')">Voo</button>
  <button class="button" onclick="abrirPagina('inicio.jsp')">Inicial</button>
  <button class="button" onclick="abrirPagina('pacote.html')">Pacotes</button>
  </div>
    
    
    <form method="post" action="delete.jsp" class="form">

      <h1>Tabela de Pacotes</h1>
    <table>
      <thead>
        <tr>
          <th>Local da Saida</th>
          <th>Hora Saidda</th>
          <th>Destino</th>
          <th>Hora Chegada</th>
          <th>Dia Chegada</th>
          <th>Local Entrada</th>
          <th>Adulto</th>
          <th>Crian�a</th>
          <th>Bebe</th>
          <th>Valor</th>
          
        </tr>
      </thead>
      <tbody>
        <!-- Adicione linhas conforme necessário -->
              <%
          
        try{
            
        Read read = new Read();
        ArrayList<PassagemMVC> lista = read.pesquisarPassagem();
        
        for(int num = 0; num < lista.size(); num++){
            
      %>
        <tr>
          <td><% out.print(lista.get(num).getLocalSaida() + "<br>"); %></td>
          <td><% out.print(lista.get(num).getHoraSaida() + "<br>"); %></td>
          <td><% out.print(lista.get(num).getLocalChegada() + "<br>"); %></td>
          <td><% out.print(lista.get(num).getHorachegada() + "<br>"); %></td>
          <td><% out.print(lista.get(num).getDiaChegada() + "<br>"); %></td>
          <td><% out.print(lista.get(num).getLocalEntrada() + "<br>"); %></td>
          <td><% out.print(lista.get(num).getAdulto() + "<br>"); %></td>
          <td><% out.print(lista.get(num).getCrianca() + "<br>"); %></td>
          <td><% out.print(lista.get(num).getBebe() + "<br>"); %></td>
          <td><% out.print("R$:"+lista.get(num).getValor() + "<br>"); %></td>
          

        </tr> <br>
        <!-- Adicione mais linhas conforme necessário -->
      </tbody>
      <td> <a href="delete.jsp"><button>Deletar</button></a> </td>
      
                <%
          
            }
        
        
            }
        catch(Exception e){}
          
          %>
    </table>
  <form method="post" action="#" class="form">
<h1>Tabela de Voos</h1>
        <table>
      <thead>

        <tr>
          <th>Local de Sa�da</th>
          <th>Local de entrada</th>
          <th>Dura��o</th>
          <th>Valor</th>
          <th>Deletar</th>
        </tr>
      </thead>
      <tbody>
        <!-- Adicione linhas conforme necessário -->
                          <%
        
        try{
            
        Read read = new Read();
        ArrayList<VoosMVC> listaVoos = read.pesquisarVoos();
        
        for(int num = 0; num < listaVoos.size(); num++){
        %>
        <tr>
          <td> <%out.print(listaVoos.get(num).getLocalChegada());%> </td>
          <td> <%out.print( listaVoos.get(num).getLocalDeSaida());%> </td>
          <td> <%out.print(listaVoos.get(num).getDuraca());%>Min</td>
          <td> <%out.print(listaVoos.get(num).getLocalChegada());%> </td>
          <td> <a href="delete.jsp"><button>Deletar</button></a> </td>
        </tr>
        <%        

            }
        
        
            }
        catch(Exception e){}
        
        %>
        
        <!-- Adicione mais linhas conforme necessário -->
      </tbody>
    </table>
  </form>
</div>

<script>
  function abrirPagina(pagina) {
    window.location.href = pagina;
  }
</script>

</body>
</html>