-- apagando DB se exisitr
DROP DATABASE dbLoja;

-- criando banco de dados
CREATE DATABASE dbLoja;

-- acessando o DB
USE dbLoja;

-- Visualizando o banco de dados
SHOW databases;

-- Criando as tabela
-- tabelas Usuarios
CREATE TABLE tbUsuarios(
    codUsu int,
    nome varchar(50),
    senha varchar(20)
);

-- tabela Funcionarios
CREATE TABLE tbFuncionarios(
    codFunc int,
    nome varchar(100),
    email varchar(100),
    cpf char(14),
    telCel char(10)
);

-- visualizando as tabelas criadas
SHOW TABLES;

-- visualizando as estruturas das tabelas
describe tbUsuarios;
DESC tbFuncionarios;

-- Inserindo valores registros nas tabelas
INSERT INTO tbUsuarios(codUsu, nome, senha) VALUES(1, 'gabriel.ventura', 'senhaforte');

INSERT INTO tbFuncionarios(codFunc, nome, email, cpf, telCel) VALUES(1, 'Gabriel Ventura','gabriel.ventu@gmail.com', '999.999.999-23', '99999-9999');
-- Visualizando os registros nos campos das tabelas
SELECT * FROM tbUsuarios;
SELECT * FROM tbFuncionarios;
