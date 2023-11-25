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
      max-width: 600px;
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
      padding: 15px 20px; /* Aumento do tamanho do botão */
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-top: 20px; /* Aumento da distância do topo */
    }
  
    .button:hover {
      background-color: #082929;
    }
  
    .botoes {
      justify-content: space-between;
    }

    .form {
      display: flex;
      flex-direction: column;
    }

    label {
      font-weight: bold;
      margin-bottom: 5px;
    }

    .profile-img {
      max-width: 200px; /* Aumento do tamanho da imagem */
      border-radius: 50%;
      margin-bottom: 40px; /* Aumento da distância da imagem */
    }

    h2 {
      color: #082929;
    }
  </style>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Perfil do Cliente</title>
</head>
<body>

<div class="container">
  <div class="header">
    <div>Perfil do Cliente</div>
  </div>

    <div class="botoes">
    <button class="button" onclick="abrirPagina('inicioUser.jsp')">Inicio</button>

   </div>
    <img src="6073873.png" alt="Imagem de Perfil" class="profile-img" width="100px">

  <div class="form">
    <h2>Dados Pessoais</h2>

    <label for="nome">Nome:</label>
    <div id="nome">Nome do Usuário</div>

    <label for="email">Email:</label>
    <div id="email">usuario@email.com</div>

    <label for="cpf">CPF:</label>
    <div id="cpf">123.456.789-00</div>

    <label for="cidade">Cidade:</label>
    <div id="cidade">Nome da Cidade</div>

    <label for="passaporte">Passaporte:</label>
    <div id="passaporte">AB123456</div>
  </div>
</div>

<script>
  function abrirPagina(pagina) {
    window.location.href = pagina;
  }
</script>

</body>
</html>
