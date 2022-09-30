CREATE DATABASE IF NOT EXISTS Fipe;

USE Fipe;

CREATE TABLE Carros (
    CodCarro INT NOT NULL PRIMARY KEY,
    Fabricante VARCHAR (250) NOT NULL,
    Modelo VARCHAR (250) NOT NULL,
    Ano YEAR NOT NULL,
    Preco DECIMAL (7,2) NOT NULL
);

#FIAT

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

#FORD
INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (21, 'EcoSport 4WD 2.0/ 2.0 Flex 16V 5p', 'Ford', 2009, '36319.00'),
(22, 'EcoSport 4WD 2.0/ 2.0 Flex 16V 5p', 'Ford', 2010, '40058.00'),
(23, 'EcoSport 4WD 2.0/ 2.0 Flex 16V 5p', 'Ford', 2011, '41188.00'),
(24, 'EcoSport 4WD 2.0/ 2.0 Flex 16V 5p', 'Ford', 2012, '43148.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (25, 'EDGE SEL 3.5 V6 24V FWD Aut.', 'Ford', 2012, '59631.00'),
(26, 'EDGE SEL 3.5 V6 24V FWD Aut.', 'Ford', 2013, '69345.00'),
(27, 'EDGE SEL 3.5 V6 24V FWD Aut.', 'Ford', 2014, '75890.00'),
(28, 'EDGE SEL 3.5 V6 24V FWD Aut.', 'Ford', 2015, '104014.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (29, 'EcoSport STORM 2.0 4WD 16V Flex 5p Aut.', 'Ford', 2018, '80818.00'),
(30, 'EcoSport STORM 2.0 4WD 16V Flex 5p Aut.', 'Ford', 2019, '87516.00'),
(31, 'EcoSport STORM 2.0 4WD 16V Flex 5p Aut.', 'Ford', 2020, '89743.00'),
(32, 'EcoSport STORM 2.0 4WD 16V Flex 5p Aut.', 'Ford', 2021, '10174.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (33, 'Fiesta 1.6 16V Flex Mec. 5p', 'Ford', 2013, '37076.00'),
(34, 'Fiesta 1.6 16V Flex Mec. 5p', 'Ford', 2014, '41186.00'),
(35, 'Fiesta 1.6 16V Flex Mec. 5p', 'Ford', 2015, '43693.00'),
(36, 'Fiesta 1.6 16V Flex Mec. 5p', 'Ford', 2016, '48094.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (37, 'Focus Sedan 2.0 16V/2.0 16V Flex 4p Aut.', 'Ford', 2012, '38374.00'),
(38, 'Focus Sedan 2.0 16V/2.0 16V Flex 4p Aut.', 'Ford', 2013, '41144.00'),
(39, 'Focus Sedan 2.0 16V/2.0 16V Flex 4p Aut.', 'Ford', 2014, '52259.00'),
(40, 'Focus Sedan 2.0 16V/2.0 16V Flex 4p Aut.', 'Ford', 2015, '54322.00');

#HONDA
INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (41, 'CITY Sedan EXL 1.5 Flex 16V 4p Aut.', 'HONDA', 2019, '94204.00'),
(42, 'CITY Sedan EXL 1.5 Flex 16V 4p Aut.', 'HONDA', 2020, '97843.00'),
(43, 'CITY Sedan EXL 1.5 Flex 16V 4p Aut.', 'HONDA', 2021, '10720.00'),
(44, 'CITY Sedan EXL 1.5 Flex 16V 4p Aut.', 'HONDA', 2022, '11152.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (45, 'Civic Sed. LXL/LXL SE 1.8 Flex 16V Mec.', 'HONDA', 2010, '42994.00'),
(46, 'Civic Sed. LXL/LXL SE 1.8 Flex 16V Mec.', 'HONDA', 2011, '47923.00'),
(47, 'Civic Sed. LXL/LXL SE 1.8 Flex 16V Mec.', 'HONDA', 2012, '58152.00'),
(48, 'Civic Sed. LXL/LXL SE 1.8 Flex 16V Mec.', 'HONDA', 2013, '60629.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (49, 'Fit DX 1.5 Flexone 16V 5p Mec', 'HONDA', 2018, '68527.00'),
(50, 'Fit DX 1.5 Flexone 16V 5p Mec', 'HONDA', 2019, '74725.00'),
(51, 'Fit DX 1.5 Flexone 16V 5p Mec', 'HONDA', 2020, '77931.00'),
(52, 'Fit DX 1.5 Flexone 16V 5p Mec', 'HONDA', 2021, '82957.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (53, 'WR-V EXL 1.5 Flexone 16V 5p Aut.', 'HONDA', 2018, '87162.00'),
(54, 'WR-V EXL 1.5 Flexone 16V 5p Aut.', 'HONDA', 2019, '96885.00'),
(55, 'WR-V EXL 1.5 Flexone 16V 5p Aut.', 'HONDA', 2020, '10175.00'),
(56, 'WR-V EXL 1.5 Flexone 16V 5p Aut.', 'HONDA', 2021, '10721.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (57, 'Prelude Si', 'HONDA', 1992, '19600.00'),
(58, 'Prelude Si', 'HONDA', 1993, '21496.00'),
(59, 'Prelude Si', 'HONDA', 1994, '24505.00'),
(60, 'Prelude Si', 'HONDA', 1995, '25198.00');

#JEEP

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (61, 'COMPASS LONGITUDE 2.0 4x2 Flex 16V Aut.', 'JEEP', 2018, '11638.00'),
(62, 'COMPASS LONGITUDE 2.0 4x2 Flex 16V Aut.', 'JEEP', 2019, '12381.00'),
(63, 'COMPASS LONGITUDE 2.0 4x2 Flex 16V Aut.', 'JEEP', 2020, '12842.00'),
(64, 'COMPASS LONGITUDE 2.0 4x2 Flex 16V Aut.', 'JEEP', 2021, '14219.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (65, 'Grand Cherokee Limited 3.6 4x4 V6 Aut.', 'JEEP', 2015, '12920.00'),
(66, 'Grand Cherokee Limited 3.6 4x4 V6 Aut.', 'JEEP', 2016, '19692.00'),
(67, 'Grand Cherokee Limited 3.6 4x4 V6 Aut.', 'JEEP', 2017, '21408.00'),
(68, 'Grand Cherokee Limited 3.6 4x4 V6 Aut.', 'JEEP', 2018, '22011.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (69, 'Renegade Sport 1.8 4x2 Flex 16V Aut.', 'JEEP', 2018, '81809.00'),
(70, 'Renegade Sport 1.8 4x2 Flex 16V Aut.', 'JEEP', 2019, '87842.00'),
(71, 'Renegade Sport 1.8 4x2 Flex 16V Aut.', 'JEEP', 2020, '91824.00'),
(72, 'Renegade Sport 1.8 4x2 Flex 16V Aut.', 'JEEP', 2021, '97042.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (73, 'Wrangler Sport 3.8 V6 199cv', 'JEEP', 2008, '14093.00'),
(74, 'Wrangler Sport 3.8 V6 199cv', 'JEEP', 2009, '15179.00'),
(75, 'Wrangler Sport 3.8 V6 199cv', 'JEEP', 2010, '15607.00'),
(76, 'Wrangler Sport 3.8 V6 199cv', 'JEEP', 2011, '16786.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (77, 'Wrangler Unlimited Sport 3.6 V6 284cv 4p', 'JEEP', 2014, '23637.00'),
(78, 'Wrangler Unlimited Sport 3.6 V6 284cv 4p', 'JEEP', 2015, '24803.00'),
(79, 'Wrangler Unlimited Sport 3.6 V6 284cv 4p', 'JEEP', 2016, '26209.00'),
(80, 'Wrangler Unlimited Sport 3.6 V6 284cv 4p', 'JEEP', 2017, '27097.00');

#NISSAN

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (81, 'Frontier S CD 4x4 2.3 TB Diesel Mec.', 'NISSAN', 2019, '15495.00'),
(82, 'Frontier S CD 4x4 2.3 TB Diesel Mec.', 'NISSAN', 2020, '16736.00'),
(83, 'Frontier S CD 4x4 2.3 TB Diesel Mec.', 'NISSAN', 2021, '18451.00'),
(84, 'Frontier S CD 4x4 2.3 TB Diesel Mec.', 'NISSAN', 2022, '19630.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (85, 'KICKS S 1.6 16V Flex 5p Aut.', 'NISSAN', 2018, '84283.00'),
(86, 'KICKS S 1.6 16V Flex 5p Aut.', 'NISSAN', 2019, '87911.00'),
(87, 'KICKS S 1.6 16V Flex 5p Aut.', 'NISSAN', 2020, '93940.00'),
(88, 'KICKS S 1.6 16V Flex 5p Aut.', 'NISSAN', 2021, '99935.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (89, 'MARCH S 1.6 16V Flex Fuel 5p', 'NISSAN', 2013, '34488.00'),
(90, 'MARCH S 1.6 16V Flex Fuel 5p', 'NISSAN', 2014, '36480.00'),
(91, 'MARCH S 1.6 16V Flex Fuel 5p', 'NISSAN', 2015, '40565.00'),
(92, 'MARCH S 1.6 16V Flex Fuel 5p', 'NISSAN', 2016, '42977.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (93, 'Pathfinder SE Luxo 3.5 V6 24V 243cv', 'NISSAN', 2002, '30785.00'),
(94, 'Pathfinder SE Luxo 3.5 V6 24V 243cv', 'NISSAN', 2003, '34555.00'),
(95, 'Pathfinder SE Luxo 3.5 V6 24V 243cv', 'NISSAN', 2004, '46106.00'),
(96, 'Pathfinder SE Luxo 3.5 V6 24V 243cv', 'NISSAN', 2005, '47407.00');

INSERT INTO Carros (CodCarro, Fabricante, Modelo, Ano, Preco)
VALUES (97, 'Sentra SL 2.0/ 2.0 Flex Fuel 16V Aut.', 'NISSAN', 2013, '43153.00'),
(98, 'Sentra SL 2.0/ 2.0 Flex Fuel 16V Aut.', 'NISSAN', 2014, '54000.00'),
(99, 'Sentra SL 2.0/ 2.0 Flex Fuel 16V Aut.', 'NISSAN', 2015, '55524.00'),
(100, 'Sentra SL 2.0/ 2.0 Flex Fuel 16V Aut.', 'NISSAN', 2016, '62437.00');

SELECT * FROM Carros;

SELECT CodCarro, Modelo, Ano FROM Carros;

SELECT * FROM Carros ORDER BY Modelo ASC;

SELECT * FROM Carros ORDER BY Preco DESC;

SELECT Modelo, Ano, Preco FROM Carros ORDER BY Fabricante ASC;