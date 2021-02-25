/*
Resolva os exercícios abaixo:
*/
-- 1) Crie o banco de Dados Locadora e coloque-o em uso

	Create Database BDLocadora;
	
	use BDLocadora

/* 2) Crie as seguintes tabelas:
tbClientes(
	CodCli inteiro, -chave primária 
	Nome texto(50), 
	Endereco texto(50),
	Cidade  texto(50),
	Sexo caracter(1),
	Datanasc datahora,
	CNH texto(25),
	DataHabilitacao data,
)

tbCarros (
	CodCarro inteiro, -chave primária
	Marca texto(30),
	Modelo texto(30),
	Placa texto(8),
	ValorDiaria moeda,
	Fornecedor texto(50),
)

tbAluguel(
	CodAluguel inteiro autoincremento, -chave primária
	CodCli inteiro, - chave estrangeira
	CodCarro inteiro, - chave estrangeira
	DataRet datahora,
	DataDev datahora,
	ValorPago moeda
)

*/

Create Table tbClientes(
	CodCli int Primary Key,
	Nome Varchar(50), 
	Endereco Varchar(50),
	Cidade  Varchar(50),
	Sexo char(1),
	Datanasc datetime,
	CNH varchar(25),
	DataHabilitacao date
)

Create Table tbCarros (
	CodCarro int Primary Key,
	Marca varchar(30),
	Modelo varchar(30),
	Placa varchar(8),
	ValorDiaria money,
	Fornecedor varchar(50)
)

Create Table tbAluguel(
	CodAluguel int IDENTITY(1,1) Primary Key,
	CodCli int,
	CodCarro int,
	DataRet datetime,
	DataDev datetime,
	ValorPago money,
	Foreign Key (CodCli) references tbClientes(CodCli),
	Foreign Key (CodCarro) References tbCarros(CodCarro)
)


select * from tbAluguel

-- 3) Acrescentar o campo Estado (caracter 2) na tabela de Clientes

Alter Table tbClientes
ADD Estado varchar(2);

select * from tbClientes

-- 4) Acrescentar o campo Categoria (texto 30) na tabela de Carros

Alter Table tbCarros
ADD Categoria varchar(30);

-- 5) Acrescentar o campo Cor (texto 20) na tabela de Carros

Alter Table tbCarros
ADD Cor varchar(20);

-- 6) Mudar o nome do campo DataRet para DataRetirada na tbAluguel

EXEC SP_RENAME 'tbAluguel.DataRet', 'DataRetirada', 'Column'
select * From tbAluguel

-- 7) Mudar o nome do campo DataDev para DataDevolucao na tbAluguel

EXEC sp_rename 'tbAluguel.DataDev','DataDevolucao','Column'
select * From tbAluguel

-- 8) Remova o campo DataHabilitacao da tabela de Clientes

ALTER TABLE tbClientes 
DROP COLUMN DataHabilitacao -- Remove o campo

select * From tbClientes

-- 9) Remova o campo Fornecedor da tabela de Carros
ALTER TABLE tbCarros 
DROP COLUMN Fornecedor

select * From tbCarros

