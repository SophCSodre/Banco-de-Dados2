CREATE DATABASE Locadora;

USE Locadora;

CREATE TABLE Clientes (
    NomeCliente VARCHAR (50) NOT NULL,
    CPFCliente VARCHAR (14) NOT NULL,
    Telefone VARCHAR (11) NOT NULL
);

CREATE TABLE Alugueis (
    Data DATE NOT NULL,
    IDCliente INT NOT NULL,
    CONSTRAINT PK_Alugueis PRIMARY KEY (IDCliente)
);

CREATE TABLE Filme (
    IDFilme INT NOT NULL,
    Idade VARCHAR (5),
    CONSTRAINT PK_Filme PRIMARY KEY (IDFilme)
);

CREATE TABLE ItensAlugados (
    Comprovante INT NOT NULL PRIMARY KEY,
    IDFilme INT NOT NULL,
    CONSTRAINT FK_ItensAlugados_IDFilme FOREIGN KEY (IDFilme)
    REFERENCES Filme(IDFilme)
);


------------------------DATABASE ATUALIZADA ---------------------------------------------------


ALTER TABLE Alugueis
DROP COLUMN IDCliente;

ALTER TABLE Clientes
ADD COLUMN IDCliente INT NOT NULL PRIMARY KEY FIRST,
ADD COLUMN Endereco VARCHAR (50) NOT NULL AFTER NomeCliente;

ALTER TABLE Filme
DROP COLUMN Idade,
ADD COLUMN Titulo VARCHAR (50) NOT NULL,
ADD COLUMN Genero VARCHAR (50) NOT NULL,
ADD COLUMN Idioma VARCHAR (50) NOT NULL,
ADD COLUMN Preco DECIMAL (5,2) NOT NULL;

ALTER TABLE ItensAlugados
DROP COLUMN Comprovante;

ALTER TABLE Alugueis
ADD COLUMN Comprovante INT NOT NULL PRIMARY KEY,
ADD COLUMN Devolucao DATE NOT NULL AFTER Data,
ADD COLUMN IDCliente INT NOT NULL,
ADD CONSTRAINT FK_Alugueis_Clientes FOREIGN KEY (IDCliente)
REFERENCES Clientes (IDCliente);

ALTER TABLE ItensAlugados
ADD COLUMN Comprovante INT NOT NULL,
ADD COLUMN QtdeEstoque INT NOT NULL,
ADD CONSTRAINT FK_ItensAlugados_Alugueis FOREIGN KEY (Comprovante)
REFERENCES Alugueis (Comprovante),
ADD CONSTRAINT FK_ItensAlugados_Filme FOREIGN KEY (IDFilme)
REFERENCES Filme (IDFilme);