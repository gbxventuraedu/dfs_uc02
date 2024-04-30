-- Apagando banco de dados
DROP database dbGabyBolos;

-- criando banco de dados
CREATE database dbGabyBolos;

-- acessando o banco de dados
USE dbGabyBolos;

-- visualizando as tabelas dentro do DB
SHOW tables;

-- criando tabelas
CREATE TABLE tbFuncionarios(
    codfunc int,
    nome varchar(100),
    email varchar(100),
    telefone char(9)
);

-- Mostrando tabelas
SHOW tables;

DESC tbFuncionarios;

