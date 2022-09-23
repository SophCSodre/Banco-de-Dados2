CREATE DATABASE IF NOT EXISTS Fipe;

USE Fipe;

CREATE TABLE Carros (
    CodCarro INT NOT NULL PRIMARY KEY,
    Fabricante VARCHAR (250) NOT NULL,
    Modelo VARCHAR (250) NOT NULL,
    Ano YEAR NOT NULL,
    Preco DECIMAL (7,2) NOT NULL
);

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (1, 'ARGO 1.0 6V Flex.', 'Fiat', 2019, '56241.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (2, 'ARGO 1.0 6V Flex.', 'Fiat', 2020, '59190.00'),
(3, 'ARGO 1.0 6V Flex.', 'Fiat', 2021, '65794.00'),
(4, 'ARGO 1.0 6V Flex.', 'Fiat', 2022, '70273.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (5, 'Brava ELX 1.6 16V 4p', 'Fiat', 2000, '9576.00'),
(6, 'Brava ELX 1.6 16V 4p', 'Fiat', 2001, '10184.00'),
(7, 'Brava ELX 1.6 16V 4p', 'Fiat', 2002, '11916.00'),
(8, 'Brava ELX 1.6 16V 4p', 'Fiat', 2003, '14218.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (9, 'CRONOS 1.3 8V Flex', 'Fiat', 2019, '74560.00'),
(10, 'CRONOS 1.3 8V Flex', 'Fiat', 2020, '69889.00'),
(11, 'CRONOS 1.3 8V Flex', 'Fiat', 2021, '74560.00'),
(12, 'CRONOS 1.3 8V Flex', 'Fiat', 2022, '74560.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (13, 'Doblo HLX 1.8 mpi Flex 5p', 'Fiat', 2008, '32071.00'),
(14, 'Doblo HLX 1.8 mpi Flex 5p', 'Fiat', 2009, '32071.00'),
(15, 'Doblo HLX 1.8 mpi Flex 5p', 'Fiat', 2010, '39539.00'),
(16, 'Doblo HLX 1.8 mpi Flex 5p', 'Fiat', 2011, '40655.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (17, 'Fiorino Pick-Up 1.0', 'Fiat', 1994, '8178.00'),
(18, 'Fiorino Pick-Up 1.0', 'Fiat', 1995, '9679.00'),
(19, 'Fiorino Pick-Up 1.0', 'Fiat', 1996, '9679.00'),
(20, 'Fiorino Pick-Up 1.0', 'Fiat', 1997, '10591.00');

