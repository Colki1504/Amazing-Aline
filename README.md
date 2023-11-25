# Amazing-Aline


Para utilizar o Amazing Aline, um site dedicado a consultas de voos, é necessário ter um banco de dados MySQL configurado conforme as tabelas especificadas abaixo. Certifique-se de criar o banco de dados amazing e as seguintes tabelas:

<h1>Tabela Clientes </h1> </br>
CREATE TABLE cliente (
  idUser INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50),
  email VARCHAR(50),
  cpf VARCHAR(12),
  cidade VARCHAR(50),
  passaporte VARCHAR(50),
  senha VARCHAR(50)
);

<h1>Tabela Companhia</h1></br>

CREATE TABLE Companhia (
  idComp INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50),
  email VARCHAR(50),
  cnpj VARCHAR(20),
  senha VARCHAR(20)
); </br>


<h1>Tabela Passagem</h1> </br>

CREATE TABLE passagem (
  idPassagem INT PRIMARY KEY AUTO_INCREMENT,
  localDeSaida VARCHAR(25),
  diaDeSaida VARCHAR(10),
  diaDeChegada VARCHAR(10),
  horarioDeSaida VARCHAR(5),
  horarioDechegada VARCHAR(5),
  localDeChegada VARCHAR(25),
  localDeEntrada VARCHAR(25),
  adulto INT,
  crianca INT,
  bebe INT,
  duracao INT, 
  valor DOUBLE
); </br>

<h1>Tabela Voos</h1> </br>
CREATE TABLE voos (
  localDeSaida VARCHAR(25),
  diaDeSaida VARCHAR(10),
  horarioDeSaida VARCHAR(5),
  localDeChegada VARCHAR(25),
  duracao INT,
  valor DOUBLE
); 
</br>


Essas instruções SQL criam um banco de dados chamado amazing e quatro tabelas relacionadas a clientes, companhias aéreas, passagens e informações de voos. Certifique-se de que o seu ambiente MySQL esteja configurado corretamente e execute essas instruções no seu banco de dados antes de usar o Amazing Aline. 

obrigado por ter lida até aqu.
