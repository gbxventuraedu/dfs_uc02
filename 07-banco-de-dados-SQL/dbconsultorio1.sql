DROP DATABASE dbConsultorio1;
CREATE DATABASE dbConsultorio1;
USE dbConsultorio1;
CREATE TABLE tbMedico(
    idMedico INT NOT NULL AUTO_INCREMENT,
    nomeMedico VARCHAR(45),
    telefoneMedico VARCHAR(9) UNIQUE,
    PRIMARY KEY (idMedico)
);
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
CREATE TABLE tbConsulta(
    idConsulta INT NOT NULL AUTO_INCREMENT,
    dataConsulta DATETIME,
    idMedico INT NOT NULL,
    idPaciente INT NOT NULL,
    idReceitaMedica INT NOT NULL,
    PRIMARY KEY (idConsulta),
    FOREIGN KEY (idMedico) REFERENCES tbMedico(idMedico),
    FOREIGN KEY (idPaciente) REFERENCES tbPaciente(idPaciente),
    FOREIGN KEY (idReceitaMedica) REFERENCES tbReceitaMedica(idReceitaMedica)
);
-- INSERT INTO tbMedico(nomeMedico, telefoneMedico)
-- VALUES("Gabriel", "9999-9999");
-- SELECT *
-- FROM tbMedico;
DESC tbMedico;
DESC tbPaciente;
DESC tbReceitaMedica;
DESC tbConsulta;