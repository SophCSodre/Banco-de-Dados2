CREATE DATABASE megafarma;

USE megafarma;

CREATE TABLE Clientes(
    NomeCliente VARCHAR (30) NOT NULL,
    CPFCliente VARCHAR (14) NOT NULL,
    CorFavorita VARCHAR (20) NOT NULL
);

CREATE TABLE Pedidos(
    IDVenda INT NOT NULL PRIMARY KEY,
    DataDoBagulho DATETIME NOT NULL,
    IDClientes INT NOT NULL
);

ALTER TABLE Clientes
ADD COLUMN IDClientes INT NOT NULL FIRST;

ALTER TABLE Clientes
ADD COLUMN Endereco VARCHAR (10) NULL AFTER CPFCliente;

ALTER TABLE Clientes
MODIFY COLUMN Endereco VARCHAR (50) NOT NULL;

ALTER TABLE Clientes
MODIFY COLUMN CorFavorita TINYINT NOT NULL;

ALTER TABLE Pedidos
CHANGE COLUMN DataDoBagulho DataVenda DATETIME NOT NULL;

ALTER TABLE Pedidos
RENAME TO Vendas;

ALTER TABLE Clientes
DROP COLUMN CorFavorita;

ALTER TABLE Clientes
ADD CONSTRAINT PK_Clientes PRIMARY KEY (IDClientes);

ALTER TABLE Vendas
ADD CONSTRAINT FK_Vendas_Clientes FOREIGN KEY (IDClientes)
REFERENCES Clientes (IDClientes);

ALTER TABLE Clientes
ADD COLUMN Bairro VARCHAR (30) NOT NULL,
ADD COLUMN Cidade VARCHAR (40) NOT NULL,
ADD COLUMN Estado CHAR (2) NOT NULL,
ADD CONSTRAINT UK_Clientes UNIQUE KEY (CPFCliente);

-----------------------------------------------------------------------------------------------//
-----------------------------------------------------------------------------------------------//

CREATE DATABASE Editora;

USE Editora;

CREATE TABLE Livrarias (
    IDLivraria INT NOT NULL
);

CREATE TABLE NotasFiscais (
    CODVenda INT NOT NULL PRIMARY KEY,
    DataVenda DATETIME NOT NULL,
    IDLivraria INT NOT NULL
);

CREATE TABLE ItensNF (
    CODVenda INT NOT NULL,
    IDLivro INT NOT NULL,
    QtdeVendida INT NOT NULL
);

CREATE TABLE Livros (
    IDLivro INT NOT NULL PRIMARY KEY,
    Autor VARCHAR (250)
);

ALTER TABLE Livrarias
ADD COLUMN NomeLivraria VARCHAR (30) NOT NULL,
ADD COLUMN Endereco VARCHAR (50) NOT NULL,
ADD COLUMN CNPJ VARCHAR (14) NOT NULL;

ALTER TABLE Livros
ADD COLUMN TituloLivro VARCHAR (250) NOT NULL,
ADD COLUMN PrecoUnit INT NOT NULL;

ALTER TABLE Livrarias
ADD CONSTRAINT PK_Livrarias PRIMARY KEY (IDLivraria);

ALTER TABLE NotasFiscais
ADD CONSTRAINT FK_NotasFiscais_Livrarias FOREIGN KEY (IDLivraria)
REFERENCES Livrarias (IDLivraria);

ALTER TABLE Livros
ADD CONSTRAINT PK_Livros PRIMARY KEY (IDLivro);

ALTER TABLE ItensNF
ADD CONSTRAINT FK_ItensNF_Livros FOREIGN KEY (IDLivro)
REFERENCES Livros (IDLivro);