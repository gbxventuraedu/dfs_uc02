---- REMOVENDO TABELA EXISTENTE, EXCLUINDO E ACESSANDO.
DROP DATABASE dblivraria;
CREATE DATABASE dblivraria;
USE dblivraria;
---- CRIANDO TABELAS
CREATE TABLE tbAutor(
    idAutor INT NOT NULL AUTO_INCREMENT,
    nomeAutor VARCHAR(100),
    emailAutor VARCHAR(100),
    PRIMARY KEY(idAutor)
);
CREATE TABLE tbGenero(
    idGenero INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100),
    PRIMARY KEY(idGenero)
);
CREATE TABLE tbLivro(
    idLivro INT NOT NULL AUTO_INCREMENT,
    tituloLivro VARCHAR(100),
    precoLivro FLOAT(9, 2),
    estoqueLivro INT NOT NULL,
    idGenero INT NOT NULL,
    PRIMARY KEY(idLivro),
    FOREIGN KEY(idGenero) REFERENCES tbGenero(idGenero)
);
---- Criando tabela para relação do tbLivro e tbEscreve
CREATE TABLE tbEscreve(
    idAutor INT NOT NULL,
    idLivro INT NOT NULL,
    FOREIGN KEY(idAutor) REFERENCES tbAutor(idAutor),
    FOREIGN KEY(idLivro) REFERENCES tbLivro(idLivro)
);
CREATE TABLE tbCliente(
    idCliente INT NOT NULL AUTO_INCREMENT,
    nomeCliente VARCHAR(100),
    telefone VARCHAR(45),
    PRIMARY KEY(idCliente)
);
CREATE TABLE tbVenda(
    idVenda INT NOT NULL AUTO_INCREMENT,
    data DATE,
    total FLOAT,
    idCliente INT,
    PRIMARY KEY(idVenda),
    FOREIGN KEY(idCliente) REFERENCES tbCliente(idCliente)
);
CREATE TABLE tbitens_da_venda(
    qtd INT NOT NULL,
    subTotal VARCHAR(45),
    idLivro INT NOT NULL,
    idVenda INT NOT NULL,
    FOREIGN KEY(idVenda) REFERENCES tbVenda(idVenda),
    FOREIGN KEY(idLivro) REFERENCES tbLivro(idLivro)
);
---- INSERINDO DADOS NA TABELA
-- tbAutor
INSERT INTO tbAutor(nomeAutor, emailAutor)
VALUES("Roberto Santos", "roberto.livros@gmail.com");
INSERT INTO tbAutor(nomeAutor, emailAutor)
VALUES("Kelly Alves", "kelly.alivros@hotmail.com");
-- TbGenero
INSERT INTO tbGenero(descricao)
VALUES (
        "Uma descricao bem explicativa do livro aqui para preencher espacos e saber que esta funcionando."
    );
INSERT INTO tbGenero(descricao)
VALUES(
        "Uma descricao bem explicativa do livro aqui para preencher espacos e saber que esta funcionando."
    );
-- tbLivro
INSERT INTO tbLivro(tituloLivro, precoLivro, estoqueLivro, idGenero)
VALUES("O Primeiro Livro", 38.99, 59, 1);
INSERT INTO tbLivro(tituloLivro, precoLivro, estoqueLivro, idGenero)
VALUES("O Segund Livro", 50.99, 100, 2);
-- tbCliente
INSERT INTO tbCliente(nomeCliente, telefone)
VALUES ("Leticia", "99999-9999");
INSERT INTO tbCliente(nomeCliente, telefone)
VALUES ("Leandro", "98888-8888");
-- tbVenda
INSERT INTO tbVenda(data, total, idCliente)
VALUES ("2024-05-13", 1, 1);
INSERT INTO tbVenda(data, total, idCliente)
VALUES ("2024-05-13", 1, 2);
-- tbitens_da_venda
INSERT INTO tbitens_da_venda(qtd, subtotal, idLivro, idVenda)
VALUES (1, 38.99, 1, 1);
INSERT INTO tbitens_da_venda(qtd, subtotal, idLivro, idVenda)
VALUES (1, 50.99, 2, 2);
---- SEÇÃO SELECT - CONSULTA
SELECT *
FROM tbAutor;
SELECT *
FROM tbGenero;
SELECT *
FROM tbLivro;
SELECT *
FROM tbCliente;
SELECT *
FROM tbVenda;
SELECT *
FROM tbitens_da_venda;