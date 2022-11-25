DROP DATABASE IF EXISTS Escola;

CREATE DATABASE IF NOT EXISTS Escola;

USE Escola;

CREATE TABLE Alunos (
    IDAluno INT NOT NULL AUTO_INCREMENT,
    NomeAluno VARCHAR(30) NOT NULL,
    Endereco VARCHAR(50) NOT NULL,
    Email VARCHAR(40) NULL,
    PRIMARY KEY (IDAluno)
);

INSERT INTO Alunos
VALUES (null, 'Astrogildo', 'Rua XIII', 'eu@ele.com'),
(null, 'Berivaldo', 'Av. 3', 'tu@nos.com'),
(null, 'Gumercindo', 'Rua Azul', null),
(null, 'Pafuncia', 'Rua Azul', 'go@go.edu'),
(null, 'Tiburcio', 'Av. Brasil', null),
(null, 'Robervaldo', 'Av. Peru', 'el@cabron');

UPDATE Alunos
SET NomeAluno = 'Valdo', Endereco = 'X'
WHERE IDAluno = '6';

UPDATE Alunos
SET Email = 'guma@bol.com'
WHERE IDAluno = '3';

DELETE FROM Alunos
WHERE IDAluno = '6';

DELETE FROM Alunos
WHERE IDAluno BETWEEN '2' AND '5';