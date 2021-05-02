USE Empresa2M
/********************** Exerc�cios *******************************************************/

/* TOP */

 SELECT * FROM Funcionarios

--01) Exiba o nome, o sobrenome, o cargo e o sal�rio dos 3 funcion�rios que possuem o maior sal�rio
 SELECT TOP 3  Nome, Sobrenome, Cargo, Salario 
 FROM Funcionarios
 ORDER BY Salario DESC

--02) Exiba o nome e o sobrenome do funcion�rio mais velho.
 SELECT TOP 1  Nome, Sobrenome, DataNasc 
 FROM Funcionarios
 ORDER BY DataNasc ASC


--03) Exiba o nome e o sobrenome do funcion�rio mais novo.
 SELECT TOP 1  Nome, Sobrenome, DataNasc 
 FROM Funcionarios
 ORDER BY DataNasc DESC

SELECT * FROM Pedidos
--04) Mostre todos os dados dos 5 pedidos mais recentes.
SELECT TOP 5 *
FROM Pedidos
ORDER BY DataPed DESC

--05) Mostre todos os dados dos 6 �ltimos pedidos do ano de 1996.
SELECT TOP 6 *
FROM Pedidos
WHERE YEAR(DataPed) = 1996 
ORDER BY DataPed DESC

--06) Exiba Nome e Contato dos 3 primeiros clientes do Reino Unido. Ordenado por nome
SELECT TOP 3 Nome, Contato
FROM Clientes
WHERE Pais = 'REINO UNIDO'
ORDER BY Nome

--07) Exiba todos os dados dos 10 produtos mais caros.
SELECT TOP 10 * 
FROM Produtos
ORDER BY Preco DESC

--08) Exiba a Descri��o e o pre�o dos 5 produtos mais baratos.
SELECT TOP 5 Descr, Preco 
FROM Produtos
ORDER BY Preco ASC

--09) Exiba todos os dados dos 3 pedidos com maior frete.
SELECT TOP 3 *
FROM Pedidos
ORDER BY Frete DESC

--10) Exiba todos os dados dos 5 pedidos com menor frete no ano de 1996
SELECT TOP 5 *
FROM Pedidos
WHERE YEAR(DataPed) = 1996
ORDER BY Frete DESC

/* Union */

--01) Exiba o nome e o cargo de todos os funcion�rios dos EUA e o contato e o cargo de todos os fornecedores dos EUA (Usando UNION)
SELECT NOME, CARGO
FROM Funcionarios
WHERE Pais LIKE 'EUA'
UNION
SELECT CONTATO, CARGO
FROM Fornecedores
WHERE Pais LIKE 'EUA'

--02) Exiba nome, contato e pa�s de todos os clientes do Brasil e da Alemanha (Usando UNION)
SELECT NOME, CONTATO, PAIS
FROM Clientes
WHERE Pais LIKE 'BRASIL'
UNION
SELECT NOME, CONTATO, PAIS
FROM Clientes
WHERE Pais LIKE 'ALEMANHA'

--03) Exiba nome, contato e a cidade de todos os clientes de Madrid e de Paris (Usando UNION)
SELECT NOME, CONTATO, CIDADE
FROM Clientes
WHERE Cidade LIKE 'MADRID'
UNION
SELECT NOME, CONTATO, CIDADE
FROM Clientes
WHERE Cidade LIKE 'PARIS'

--04) Mostre a descri��o e o pre�o dos produtos das categorias de c�digo 1 e 3 (Usando UNION)
SELECT DESCR, PRECO
FROM Produtos
WHERE CodCategoria = 1 
UNION
SELECT DESCR, PRECO
FROM Produtos
WHERE CodCategoria = 3


--05) Exiba o nome, o cargo e o pa�s de todos os funcion�rios do Reino Unido e o contato e o cargo de todos os fornecedores da Fran�a
SELECT NOME, CARGO
FROM Funcionarios
WHERE PAIS LIKE 'REINO UNIDO'
UNION
SELECT Contato, Cargo
FROM Fornecedores 
WHERE Pais LIKE 'FRAN�A'

/* Grupo */

-- 01) Exiba maior, menor, m�dia e soma dos fretes dos pedidos.
SELECT YEAR(DataPed) ,MIN(Frete) AS 'MENOR', MAX(Frete) AS 'MAIOR', AVG(Frete) AS 'MEDIA'
FROM Pedidos
GROUP BY DataPed

-- 02) Exiba maior, menor, m�dia e soma dos fretes dos pedidos no primeiro semestre de 1997.
SELECT MAX(Frete) AS 'MENOR' , MIN(Frete) AS 'MENOR', AVG(Frete) AS 'MEDIA', SUM(Frete) AS 'SOMA'
FROM Pedidos
WHERE DataPed BETWEEN '1997-01-01' AND '1997-06-30'
GROUP BY YEAR(DataPed)


-- 03) Exiba maior, menor, m�dia e soma dos fretes dos pedidos entregues em setembro de 1997.
SELECT MAX(Frete) AS 'MENOR' , MIN(Frete) AS 'MENOR', AVG(Frete) AS 'MEDIA', SUM(Frete) AS 'SOMA'
FROM Pedidos
WHERE MONTH(DataPed) = 7
GROUP BY YEAR(DataPed)
-- 04) Exiba maior, menor, m�dia e soma dos pre�os dos produtos.
SELECT CodProd, MAX(Preco) AS 'MAIOR', MIN(Preco) AS 'MENOR', AVG(PRECO) AS 'MEDIA'
FROM Produtos
GROUP BY CodProd

-- 05) Exiba maior, menor, m�dia e soma dos pre�os dos produtos que come�am com a letra A.
SELECT CodProd, MAX(Preco) AS 'MAIOR', MIN(Preco) AS 'MENOR', AVG(PRECO) AS 'MEDIA', SUM(PRECO) AS 'SOMA'
FROM Produtos
WHERE Descr LIKE 'A%'
GROUP BY CodProd

-- 06) Exiba maior, menor, m�dia e soma dos pre�os dos produtos que terminam com ild.
SELECT CodProd, MAX(Preco) AS 'MAIOR', MIN(Preco) AS 'MENOR', AVG(PRECO) AS 'MEDIA', SUM(PRECO) AS 'SOMA'
FROM Produtos
WHERE Descr LIKE '%ild'
GROUP BY CodProd


-- 07) Exiba maior, menor, m�dia e soma dos pre�os dos produtos da categoria de codigo 20.
SELECT CodProd, MAX(Preco) AS 'MAIOR', MIN(Preco) AS 'MENOR', AVG(PRECO) AS 'MEDIA', SUM(PRECO) AS 'SOMA'
FROM Produtos
WHERE CodProd = 20
GROUP BY CodProd

SELECT * FROM Produtos

-- 08) Exiba maior e o menor c�digo dos produtos.
SELECT CodProd, MAX(CodProd) AS 'MAIOR', MIN(CodProd) AS 'MENOR'
FROM Produtos
GROUP BY CodProd

-- 09) Exiba maior e o menor c�digo dos funcion�rios.
SELECT CodFun, MAX(CodFun) AS 'MAIOR', MIN(CodFun) AS 'MENOR'
FROM Funcionarios
GROUP BY CodFun

-- 10) Exiba maior e o menor c�digo das categorias.
SELECT CodCategoria, MAX(CodCategoria) AS 'MAIOR', MIN(CodCategoria) AS 'MENOR' 
FROM Categorias
GROUP BY CodCategoria
