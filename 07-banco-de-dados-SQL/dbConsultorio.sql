DROP DATABASE dbConsultorio;
CREATE DATABASE dbConsultorio;
USE dbConsultorio;
CREATE TABLE tbPaciente(
    idPaciente INT NOT NULL AUTO_INCREMENT,
    nomePaciente VARCHAR(45),
    telefonePaciente VARCHAR(9) UNIQUE,
    convenio VARCHAR(45),
    PRIMARY KEY (idPaciente)
);
CREATE TABLE tbReceitaMedica(
    idReceitaMedica INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(500),
    PRIMARY KEY (idReceitaMedica)
);
CREATE TABLE tbMedico(
    idMedico INT NOT NULL AUTO_INCREMENT,
    nomeMedico VARCHAR(45),
    telefoneMedico VARCHAR(9) UNIQUE,
    PRIMARY KEY (idMedico)
);
CREATE TABLE tbConsulta(
    idConsulta INT NOT NULL AUTO_INCREMENT,
    dataConsulta DATE,
    idMedico INT NOT NULL,
    idPaciente INT NOT NULL,
    idReceitaMedica INT NOT NULL,
    PRIMARY KEY (idConsulta),
    FOREIGN KEY (idMedico) REFERENCES tbMedico(idMedico),
    FOREIGN KEY (idPaciente) REFERENCES tbPaciente(idPaciente),
    FOREIGN KEY (idReceitaMedica) REFERENCES tbReceitaMedica(idReceitaMedica)
);
-- Inserir Pacientes
INSERT INTO tbPaciente(nomePaciente, telefonePaciente, convenio)
VALUES ('Gabriel', '9999-9999', 'Porto Seguro');
INSERT INTO tbPaciente(nomePaciente, telefonePaciente, convenio)
VALUES ('Giovana', '8888-8888', 'Marsh');
INSERT INTO tbPaciente(nomePaciente, telefonePaciente, convenio)
VALUES ('Eduardo', '8848-8888', 'Marsh');
INSERT INTO tbPaciente(nomePaciente, telefonePaciente, convenio)
VALUES ('Roberto', '8248-8888', 'Porto Seguro');
-- Inserir Médicos
INSERT INTO tbMedico(nomeMedico, telefoneMedico)
VALUES ('Clarine', '1949-9494');
INSERT INTO tbMedico(nomeMedico, telefoneMedico)
VALUES ('Jubileia', '4256-9482');
INSERT INTO tbMedico(nomeMedico, telefoneMedico)
VALUES ('Jubileu', '1234-5678');
INSERT INTO tbMedico(nomeMedico, telefoneMedico)
VALUES ('Clariana', '7654-3210');
-- Inserir Receitas Médicas
INSERT INTO tbReceitaMedica(descricao)
VALUES (
        'Descricao muito grande para testar o campo para ver se esta funcionando'
    );
INSERT INTO tbReceitaMedica(descricao)
VALUES (
        'Descricao muito grande para testar o campo para ver se esta funcionando Descricao muito grande para testar o campo para ver se esta funcionando'
    );
INSERT INTO tbReceitaMedica(descricao)
VALUES (
        'Descricao muito grande para testar o campo para ver se esta funcionando Descricao muito grande para testar o campo para ver se esta funcionando Descricao muito grande para testar o campo para ver se esta funcionando'
    );
INSERT INTO tbReceitaMedica(descricao)
VALUES (
        'Descricao muito grande para testar o campo para ver se esta funcionando Descricao muito asdasdasdasasddasdsasdadsgrande para testar o campo para ver se esta funcionando Descricao muito grande para testar o campo para ver se esta funcionando'
    );
-- Inserir Consulta
INSERT INTO tbConsulta(
        dataConsulta,
        idMedico,
        idPaciente,
        idReceitaMedica
    )
VALUES ('2024-05-10', '1', '1', '1');
INSERT INTO tbConsulta(
        dataConsulta,
        idMedico,
        idPaciente,
        idReceitaMedica
    )
VALUES ('2024-05-10', '4', '2', '2');
INSERT INTO tbConsulta(
        dataConsulta,
        idMedico,
        idPaciente,
        idReceitaMedica
    )
VALUES ('2024-09-11', '3', '2', '2');
INSERT INTO tbConsulta(
        dataConsulta,
        idMedico,
        idPaciente,
        idReceitaMedica
    )
VALUES ('2024-10-11', '4', '4', '4');
SELECT *
FROM tbMedico;
SELECT *
FROM tbPaciente;
SELECT *
FROM tbReceitaMedica;
SELECT *
FROM tbConsulta;