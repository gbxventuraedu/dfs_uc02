-- apagando DB se exisitr
DROP DATABASE dbLoja;
-- criando banco de dados
CREATE DATABASE dbLoja;
-- acessando o DB
USE dbLoja;
-- Visualizando o banco de dados
SHOW databases;
-- visualizando as tabelas criadas
SHOW TABLES;
-- Funcionario 01
INSERT INTO tbFuncionarios(
        nome,
        email,
        cpf,
        telCel,
        logradouro,
        numero,
        cep,
        bairro,
        cidade,
        estado
    )
VALUES(
        'Gabriel Ventura',
        'gabriel.ventu@gmail.com',
        '443.023.430-23',
        '92384-9482',
        'Rua jamanta dos santos',
        '10',
        '04814-10',
        'Bela vista',
        'sao paulo',
        'SP'
    );
-- Funcionario 02
INSERT INTO tbFuncionarios(
        nome,
        email,
        cpf,
        telCel,
        logradouro,
        numero,
        cep,
        bairro,
        cidade,
        estado
    )
VALUES(
        'roberto disseu',
        'roberto@gmail.com',
        '343.423.999-23',
        '98423-9283',
        'Rua Japão',
        '5',
        '04923-20',
        'luz',
        'sao paulo',
        'SP'
    );
-- Funcionario 03
INSERT INTO tbFuncionarios(
        nome,
        email,
        cpf,
        telCel,
        logradouro,
        numero,
        cep,
        bairro,
        cidade,
        estado
    )
VALUES(
        'joao pedefeijao',
        'joao@gmail.com',
        '444.999.999-23',
        '93845-9999',
        'Rua taltal',
        '123',
        '49234-10',
        'belgica',
        'osasco',
        'SP'
    );
-- Funcionario 04
INSERT INTO tbFuncionarios(
        nome,
        email,
        cpf,
        telCel,
        logradouro,
        numero,
        cep,
        bairro,
        cidade,
        estado
    )
VALUES(
        'Julia Roberta',
        'julia2034@gmail.com',
        '234.053.123-00',
        '9909-2345',
        'Rua Jubileu',
        '1002',
        '04923-02',
        'Santos',
        'osasco',
        'SP'
    );
-- Funcionario 05
INSERT INTO tbFuncionarios(
        nome,
        email,
        cpf,
        telCel,
        logradouro,
        numero,
        cep,
        bairro,
        cidade,
        estado
    )
VALUES(
        'Victor Gabriel',
        'vc2034@gmail.com',
        '042.230.932-40',
        '9492-2345',
        'Rua das ruas',
        '203',
        '04223-00',
        'Santo Amaro',
        'sao Paulo',
        'SP'
    );
-- Inserindo valores registros nas tabelas
INSERT INTO tbUsuarios(nome, senha, codFunc)
VALUES('gabriel.ventura', 'senhaforte', 1);
INSERT INTO tbUsuarios(nome, senha, codFunc)
VALUES('roberto.disseu', 'SENHASUPERFORTE', 2);
INSERT INTO tbUsuarios(nome, senha, codFunc)
VALUES('joao.pedefeijao', '039430j@@', 3);
INSERT INTO tbUsuarios(nome, senha, codFunc)
VALUES('julia.roberta', 'kdjfk230@*&', 4);
INSERT INTO tbUsuarios(nome, senha, codFunc)
VALUES('victor.gabriel', 'isds0394@()(@k)', 5);
-- Visualizando os registros nos campos das tabelas
SELECT *
FROM tbUsuarios;
SELECT *
FROM tbFuncionarios;
SELECT *
FROM tbClientes;
SELECT *
FROM tbUsuarios;
SELECT *
FROM tbProdutos;
SELECT *
FROM tbVendas;
-- visualizando as estruturas das tabelas
DESC tbUsuarios;
DESC tbFuncionarios;
DESC tbClientes;
DESC tbUsuarios;
DESC tbProdutos;
DESC tbVendas;