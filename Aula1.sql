DATABASE - EDITORA


CREATE  TABLE  Livraria (
IDLivraria INT NOT NULL,
NomeLivraria VARCHAR(30)  NOT NULL,
Endereco VARCHAR (50) NOT NULL,
CNPJ VARCHAR (14) NULL,
CONSTRAINT PK_Livraria PRIMARY  KEY (IDLivraria));

CREATE  TABLE  NotasFiscais (
CodigoVenda INT NOT NULL,
DataVenda DATE NOT NULL,
IDLivraria INT NOT NULL,
CONSTRAINT PK_NotasFiscais PRIMARY KEY (CodigoVenda),
CONSTRAINT FK_NotasFiscais_Livraria FOREIGN KEY (IDLivraria)
REFERENCES Livraria (IDLivraria));

CREATE  TABLE  ItensNF (
CodigoVenda INT NOT NULL,
IDLivro INT NOT NULL,
QtdeVendida VARCHAR (7) NOT NULL,
CONSTRAINT PK_ItensNF PRIMARY KEY (CodigoVenda),
CONSTRAINT FK_ItensNF_Livros FOREIGN KEY (IDLivro)
REFERENCES Livros (IDLivro));

CREATE  TABLE  Livros (
IDLivro INT NOT NULL,
TituloLivro VARCHAR(50)  NOT NULL,
Autor VARCHAR (30) NOT NULL,
PrecoUnitario DECIMAL (5,2) NOT NULL,
CONSTRAINT PK_Livro PRIMARY KEY (IDLivro));




DATABASE - LOCADORA


CREATE  TABLE  Clientes (
IDCliente INT NOT NULL,
NomeCliente VARCHAR(30)  NOT NULL,
Endereco VARCHAR (50) NOT NULL,
CPF VARCHAR (11) NOT NULL,
Telefone VARCHAR (11) NOT NULL, 
CONSTRAINT PK_Clientes PRIMARY KEY (IDCliente));

CREATE  TABLE  Alugueis (
Comprovante INT NOT NULL,
Data DATE NOT NULL,
Devolucao DATE NOT NULL,
IDCliente INT NOT NULL,
CONSTRAINT PK_Alugueis PRIMARY KEY (Comprovante),
CONSTRAINT FK_Alugueis_Clientes FOREIGN KEY (IDCliente)
REFERENCES Clientes (IDCliente));

CREATE  TABLE  ItensAlugados (
Comprovante INT NOT NULL,
IDFilme INT NOT NULL,
QtdeEstoque VARCHAR (7) NOT NULL,
CONSTRAINT PK_ItensAlugados PRIMARY KEY (Comprovante),
CONSTRAINT FK_ItensAlugados_Filmes FOREIGN KEY (IDFilme)
REFERENCES Filmes (IDFilme));

CREATE  TABLE  Filmes (
IDFilme INT NOT NULL,
Titulo VARCHAR (30) NOT NULL,
Genero VARCHAR (30) NOT NULL,
Idioma VARCHAR (30) NOT NULL,
Preco DECIMAL (5,2) NOT NULL,
CONSTRAINT PK_Filmes PRIMARY KEY (IDFilme));