<%@page import="MVC.VoosMVC"%>
<%@page import="java.util.ArrayList"%>
<%@page import="MVC.PassagemMVC"%>
<%@page import="DAO.Read"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
body {
  font-family: 'Arial', sans-serif;
  margin: 0;
  padding: 0;
  background-color: #d1eefe;
}

.container {
  max-width: 850px;
  margin: 20px auto;
  background-color: #fff;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  text-align: center;
}

.header {
    background-color: #082929;
    color: #fff;
    padding: 10px;
    text-align: center;
    font-size: 24px;
    border-radius: 4px;
    margin-bottom: 20px;
    display: flex; /* Adicionando display: flex para o container pai */
    justify-content: space-between; /* Distribuindo o espaço entre os filhos */
  }

  .header div {
    flex: 1; /* Fazendo as divs ocuparem o mesmo espaço */
  }

.form {
  display: flex;
  flex-direction: column;
}

.table-container {
  margin-top: 20px;
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

.button {
  background-color: #082929;
  color: #fff;
  padding: 10px 15px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin-right: 10px;
}

.button:hover {
  background-color: #082929;
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

.buy-button {
  background-color: #ffcc00; /* Cor amarela */
  color: #000; /* Cor do texto */
  padding: 10px 20px; /* Espaçamento interno do botão */
  font-size: 16px; /* Tamanho da fonte */
  border: 2px solid #ffcc00; /* Borda de 2 pixels sólidos com a mesma cor do fundo inicial */
  border-radius: 4px; /* Bordas arredondadas */
  cursor: pointer; /* Cursor de ponteiro ao passar por cima */
  transition: background-color 0.3s, color 0.3s, border-color 0.3s; /* Adicionando transição para suavizar as alterações de cor */
}

/* Efeito hover para o botão */
.buy-button:hover {
  background-color: #ffd700; /* Nova cor ao passar o mouse */
  color: #333; /* Nova cor do texto ao passar o mouse */
  border-color: #ffd700; /* Nova cor da borda ao passar o mouse */
}

/* Efeito hover para o botão */
.buy-button:hover {
  background-color: #ffd700; /* Alteração da cor ao passar o mouse */
}

a { 
  color: #fff; /* Cor padrão do texto do link */
  text-decoration: none; /* Remover sublinhado padrão */
  transition: color 0.3s; /* Adicionando uma transição para suavizar a mudança de cor */
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
  <div>
    <h3>Amazing Aline</h3>
  </div>
  <div>
      <h2><a href="cliente.jsp">Cliente</a></h2>
  </div>
</div>
  <div class="botoes">
      
          
  </div>
  <form method="post" action="#" class="form">

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
          <th>Criança</th>
          <th>Bebe</th>
          <th>Valor</th>
          
        </tr>
      </thead>
      <tbody>
        <!-- Adicione linhas conforme necessÃ¡rio -->
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
          
          

        </tr> <br><td class=""> <button class="buy-button">Comprar</button> </td>
                 <%
          
            }
        
        
            }
        catch(Exception e){}
          
          %>
      </tbody>
      
    </table>
        <h1>Tabela de Voos</h1>
        <table>
      <thead>

        <tr>
          <th>Local de Saída</th>
          <th>Local de entrada</th>
          <th>Duração</th>
          <th>Valor</th>
          <th>Comprar</th>
        </tr>
      </thead>
      
      <tbody>
        <!-- Adicione linhas conforme necessÃ¡rio -->
                          <%
        
        try{
            
        Read read = new Read();
        ArrayList<VoosMVC> listaVoos = read.pesquisarVoos();
        
        for(int num = 0; num < listaVoos.size(); num++){
        %>
        <tr>
          <td> <%out.print(listaVoos.get(num).getLocalChegada());%> </td>
          <td> <%out.print( listaVoos.get(num).getLocalDeSaida());%> </td>
          <td> <%out.print(listaVoos.get(num).getDuraca());%>Min </td>
          <td>R$ <%out.print(listaVoos.get(num).getValor());%> </td>
          <td> <button class="buy-button">Comprar</button> </td>
        </tr>
        <%        

            }
        
        
            }
        catch(Exception e){}
        
        %>
        
        <!-- Adicione mais linhas conforme necessÃ¡rio -->
      </tbody>
    </table>
  </form>
</div>
<!--Adicionar cards ou tabela-->
<script>
  function abrirPagina(pagina) {
    window.location.href = pagina;
  }
</script>

</body>
</html>