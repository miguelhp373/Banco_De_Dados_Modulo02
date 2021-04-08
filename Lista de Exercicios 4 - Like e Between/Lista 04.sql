USE Empresa2M

-- Exerc�cios

/* 01) Exiba todos os dados dos produtos que come�am
com a letra L, em ordem decrescente de pre�o  */

SELECT * FROM Produtos WHERE Descr LIKE 'l%' ORDER BY Preco DESC

/* 02) Exiba todos os dados dos produtos que contenham
em seu nome a palavra chef , em ordem crescente de pre�o  */

SELECT * FROM Produtos WHERE Descr LIKE '%chef%' ORDER BY Preco ASC

/* 03) Exiba todos os dados dos produtos cuja descri��o
termine com ing , em ordem decrescente de unidade  */

SELECT * FROM Produtos WHERE Descr LIKE '%ing' ORDER BY Unidades DESC

/* 04) Exiba C�digo, nome e contato dos clientes cujo
contato comece com Jo */

SELECT CodCli, Nome, Contato FROM Clientes WHERE Contato LIKE 'jo%'


/* 05) Exiba todos os dados dos clientes cujo cargo seja
de gerente. Em ordem de cargo*/

SELECT * FROM Clientes WHERE Cargo LIKE '%gerente%' ORDER BY Cargo

/* 06) Exiba c�digo e nome dos funcionarios cujo c�digo
esteja entre 3 e 7*/

SELECT CodFun,Nome FROM Funcionarios WHERE CodFun BETWEEN 3 AND 7

/* 07) Mostre todos os dados dos pedidos entregues
entre 05/01/1998 e 6/02/1998 */

SELECT * FROM Pedidos WHERE DataEntrega BETWEEN '1998-01-05' AND '1998-02-06'

/* 08) Exiba Nome, sobrenome, cargo e salario dos 
funcion�rios que ganham entre 5000 e 10000. Em
ordem crescente de sal�rio*/

SELECT Nome, Sobrenome, Cargo, Salario FROM Funcionarios WHERE Salario BETWEEN 5000 AND 10000 ORDER BY SALARIO ASC

/* 09) Exiba todos os dados dos funcion�rios que
nasceram entre 1960 e 1965. Em ordem decrescente 
de sal�rio*/

SELECT * FROM Funcionarios WHERE DataNasc BETWEEN '1960' AND '1965' ORDER BY Salario DESC

/* 10) Exiba todos os dados dos pedidos de agosto
de 1997 */

SELECT * FROM Pedidos WHERE YEAR(DataPed) = 1997 AND MONTH(DataPed) = 8 

/* 11) Exiba todos os dados dos pedidos feitos todo
dia 10*/

SELECT * FROM Pedidos WHERE DAY(DataPed) = 10

/* 12) Mostre o cargo e a quantidade de funcion�rios
por cargo */

select Cargo, COUNT(*) as qtde from Funcionarios group by Cargo order by qtde

/* 13) Exiba a cidade e a quantidade de clientes por
cidade. Em ordem descrecente de quantidade. */

select Cidade, count(*) as qtde from Clientes group by Cidade order by qtde DESC


/* 14) Mostre o pa�s e a quantidade de funcion�rios
por pa�s. Em ordem de pa�s. */

select Pais, COUNT(*) as qtde from Funcionarios group by Pais order by qtde


/* 15) Exiba o c�digo da categoria e a quantidade
de produtos da categoria. */ 

select CodCategoria, COUNT(*) as qtde from Produtos group by CodCategoria order by qtde

/* 16) Exiba os dados das Categorias em ordem decrescente 
de descri��o */

select * from Categorias order by Descr DESC

/* 17) Mostre o Contato e a Cidade dos clientes dos EUA */

SELECT Contato,Cidade FROM Clientes WHERE Pais LIKE '%EUA%'

/* 18) Exiba todos os dados dos clientes da cidade de 
  Lisboa*/

  SELECT * FROM Clientes WHERE Cidade LIKE '%Lisboa%'

/* 19) Exiba os dados dos clientes que tenham a palavra 
vendas em qualquer parte do cargo */
SELECT * FROM Clientes WHERE Cargo LIKE '%vendas%'


/* 20) Exiba a cidade e a quantidade de clientes por 
cidade */
select Cidade, COUNT(*) as qtde from Clientes group by Cidade order by qtde

/* 21) Mostre todos os dados dos funcionarios em ordem 
crescente de nome*/
SELECT * FROM Funcionarios ORDER BY Nome ASC

/* 22) Mostre o cargo e a quantidade de funcionarios
por cargo */
select Cargo, COUNT(*) as qtde from Funcionarios group by Cargo order by qtde
