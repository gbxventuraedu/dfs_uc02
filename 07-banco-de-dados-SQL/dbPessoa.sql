-- Excluindo e recriando Database
DROP DATABASE dbPessoa;
CREATE DATABASE dbPessoa;
USE dbPessoa;
-- Criando tabela

CREATE TABLE tbFuncionarios(
    idFunc INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone CHAR(14) UNIQUE,
    endereco VARCHAR(100),
    numero INT(10),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(20),
    PRIMARY KEY(idFunc)
);

-- INSERINDO DADOS NA TABELA
INSERT INTO tbFuncionarios(nome, email, telefone, endereco, numero, bairro, cidade, estado)
VALUES ("Gabriel Ventura", "gabriel.ventura@senacsp.edu.br", "(11)91651-6413", "Rua da Feclidade", 235, "Interlagos", "Sao Paulo","Sao Paulo");

INSERT INTO tbFuncionarios(nome, email, telefone, endereco, numero, bairro, cidade, estado)
VALUES ("Roberto da Silva ", "roberto.silva@senacsp.edu.br", "(11)92454-0294", "Rua das beutranas", 2456, "Bela Vista", "Sao Paulo","Sao Paulo");

INSERT INTO tbFuncionarios(nome, email, telefone, endereco, numero, bairro, cidade, estado)
VALUES ("Valeria de Santos", "valeria.dSantos@senacsp.edu.br", "(12)94673-9345", "Rua da Merceds", 1000, "Jabaquara", "Sao Paulo","Sao Paulo");

INSERT INTO tbFuncionarios(nome, email, telefone, endereco, numero, bairro, cidade, estado)
VALUES ("Joao Mirando da Silva", "joao.m.d.silva@senacsp.edu.br", "(11)93456-9024", "Rua de Centro", 9456, "Liberdade", "Sao Paulo","Sao Paulo");

INSERT INTO tbFuncionarios(nome, email, telefone, endereco, numero, bairro, cidade, estado)
VALUES ("Julia Silva Santos Pereira", "juliasilvasanto1023@senacsp.edu.br", "(11)92224-9949", "Rua da preguica", 4555, "Santo Amaro", "Sao Paulo","Sao Paulo");

-- Atualizando dados da tabela
UPDATE tbFuncionarios SET nome = "Rabino Miranda da Silva" WHERE idFunc = 1; 
UPDATE tbFuncionarios SET email = "rabino.mirandasilva@senacsp.edu.br" WHERE idFunc = 1;
UPDATE tbFuncionarios SET telefone = "(11)99999-9999" WHERE idFunc = 1;

-- Deletando dados da tabela
DELETE FROM tbFuncionarios WHERE idFunc = 5;

SELECT * FROM tbFuncionarios;
SELECT nome AS "Nome do Func.", email AS "Email do Func.", telefone AS "Telefone do Func.", endereco AS "Endereco do Func.", numero AS "Numro do Func.", bairro AS "Bairro do Func.", cidade AS "Cidade do Func.", estado AS "Estado do Func." FROM tbFuncionarios;
SELECT nome,email,telefone from tbFuncionarios;
SELECT numero * 2 AS "Numero multiplicado por 2" FROM tbFuncionarios;


CREATE TABLE PRODUTOS(
    codigo, int,
    nome varchar(50),
    tipo varchar(25),
    quantidade int,
    valor decimal(10,2)
);


