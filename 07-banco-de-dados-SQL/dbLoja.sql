-- apagando DB se exisitr
DROP DATABASE dbLoja;

-- criando banco de dados
CREATE DATABASE dbLoja;

-- acessando o DB
USE dbLoja;

-- Visualizando o banco de dados
SHOW databases;

-- Criando as tabela
-- tabela Funcionarios
CREATE TABLE tbFuncionarios(
    codFunc INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    cpf CHAR(14) NOT NULL UNIQUE,
    telCel CHAR(10),
    logradouro VARCHAR(100),
    numero CHAR(10),
    cep CHAR(9),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    estado CHAR(2),
    PRIMARY KEY(codFunc)
);

-- Criar Fornecedores
CREATE TABLE tbFornecedores(
    codForn INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    cnpj CHAR (16) NOT NULL UNIQUE,
    PRIMARY KEY(codForn)
);
--Clientes
CREATE TABLE tbClientes(
    codCli INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    cpf CHAR (14) NOT NULL UNIQUE,
    PRIMARY KEY (codCli)
);

-- tabelas Usuarios
CREATE TABLE tbUsuarios(
    codUsu INT AUTO_INCREMENT,
    nome VARCHAR(50),
    senha VARCHAR(20),
    codFunc INT NOT NULL,
    PRIMARY KEY(codUsu),
    FOREIGN KEY(codFunc) REFERENCES tbFuncionarios (codFunc)
);

CREATE TABLE tbProdutos(
    codProd INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100),
    valor DECIMAL(9,2),
    quantidade INT,
    data DATE,
    hora TIME,
    codForn INT NOT NULL,
    PRIMARY KEY(codProd),
    FOREIGN KEY(codForn) REFERENCES tbFornecedores(codForn)
);

-- visualizando as tabelas criadas
SHOW TABLES;

-- visualizando as estruturas das tabelas
describe tbUsuarios;
DESC tbFuncionarios;

-- Funcionario 01
INSERT INTO tbFuncionarios(nome, email, cpf, telCel, logradouro, numero, cep, bairro, cidade, estado) VALUES('Gabriel Ventura','gabriel.ventu@gmail.com', '443.023.430-23', '92384-9482', 'Rua jamanta dos santos','10', '04814-10','Bela vista','sao paulo', 'SP');
-- Funcionario 02
INSERT INTO tbFuncionarios(nome, email, cpf, telCel, logradouro, numero, cep, bairro, cidade, estado) VALUES('roberto disseu','roberto@gmail.com', '343.423.999-23', '98423-9283', 'Rua Japão','5', '04923-20','luz','sao paulo', 'SP');
-- Funcionario 03
INSERT INTO tbFuncionarios(nome, email, cpf, telCel, logradouro, numero, cep, bairro, cidade, estado) VALUES('joao pedefeijao','joao@gmail.com', '444.999.999-23', '93845-9999', 'Rua taltal','123', '49234-10','belgica','osasco', 'SP');

-- Funcionario 04
INSERT INTO tbFuncionarios(nome, email, cpf, telCel, logradouro, numero, cep, bairro, cidade, estado) VALUES('Julia Roberta','julia2034@gmail.com', '234.053.123-00', '9909-2345', 'Rua Jubileu','1002', '04923-02','Santos','osasco', 'SP');

-- Funcionario 05
INSERT INTO tbFuncionarios(nome, email, cpf, telCel, logradouro, numero, cep, bairro, cidade, estado) VALUES('Victor Gabriel','vc2034@gmail.com', '042.230.932-40', '9492-2345', 'Rua das ruas','203', '04223-00','Santo Amaro','sao Paulo', 'SP');

-- Inserindo valores registros nas tabelas
INSERT INTO tbUsuarios(nome, senha, codFunc ) VALUES('gabriel.ventura', 'senhaforte',1);
INSERT INTO tbUsuarios(nome, senha, codFunc ) VALUES('roberto.disseu', 'SENHASUPERFORTE',2);
INSERT INTO tbUsuarios(nome, senha, codFunc ) VALUES('joao.pedefeijao', '039430j@@',3);
INSERT INTO tbUsuarios(nome, senha, codFunc ) VALUES('julia.roberta', 'kdjfk230@*&',4);
INSERT INTO tbUsuarios(nome, senha, codFunc ) VALUES('victor.gabriel', 'isds0394@()(@k)',5);

-- Visualizando os registros nos campos das tabelas
SELECT * FROM tbFuncionarios;
SELECT * FROM tbUsuarios;
SELECT * FROM tbProdutos;

-- DESC tbFuncionarios;
-- DESC tbUsuarios;

    