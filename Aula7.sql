CREATE DATABASE nentendo;

USE nentendo;

CREATE TABLE Pokemons (
    PokeID INT NOT NULL PRIMARY KEY,
    Nome VARCHAR (50) NOT NULL,
    Altura DECIMAL (5,2) NOT NULL,
    Peso DECIMAL (5,2) NOT NULL,
    Categoria VARCHAR (30) NOT NULL,
    Tipo VARCHAR (30) NOT NULL,
    Fraqueza VARCHAR (30) NOT NULL
);

ALTER TABLE Pokemons
ADD COLUMN Genero VARCHAR (30) NOT NULL AFTER Peso;

ALTER TABLE Pokemons
ADD COLUMN Habilidade VARCHAR (50) NOT NULL AFTER Categoria;

INSERT INTO Pokemons (PokeID, Nome, Altura, Peso, Genero, Categoria, Habilidade, Tipo, Fraqueza)
VALUES (1, 'Cosmog', '0.2', '0.1', 'Unknown', 'Nebula', 'Unaware', 'Psychic', 'Ghost');

INSERT INTO Pokemons (PokeID, Nome, Altura, Peso, Genero, Categoria, Habilidade, Tipo, Fraqueza)
VALUES (2, 'Dusclops', '1.6', '30.6', 'Masc', 'Beckon', 'Pressure', 'Ghost', 'Dark'),
(3, 'Golurk', '2.8', '330.0', 'Unknown', 'Automaton', 'Iron Fist', 'Ground', 'Water');

INSERT INTO Pokemons (PokeID, Nome, Altura, Peso, Genero, Categoria, Habilidade, Tipo, Fraqueza)
VALUES (4, 'Articuno', '1.7', '55.4', 'Unknown', 'Freeze', 'Pressure', 'Ice', 'Steel'),
(5, 'Goodra', '2.0', '150.5', 'Fem', 'Dragon', 'Hydration', 'Dragon', 'Fairy'),
(6, 'Virizion', '2.0', '200.0', 'Unknown', 'Grassland', 'Justified', 'Grass', 'Fire'),
(7, 'Glameow', '0.5', '3.9', 'Fem', 'Catty', 'Limber', 'Normal', 'Fighting'),
(8, 'Greninja', '1.5', '40.0', 'Masc', 'Ninja', 'Torrent', 'Water', 'Electric'),
(9, 'Mightyena', '1.0', '37.0', 'Masc', 'Bite', 'Intimidate', 'Dark', 'Fairy'),
(10, 'Mismagius', '0.9', '4.4', 'Masc', 'Magical', 'Levitate', 'Ghost', 'Dark');

INSERT INTO Pokemons (PokeID, Nome, Altura, Peso, Genero, Categoria, Habilidade, Tipo, Fraqueza)
VALUES (11, 'Diancie', '0.7', '8.8', 'Fem', 'Jewel', 'Clear Body', 'Fairy', 'Steel'),
(12, 'Corviknight', '2.2', '75.0', 'Masc', 'Raven', 'Pressure', 'Flying', 'Fire'),
(13, 'Eevee', '0.3', '6.5', 'Masc', 'Evolution', 'Adaptability', 'Normal', 'Fighting'),
(14, 'Jolteon', '0.8', '24.5', 'Masc', 'Lightning', 'Volt Absorb', 'Electric', 'Ground'),
(15, 'Flareon', '0.9', '25.0', 'Masc', 'Flame', 'Flash Fire', 'Fire', 'Water'),
(16, 'Espeon', '0.9', '26.5', 'Fem', 'Sun', 'Synchronize', 'Psychic', 'Ghost'),
(17, 'Umbreon', '1.0', '27.0', 'Masc', 'Moonlight', 'Synchronize', 'Dark', 'Fairy'),
(18, 'Leafeon', '1.0', '25.5', 'Fem', 'Verdant', 'Leaf Guard', 'Grass', 'Fire'),
(19, 'Glaceon', '0.8', '25.9', 'Fem', 'Fresh Snow', 'Snow Cloak', 'Ice', 'Fire'),
(20, 'Vaporeon', '1.0', '29.0', 'Fem', 'Bubble Jet', 'Water Absorb', 'Water', 'Grass'),
(21, 'Sylveon', '1.0', '23.5', 'Fem', 'Intertwining', 'Cute Charm', 'Fairy', 'Steel'),
(22, 'Azelf', '0.3', '0.3', 'Unknown', 'Willpower', 'Levitate', 'Psychic', 'Ghoat'),
(23, 'Meloetta', '0.6', '6.5', 'Unknown', 'Melody', 'Serene Grace', 'Psychic', 'Dark'),
(24, 'Zarude', '1.8', '70.0', 'Unknown', 'Rogue Monkey', 'Leaf Guard', 'Dark', 'Fire'),
(25, 'Milotic', '6.2', '162.0', 'Fem', 'Tender', 'Marvel Scale', 'Water', 'Grass'),
(26, 'Lucario', '1.2', '54.0', 'Masc', 'Aura', 'Inner Focus', 'Fighting', 'Fire'),
(27, 'Liepard', '1.1', '37.5', 'Fem', 'Cruel', 'Unburden', 'Dark', 'Fairy'),
(28, 'Tapu Fini', '1.3', '21.2', 'Unknown', 'Land Spirit', 'Misty Surge', 'Water', 'Grass'),
(29, 'Gardevoir', '1.6', '48.4', 'Fem', 'Embrace', 'Trace', 'Psychic', 'Ghost'),
(30, 'Decidueye', '1.6', '36.6', 'Masc', 'Arrow Quill', 'Overgrow', 'Grass', 'Fire');

SELECT * FROM Pokemons;

SELECT * FROM Pokemons
ORDER BY PokeID DESC;

SELECT PokeID, Nome FROM Pokemons
ORDER BY Peso ASC;