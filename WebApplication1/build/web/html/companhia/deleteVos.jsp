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
      background-color: #d1eefe; /* Altera��o da cor de fundo */
    }
  
    .container {
      max-width: 800px;
      margin: 20px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center; /* Adi��o para centralizar o conte�do */
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
      background-color: #082929; /* Altera��o da cor do bot�o */
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

    form {
            max-width: 600px; /* Ajuste conforme necess�rio */
            margin: 0 auto;
        }

        label {
            display: inline-block;
            width: 150px; /* Largura fixa para os r�tulos, ajuste conforme necess�rio */
            margin-bottom: 8px;
            font-weight: bold;
        }

        input, select {
            width: 100%; /* Preencher toda a largura dispon�vel */
            border-radius: 30px;
            padding: 15px;

            box-sizing: border-box; /* Inclui a largura da borda e do preenchimento no c�lculo da largura */
            margin-bottom: 8px;
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
      width: 100%;
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
    <form method="post" action="deletar/deleteVoos.jsp">
    <div class="container">
      <div class="header">
        <div>Companhia - Excluir Voo</div>
      </div>
      <div class="botoes">
        <button class="button" onclick="abrirPagina('inicio.jsp')">Inicial</button>
      </div>
        <form>
      <div class="form">
          <div>
        <label for="localSaida">Id do Voo:</label>

        <input type="type" name="id"  value="<%=request.getParameter("id")%>"  >
        </div>

        <div>
        <label for="localSaida">Local de Sa�da:</label>
        <input type="type" name="nome" class="overlap-group" value="<%=request.getParameter("localdeSaida")%>">
        </div>

        <div>
            <label for="horaSaida">Dura��o:</label>
        <input type="type" name="horadeSaida"  
               value="<%=request.getParameter("duraca")%> mim"> 
        </div>

        <div>
            <label for="destino">Destino:</label>
        <input type="type" name=""  value="<%=request.getParameter("destino")%>">
        </div>

        <div>
            <label for="valor">Valor:</label>
        <input type="type" name="id"  value="R$: <%=request.getParameter("valor")%>">
        </div>




        <button class="delete-button" >Delete</button>

      </div>
    </div>
</form>
<script>
  function abrirPagina(pagina) {
    window.location.href = pagina;
  }


</script>

</body>
</html>
