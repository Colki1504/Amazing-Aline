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
  
    .botoes {
      justify-content: space-between;
      margin: 10px;
    }

    .form {
      display: flex;
      flex-direction: column;
      margin-top: 20px;
    }

    label {
      font-weight: bold;
      margin-bottom: 5px;
    }

    .info {
      margin-bottom: 10px;
    }

    .delete-button {
      background-color: #ff6666;
      color: #fff;
      padding: 15px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .delete-button:hover {
      background-color: #cc0000;
    }
  </style>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Excluir Voo</title>
</head>
<body>

<div class="container">
  <div class="header">
    <div>Companhia - Excluir Voo</div>
  </div>
  <div class="botoes">
    <button class="button" onclick="abrirPagina('inicio.jsp')">Inicial</button>
  </div>
                  <%
          
        try{
            
        Read read = new Read();
        ArrayList<PassagemMVC> lista = read.pesquisarPassagem();
        
        for(int num = 0; num < lista.size(); num++){
            
      %>
  <div class="form">
    <label for="localSaida">Local de Saída:</label>
    <div class="info" id="localSaida"><% out.print(lista.get(num).getLocalSaida() + "<br>"); %></div>

    <label for="horaSaida">Hora de Saída:</label>
    <div class="info" id="horaSaida"><% out.print(lista.get(num).getHoraSaida() + "<br>"); %></div>

    <label for="destino">Destino:</label>
    <div class="info" id="destino">São paulo</div>

    <label for="horaChegada">Hora de Chegada:</label>
    <div class="info" id="horaChegada">16:00</div>

    <label for="diaChegada">Dia de Chegada:</label>
    <div class="info" id="diaChegada">15/04/2004</div>

    <label for="localEntrada">Local de Entrada:</label>
    <div class="info" id="localEntrada"><% out.print(lista.get(num).getLocalEntrada() + "<br>"); %></div>

    <label for="adulto">Número de Adultos:</label>
    <div class="info" id="adulto"><% out.print(lista.get(num).getAdulto() + "<br>"); %></div>

    <label for="crianca">Número de Crianças:</label>
    <div class="info" id="crianca"><% out.print(lista.get(num).getCrianca() + "<br>"); %></div>

    <label for="bebe">Número de Bebês:</label>
    <div class="info" id="bebe"><% out.print(lista.get(num).getBebe() + "<br>"); %></div>

    <label for="valor">Valor:</label>
    <div class="info" id="valor"><% out.print("R$:"+lista.get(num).getValor() + "<br>"); %></div>
            <%        

            }
        
        
            }
        catch(Exception e){}
        
        %>
    
    <button class="delete-button" onclick="deleteVoo()">Delete</button>
  </div>
</div>

<script>
  function abrirPagina(pagina) {
    window.location.href = pagina;
  }

  function deleteVoo() {
    // Adicione aqui o código para realizar a exclusão do voo
    alert('Voo excluído com sucesso!');
    abrirPagina('inicio.jsp'); // Redireciona para a página inicial após a exclusão (pode ajustar conforme necessário)
  }
</script>

</body>
</html>
