-- colocar em uso a tabela Empresa
USE EMPRESA2M

/* exemplos de CONECTIVOS*/

/********************** Exercícios *******************************************************/

/* Conectivos */

/*01) Usando os conectivos IN e NOT IN resolva as seguintes consultas:*/

/* Mostre a descrição e o preço dos produtos das categorias Bebidas e Confeitos*/



SELECT Descr,Preco
FROM Produtos
WHERE  CodCategoria IN
(
	SELECT CodCategoria 
	FROM CATEGORIAS
	WHERE DESCR = 'BEBIDAS' OR DESCR = 'CONFEITOS'
)


/* Mostre todos os dados dos pedidos dos clientes da Alemanha*/

SELECT * 
FROM CLIENTES
WHERE PAIS IN ('ALEMANHA')

/* Exiba todos os produtos da categoria Condimentos*/

SELECT *
FROM Produtos
WHERE  CodCategoria IN
(
	SELECT CodCategoria 
	FROM CATEGORIAS
	WHERE DESCR = 'CONDIMENTOS'
)


/* Mostre a descrição de todos os produtos que NÃO são fornecidos por fornecedores dos EUA */

SELECT Descr
FROM Produtos
WHERE codfor  NOT IN
(
	SELECT codfor 
	FROM fornecedores
	WHERE pais = 'EUA'
)



/* Mostre a descrição de todos produtos que NÃO fizeram parte dos pedidos de março de 1997 */

SELECT Descr
FROM Produtos
WHERE CodProd NOT IN
(
	SELECT NUMPED
	FROM DETALHESPED
	WHERE NUMPED NOT IN
	(
		SELECT NUMPED
		FROM PEDIDOS
		WHERE YEAR(DataPed) = '1997' AND MONTH(DataPed) = '03'
	)
)


/* Mostre os dados dos clientes que fizeram pedidos em junho de 1997*/

SELECT *
FROM CLIENTES
WHERE CODCLI IN
(
		SELECT CODCLI
		FROM PEDIDOS
		WHERE YEAR(DataPed) = '1997' AND MONTH(DataPed) = '06'
)


