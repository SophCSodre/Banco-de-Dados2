SELECT * FROM Clientes
WHERE Estado <> 'MG';

SELECT * FROM veiculos
WHERE preco >= '10000.00';

SELECT * FROM veiculos
WHERE preco >= '10000.00' AND preco <= '15000.00';

SELECT * FROM veiculos
WHERE preco BETWEEN '10355.00' AND '15000.00';

SELECT * FROM clientes
WHERE nomecliente LIKE 'J%';

SELECT * FROM clientes
WHERE nomecliente LIKE '%s';

SELECT * FROM clientes
WHERE nomecliente LIKE '__n%';

SELECT * FROM clientes
WHERE nomecliente LIKE '_o%';

SELECT idvenda, datavenda, nomecliente FROM vendas, clientes
WHERE vendas.idcliente = clientes.idcliente


SELECT idvenda, datavenda, nomecliente 
FROM vendas as v
INNER JOIN clientes as c
ON v.idcliente = c.idcliente;

SELECT carros.idveiculo AS codigo,
carros.fabricante
FROM veiculos AS carros;

SELECT v.idvenda,
v.datavenda,
c.nomecliente
FROM vendas AS v
INNER JOIN clientes AS c
ON v.idcliente = c.idcliente
ORDER BY v.idvenda;

