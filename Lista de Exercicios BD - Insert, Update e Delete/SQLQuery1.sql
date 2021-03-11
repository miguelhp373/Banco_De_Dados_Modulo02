/*
Resolva os exercicios abaixo:
*/

use bdLocadora

select * from tbClientes;

Alter Table tbClientes add Datanasc date 


-- 1) inserir os seguintes clientes:

insert into tbclientes (CodCli,Nome,Endereco,Cidade,Sexo,CNH,Datanasc)
values
(1,'José de Oliveira','Av. Jatobá','Jundiaí','M','0009','1965-05-11'),
(2,'Maria da Silva','Av. Presidente','Itatiba','F', '0008','1979-10-08'),
(3,'Antonio Carlos','R. Florença','Jundiaí','M','0007','1980-09-20'),
(4,'Luisa de Souza','Av. Jequitibá','Jundiaí','F', '0005','1975-10-10')



-- 2) inserir os seguintes carros:

select * from tbCarros

insert into tbCarros (CodCarro, Marca, Modelo, Placa, ValorDiaria,Categoria) values

(1,'Ford','Ka','AAA-0001', 180.00, 'Econômico'),
(2,'GM','Onix','AAA-0002', 180.00, 'Econômico'),
(3,'Honda','HRV','AAA-0003', 270.00, 'SUV'),
(4,'Jeep','Compass','AAA-0004', 310.00, 'SUV Média'),
(5,'VW','Jetta','AAA-0005', 270.00, 'Sedan'),
(6,'Fiat','Mobi','AAA-0006', 130.00, 'Compacto')

-- 3) inserir os seguintes aluguéis:

select * from tbAluguel

insert into tbAluguel (CodCli,CodCarro,DataRetirada,DataDevolucao,ValorPago) values
(1,1,02-08-2019, 07-08-2019, 900),
(2,3,12-08-2019, 15-08-2019, 500),
(3,2,02-08-2019, 07-08-2019, 900),
(4,5,12-08-2019, 15-08-2019, 700)

-- 4) atualizar o campo estado para SP de todos os clientes

select * from tbClientes;

update tbClientes set Estado = 'SP'

-- 5) atualizar o campo Valor Diária para 350 do Compass
 select * from tbCarros

 update tbCarros set ValorDiaria = 350
 where Modelo = 'Compass'


-- 6) atualizar para 'Vinhedo' a cidade do cliente de código 2
select * from tbClientes

update tbClientes set Cidade = 'Vinhedo'
where CodCli = 2


-- 7) apagar o carro Mobi
select * from tbCarros

	delete from tbCarros
	where Modelo = 'Mobi'


-- 8) apagar os aluguéis do cliente de código 3
select * from tbAluguel

	delete from tbAluguel
	where CodCli = 3

-- 9) apagar os aluguéis do carro de código 2
select * from tbAluguel

	delete from tbAluguel
	where CodCarro = 2


-- 10) atualizar o campo valor diária em 7%
select * from tbCarros

update tbCarros set ValorDiaria = ValorDiaria * (1 + 0.07)

