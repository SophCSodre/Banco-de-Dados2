/-- Sophia Cruz Sodré e Yasmin Marques Tito

CREATE DATABASE tijolobuster;

USE tijolobuster;

CREATE TABLE Clientes (
    IDCliente INT NOT NULL PRIMARY KEY,
    NomeCliente VARCHAR (100) NOT NULL,
    Endereco VARCHAR (100) NOT NULL,
    Telefone VARCHAR (15) NOT NULL
);

CREATE TABLE Alugueis (
    CodAluguel INT NOT NULL PRIMARY KEY,
    DataAluguel DATE NOT NULL,
    DataDevolucao DATE NOT NULL,
    IDCliente INT NOT NULL,
    CONSTRAINT FK_Alugueis_Clientes FOREIGN KEY (IDCliente)
    REFERENCES Clientes (IDCliente)
);

CREATE TABLE Filmes (
    IDFilme INT NOT NULL PRIMARY KEY,
    Titulo VARCHAR (50) NOT NULL,
    Genero VARCHAR (50) NOT NULL,
    Idioma VARCHAR (50) NOT NULL,
    Preco DECIMAL (5,2) NOT NULL
);

CREATE TABLE ItensAlugados (
    QtdeEstoque INT NOT NULL,
    CodAluguel INT NOT NULL,
    IDFilme INT NOT NULL,
    CONSTRAINT FK_ItensAlugados_Alugueis FOREIGN KEY (CodAluguel)
    REFERENCES Alugueis (CodAluguel),
    CONSTRAINT FK_ItensAlugados_Filmes FOREIGN KEY (IDFilme)
    REFERENCES Filmes (IDFilme)
);

ALTER TABLE Clientes
ADD COLUMN Estado VARCHAR (50) NOT NULL;

ALTER TABLE ItensAlugados
DROP COLUMN QtdeEstoque;

INSERT INTO Clientes (IDCliente, NomeCliente, Endereco, Telefone, Estado)
VALUES (1, 'Alberto Pasqualini', 'Rua do Ouvidor', '3838-4000', 'SP');

INSERT INTO Clientes (IDCliente, NomeCliente, Endereco, Telefone, Estado)
VALUES (2, 'Emma Goldman', 'Rua José Bonifácio', '2244-1000', 'SP'),
(3, 'Getulio Vargas', 'Rua Gotemburgo', '3738-8008', 'RJ'),
(4, 'John Locke', 'Rua São Sebastião', '5670-6070', 'MG'),
(5, 'Nicolau Maquiavel', 'Rua Francisco Eugenio', '3700-8000', 'RJ');

INSERT INTO Filmes (IDFilme, Titulo, Genero, Idioma, Preco)
VALUES (1, 'Sherlock Holmes', 'Ação e Aventura', 'Inglês', '9.85'),
(2, 'Planeta 51', 'Infantil', 'Português', '4.59'),
(3, 'Zumbilândia', 'Comédia', 'Inglês', '4.95'),
(4, 'Bastardos Inglórios', 'Ação e Aventura', 'Inglês', '7.50'),
(5, 'Alvin e os Esquilos 2', 'Infantil', 'Português', '4.95');

INSERT INTO Alugueis (CodAluguel, DataAluguel, DataDevolucao, IDCliente)
VALUES (1, '2021-08-16', '2021-08-18', 2);

INSERT INTO Alugueis (CodAluguel, DataAluguel, DataDevolucao, IDCliente)
VALUES (2, '2021-08-16', '2021-08-18', 4),
(3, '2021-08-17', '2021-08-19', 1),
(4, '2021-08-19', '2021-08-21', 3),
(5, '2021-08-19', '2021-08-21', 5);

INSERT INTO ItensAlugados (CodAluguel, IDFilme)
VALUES (1, 2), (2, 3), (3, 1), (3, 2), (3, 5), (4, 4), (5, 3), (5, 1);

SELECT * FROM Filmes
ORDER BY Preco DESC;

SELECT NomeCliente, Telefone FROM Clientes
ORDER BY Estado ASC;

SELECT * FROM ItensAlugados
ORDER BY IDFilme ASC;