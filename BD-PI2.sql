CREATE DATABASE IF NOT EXISTS PI2;
USE PI2;

CREATE TABLE JOGADOR (
   id INT NOT NULL AUTO_INCREMENT,
   nome VARCHAR(60) NOT NULL,
   email VARCHAR(80) NOT NULL,
   apelido VARCHAR(30) NOT NULL,
   senha VARCHAR(30) NOT NULL,
   descricao VARCHAR(50) NOT NULL,
   PRIMARY KEY(id)
) ENGINE=InnoDB;

CREATE TABLE Torneios (
   id int NOT NULL auto_increment,
   data date not null,
   horario time not null,
   descricao  varchar(100) NOT NULL,
   buyin decimal(8,2) not null,
   rebuy decimal(8,2),
   addon decimal(8,2),
   premiacao decimal (8,2),
   deposito decimal (8,2),
   saque decimal (8,2),
   nome_plataforma varchar(40),
   jogador_id INT,  -- Adicionando a coluna jogador_id
PRIMARY KEY(id),
CONSTRAINT fk_jogador
FOREIGN KEY (jogador_id) REFERENCES JOGADOR(id)
) engine=InnoDB;