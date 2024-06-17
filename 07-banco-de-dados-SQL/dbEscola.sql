-- Excluindo, criando e acessando a tabela
DROP DATABASE IF EXISTS dbEscola;

CREATE DATABASE dbEscola;

USE dbEscola;

CREATE TABLE tbTurmas(
    idTurma INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(idTurma)
);

CREATE TABLE tbFuncionarios(
    idFunc INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(9) NOT NULL,
    cpf CHAR(14) NOT NULL UNIQUE,
    PRIMARY KEY(idFunc)
);

CREATE TABLE tbAlunos(
    idAluno INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cpf CHAR(14) NOT NULL UNIQUE,
    sexo CHAR(1) DEFAULT 'F' CHECK(sexo IN ('F', 'M')),
    idade INT DEFAULT 0 CHECK(idade >= 0),
    PRIMARY KEY(idAluno)
);

CREATE TABLE tbProfessores(
    re CHAR(7) NOT NULL,
    idFunc INT NOT NULL,
    PRIMARY KEY(re),
    FOREIGN KEY(idFunc) REFERENCES tbFuncionarios(idFunc)
);

CREATE TABLE tbCursos(
    idCurso INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    re CHAR(7) NOT NULL,
    PRIMARY KEY(idCurso),
    FOREIGN KEY(re) REFERENCES tbProfessores(re)
);

CREATE TABLE tbUsuarios(
    idUsu INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    senha VARCHAR(30) NOT NULL,
    idFunc INT NOT NULL,
    PRIMARY KEY(idUsu),
    FOREIGN KEY(idFunc) REFERENCES tbFuncionarios(idFunc)
);

CREATE TABLE tbMatriculas(
    idMatr CHAR(14) NOT NULL,
    idCurso INT NOT NULL,
    idTurma INT NOT NULL,
    idUsu INT NOT NULL,
    idAluno INT NOT NULL,
    data DATE,
    hora TIME,
    PRIMARY KEY(idMatr),
    FOREIGN KEY(idCurso) REFERENCES tbCursos(idCurso),
    FOREIGN KEY(idTurma) REFERENCES tbTurmas(idTurma),
    FOREIGN KEY(idUsu) REFERENCES tbUsuarios(idUsu),
    FOREIGN KEY(idAluno) REFERENCES tbAlunos(idAluno)
);

DESC tbCursos;

DESC tbTurmas;

DESC tbFuncionarios;

DESC tbAlunos;

DESC tbUsuarios;

DESC tbMatriculas;