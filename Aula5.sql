CREATE DATABASE IF NOT EXISTS Escola;

USE Escola;

CREATE TABLE Alunos(
    idaluno INT NOT NULL,
    nomealuno VARCHAR(250) NOT NULL,
    endereco VARCHAR(250) NOT NULL,
    email VARCHAR(250) NULL,
    PRIMARY KEY (idaluno)
);

INSERT INTO Alunos (idaluno, nomealuno, endereco, email)
VALUES (1, 'Astrogildo', 'Rua XIII', 'eu@ele.com');

SELECT idaluno, nomealuno, endereco, email
FROM Alunos;

SELECT * FROM Alunos;

INSERT INTO Alunos
VALUES (2, 'Berisvaldo', 'Av.3', 'tu@nos.com');

INSERT INTO Alunos(idaluno, nomealuno, endereco)
VALUES(3, 'Gumercindo', 'Rua Azul');

INSERT INTO Alunos
VALUES(4, 'Pafuncia', 'Rua Azul', 'go@go.com'),
(5, 'Tiburcio', 'Av. Brasil', NULL),
(6, 'Robervaldo', 'Av. Peru', 'el@cabron.com');

SELECT nomealuno, email
FROM Alunos;

SELECT *
FROM Alunos
ORDER BY idaluno DESC;

SELECT *
FROM Alunos
ORDER BY endereco ASC;

----------------------------------------------------------------------------------------------//

ALTER TABLE Alunos
ADD COLUMN idade INT NULL;

INSERT INTO Alunos (idaluno, nomealuno, endereco, email, idade)
VALUES (7, 'Vitor Moreira Araujo', 'Rua Satélite', 'vitor.araujo75@etec.sp.gov.br', 21);

INSERT INTO Alunos (idaluno, nomealuno, endereco, email, idade)
VALUES (8, 'Pedro Augusto Mendonça da Silva', 'Rua Satélite', 'pedro.silva1450@etec.sp.gov.br', 18),
(9, 'Gabrielle Neves', 'Rua Satélite', 'gabrielle.neves3@etec.sp.gov.br', 18),
(10, 'Johnatan da Silva Santos', 'Rua Satélite', 'johnatan@hotmail.com', 19);

INSERT INTO Alunos (idaluno, nomealuno, endereco, email, idade)
VALUES (11, 'Danilo Hideo Yamamoto', 'Rua Satélite', ' danilo.yamamoto@etec.sp.gov.br',16),
(12, 'Phelipe Queiroz Santos Chagas', 'Rua Satélite', 'Phelipe.chagas@etec.sp.gov.br', 18),
(13, 'Higor Gomes Dias Rocha', 'Rua Satélite', 'higor.rocha17@etec.sp.gov.br', 17),
(14, 'Nathan de Macedo', 'Rua Satélite', 'nathanmacedo02@gmail.com', 18),
(15, 'Raquell Dezotti Tristão de Oliveira', 'Rua Satélite', 'raqdezotti@gmail.com', 16);

INSERT INTO Alunos (idaluno, nomealuno, endereco, email, idade)
VALUES (16, 'Luiz Henrique Lemos Oliveira', 'Rua Satélite', 'luiz.oliveira547@etec.sp.gov.br', 18),
(17, 'Walssimon dos Santos Silva Sacramento', 'Rua Ângelo José Ribeiro', 'walssimon.sacramento@etec.sp.gov.br', 21),
(18, 'Matheus Holanda Santos ', 'Rua Satélite', 'matheus.santos1358@etec.sp.gov.br', 18),
(19, 'Jonathan Pereira dos Santos ', 'Rua Satélite', 'menor_gatinho_2006@yahoo.com.br', 24);

INSERT INTO Alunos (idaluno, nomealuno, endereco, email, idade)
VALUES (20, 'Gustavo Henrique Silva Santos ', 'Rua Satélite', 'gustavo.santos1167@etec.sp.gov.br', 17),
(21, 'Wersington dos Santos Silva Sacramento','rua Angelo José Ribeiro','wersington.sacramento@etec.sp.gov.br',21),
(22, 'André de Souza Neves', 'Rua Satélite', 'andre.neves30@etec.sp.gov.br', 19),
(23, 'Yasmin Marques Tito', 'Rua Bahia', 'yasmin.tito2@etec.sp.gov.br', 22),
(24, 'Shelton Leonel dos Santos', 'Rua Satélite', 'shelton.santos@etec.sp.gov.br', 24),
(25, 'Joyce Rufino Pereira', 'Rua Satélite', 'joyce.pereira45@etec.sp.gov.br', 21),
(26, 'Gabriel Victor Cepeda', 'Rua Satélite', 'gabriel.cepeda@etec.sp.gov.br', 23),
(27, 'Sophia Cruz Sodré', 'Al. Santo Amaro', 'sophia.sodre@etec.sp.gov.br', 21),
(28, 'Jéssica Anjos Dos Santos', 'Rua Satélite', 'jessica.santos1317@etec.sp.gov.br', 18);

INSERT INTO Alunos (idaluno, nomealuno, endereco, email, idade)
VALUES (29, 'Armando Rodrigues Filho', 'Rua Satélite', 'armando.rodrigues@etec.sp.gov.br', 50),
(30, 'Kelly Fonseca de França', 'Rua Satélite', 'Kelly.franca@Etec.sp.gov.br', 24),
(31, 'Guilherme Gomes De Souza', 'Rua Satélite', 'Guilherme.souza654@etec.sp.gov.br', 24),
(32, 'Alison Rodrigo Camargo Duarte', 'Rua Satélite', 'Alison.duarte01@etec.sp.gov.br', 26),
(33, 'Kauã Pithan Mota', 'Rua Satélite', 'kaua.mota01@etec.sp.gov.br', 18),
(34, 'Juliana Sabino Lourenço Silva', 'Rua Satélite', 'Juliana.silva1536@etec.sp.gov.br', 20),
(35, 'Ademir Rafael Pereira', 'Rua Satélite', 'ademir.pereira@etec.sp.gov.br', 33),
(36, 'Douglas Medeiros de Oliveira', 'Rua Satélite', 'douglas.oliveira290@etec.sp.gov.br', 18),
(37, 'Everson Natan dos Santos','Rua Pinto','everson.reis@etec.sp.gov.br', 27);

SELECT * FROM Alunos;

SELECT idaluno, nomealuno, email FROM Alunos;

SELECT * FROM Alunos
ORDER BY nomealuno ASC;

SELECT * FROM Alunos
ORDER BY idade DESC;

SELECT idaluno, email, idade FROM Alunos
ORDER BY nomealuno ASC;