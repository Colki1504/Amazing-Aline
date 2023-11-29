# Amazing-Aline
<div>
<img src="https://cdn.discordapp.com/attachments/741868910865023060/1179070870480760923/zyro-image.png?ex=65787251&is=6565fd51&hm=bb69c0bad986829522cfef51c3665267a88bef28b19548d6125bab8bfb6a17ac&">

Para utilizar o Amazing Aline, um site dedicado a consultas de voos, é necessário ter um banco de dados MySQL configurado conforme as tabelas especificadas abaixo. Certifique-se de criar o banco de dados amazing e as seguintes tabelas:
</div>
<h1>Tabela Clientes </h1> </br>
CREATE TABLE cliente ( </br>
  idUser INT PRIMARY KEY AUTO_INCREMENT, </br>
  nome VARCHAR(50), </br>
  email VARCHAR(50), </br>
  cpf VARCHAR(12), </br>
  cidade VARCHAR(50), </br>
  passaporte VARCHAR(50), </br>
  senha VARCHAR(50)  </br>
);

<h1>Tabela Companhia</h1></br>

CREATE TABLE Companhia ( </br>
  idComp INT PRIMARY KEY AUTO_INCREMENT, </br>
  nome VARCHAR(50), </br>
  email VARCHAR(50), </br>
  cnpj VARCHAR(20), </br>
  senha VARCHAR(20) </br>
); </br>


<h1>Tabela Passagem</h1> </br>

CREATE TABLE passagem ( </br>
  idPassagem INT PRIMARY KEY AUTO_INCREMENT,  </br>
  localDeSaida VARCHAR(25), </br>
  diaDeSaida VARCHAR(10), </br>
  diaDeChegada VARCHAR(10), </br>
  horarioDeSaida VARCHAR(5), </br>
  horarioDechegada VARCHAR(5), </br>
  localDeChegada VARCHAR(25), </br>
  localDeEntrada VARCHAR(25), </br>
  adulto INT, </br>
  crianca INT, </br>
  bebe INT, </br>
  duracao INT,  </br>
  valor DOUBLE </br>
); </br>

<h1>Tabela Voos</h1> </br>
CREATE TABLE voos ( </br>
  localDeSaida VARCHAR(25), </br>
  diaDeSaida VARCHAR(10), </br>
  horarioDeSaida VARCHAR(5), </br>
  localDeChegada VARCHAR(25), </br>
  duracao INT, </br>
  valor DOUBLE </br>
); 
</br>


Essas instruções SQL criam um banco de dados chamado amazing e quatro tabelas relacionadas a clientes, companhias aéreas, passagens e informações de voos. Certifique-se de que o seu ambiente MySQL esteja configurado corretamente e execute essas instruções no seu banco de dados antes de usar o Amazing Aline.  </br>

**obrigado por ter lida até aqui.**
