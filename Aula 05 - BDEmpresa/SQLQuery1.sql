-- Exercícios utilizando funções de data
SELECT * FROM Funcionarios

/* 01) Mostre os funcionarios que nasceram no dia 19*/

SELECT * FROM Funcionarios Where DAY(DataNasc) = 19 /*retorna todos que nasceram no dia 19*/



/* 02) Mostre o nome dos funcionários nascidos 
em Julho*/

SELECT * FROM Funcionarios Where MONTH(DataNasc) = 07/*retorna todos que nasceram no mês de julho*/




/* 03) Mostre todos os pedidos entregues em 1998*/

SELECT * FROM Pedidos WHERE YEAR(DataEntrega) = 1998




/* 04) Exiba o nome e a idade de todos os funcionários */

SELECT Nome, Sobrenome, YEAR(GETDATE()) - YEAR(DataNasc) FROM Funcionarios

SELECT Nome, Sobrenome, DATEDIFF(YEAR,GETDATE(),DataNasc) FROM Funcionarios



/* 05) Exiba o número do pedido, a data do pedido, a data de entrega e 
a diferença de dias entre o pedido e a entrega*/

SELECT NumPed, DataPed, DATEDIFF(DAY,DataPed,DataEntrega)FROM Pedidos



/* 06) Exiba os pedidos com 10 dias a mais para a data de entrega */

SELECT DATEADD(DAY,10,DataEntrega) FROM Pedidos


/* 07) Exiba todos os nomes dos funcionários e o nome do mês que eles nasceram*/

SELECT Nome,Sobrenome, UPPER(FORMAT(DataNasc, 'MMMM','pt-BR')) from Funcionarios 

SELECT Nome,Sobrenome, DATENAME(MONTH,DataNasc)from Funcionarios 



/* 08) Exiba quantos dias já se passou do seu nascimento */

SELECT DATEDIFF(DAY,GETDATE(),'2003-05-07')