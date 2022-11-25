DROP DATABASE IF EXISTS Pizzaria;

CREATE DATABASE IF NOT EXISTS Pizzaria;

USE Pizzaria;

CREATE TABLE Clientes (
    CodCliente INT NOT NULL PRIMARY KEY,
    NomeCliente VARCHAR (50) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    Telefone VARCHAR (15) NOT NULL
);

CREATE TABLE Pedidos (
    CodPedido INT NOT NULL PRIMARY KEY,
    DataPedido DATE NOT NULL,
    CodCliente INT NOT NULL,
    CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (CodCliente)
    REFERENCES Clientes (CodCliente)
);

CREATE TABLE Pizzas (
    CodPizza INT NOT NULL PRIMARY KEY,
    NomePizza VARCHAR (30) NOT NULL,
    Ingredientes VARCHAR (250) NOT NULL,
    Tamanho VARCHAR (30) NOT NULL,
    PrecoPizza DECIMAL (5,2) NOT NULL
);

CREATE TABLE Bebidas (
    CodBebida INT NOT NULL PRIMARY KEY,
    NomeBebida VARCHAR (30) NOT NULL,
    Peso VARCHAR (30) NOT NULL,
    PrecoBebida DECIMAL (5,2) NOT NULL
);

CREATE TABLE PizzasPedidas (
    CodPizza INT NOT NULL,
    CodPedido INT NOT NULL,
    QtdePizza INT NOT NULL,
    CONSTRAINT FK_PizzasPedidas_Pedidos FOREIGN KEY (CodPedido)
    REFERENCES Pedidos (CodPedido),
    CONSTRAINT FK_PizzasPedidas_Pizzas FOREIGN KEY (CodPizza)
    REFERENCES Pizzas (CodPizza)
);

CREATE TABLE BebidasPedidas (
    CodBebida INT NOT NULL,
    CodPedido INT NOT NULL,
    QtdeBebida INT NOT NULL,
    CONSTRAINT FK_BebidasPedidas_Pedidos FOREIGN KEY (CodPedido)
    REFERENCES Pedidos (CodPedido),
    CONSTRAINT FK_BebidasPedidas_Bebidas FOREIGN KEY (CodBebida)
    REFERENCES Bebidas (CodBebida)
);

INSERT INTO Clientes
VALUES (1, 'Helena', 'R. Roxo', '94531-2840'),
(2, 'Daniel', 'R. Vermelha', '94733-1234'),
(3, 'Marcos', 'R. Amarelo', '99674-5762'),
(4, 'Julia', 'R. Rosa', '93232-7955'),
(5, 'Jessica', 'R. Azul', '95321-7841');

INSERT INTO Pizzas
VALUES (1, 'Caipira', 'Frango, catupiry e milho', 'Grande', '20.00'),
(2, 'Mussarela', 'Mussarela, tomate e oregano', 'Grande', '23.50'),
(3, 'Brocolis', 'Brocolis, bacon, catupiry', 'Grande', '20.00'),
(4, 'Romeu e Julieta', 'Goiaba e Queijo', 'Media', '15.50'),
(5, 'Morango', 'Chocolate, Morango e granulado', 'Pequena', '15.00');

INSERT INTO Bebidas
VALUES (1, 'Coca-Cola', '2 Litros', '7.50'),
(2, 'Fanta Laranja', '1.5 Litro', '5.00'),
(3, 'Guarana', '2 Litros', '7.50');

INSERT INTO PizzasPedidas
VALUES (1, 1, '1'),
(2, 1, '1'),
(3, 2, '1'),
(4, 2, '1'),
(2, 3, '2'),
(5, 3, '1'),
(5, 4, '1'),
(1, 4, '1'),
(2, 5, '2'),
(3, 5, '1');

INSERT INTO BebidasPedidas
VALUES (1, 1, '2'),
(2, 2, '1'),
(2, 3, '1'),
(3, 4, '1'),
(3, 5, '1');

INSERT INTO Pedidos
VALUES (1, '2022-11-21', '1'),
(2, '2022-11-21', '2'),
(3, '21-11-22', '3'),
(4, '2022-11-22', '4'),
(5, '2022-11-23', '5');

SELECT * FROM Clientes;

SELECT * FROM Pedidos;

SELECT * FROM Pizzas;

SELECT * FROM PizzasPedidas;

SELECT * FROM BebidasPedidas;