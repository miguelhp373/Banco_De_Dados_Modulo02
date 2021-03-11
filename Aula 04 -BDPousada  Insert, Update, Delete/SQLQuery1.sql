use BDPousada;
/* Cria��o de campo autonumerado 
identity(inicio, incremento)
*/

use bdPousada

create table tbFornecedores(
	CodFornecedor int identity(1,1),
	Nome varchar(50),
	Endereco varchar(100),
	primary key (CodFornecedor)
)

/*inserir dados na tabela 
insert into NomeTabela (campo1, campo2, campo3, ...) values (valor1, valor2, valor3, ...)
*/

insert into TbHospedes (CodHospede, Nome, Endereco, Cidade, DataNasc, Fone, Email)
values (1, 'Biu Gueittis', 'Av Jundia�', 'Jundia�', '2000-01-10', '9999-0000', 'biul@maicro�ofiti') 

insert into TbHospedes 
values (2, 'Istive Djobys', 'Alameda das Ma��s', 'Cuppertino', '2000-01-10', '9999-0000', 'idjobis@epoul') 

insert into TbHospedes 
values (3, 'Yellow M�squi', 'Teslopolis', 'Av Cyber Truck', '2000-01-10', '9999-0000', 'musk@tesla') 

insert into TbHospedes (CodHospede, Nome, Endereco, Cidade, DataNasc, Fone, Email) values 
(4, 'Estive Vouzniaki', 'Alameda das Ma��s', 'Cupertino', '2000-01-10', '9999-0000', 'estive@maicro�ofiti'),
(5, 'Jaque Patomb�', 'Alameda das Uvas', 'Cupertino', '2000-01-10', '9999-0000', 'adda@maicro�ofiti'),
(6, 'Zuquembergui', 'Alameda das Peras', 'Cupertino', '2000-01-10', '9999-0000', 'adda@maicro�ofiti')

select * from TbHospedes

Insert into TbFuncionarios (Nome, Funcao, DataAdm) 
values ('Lucas', 'Gerente', '2020-09-01')

Insert into TbFuncionarios 
values ('Ricardo', 'Cozinheiro', '2020-05-01')

Insert into TbFuncionarios 
values ('Ana', 'Marketing', '2020-05-01')

select * from tbFuncionarios


Insert into TbFornecedores (Nome, Endereco) 
values ('�leo azul', 'Av Dois')

Insert into tbFornecedores (Nome, Endereco) values
('Cozinha tudo', 'Av Sem nome'),
('Servi�os express', 'Rua dos servi�os')

select * from tbFornecedores

/* Alterar dados da tabela
update NomeTabela set campo = novo valor
where codi��o
*/
select * from tbHospedes
-- update sem where atualiza a tabela toda
update TbHospedes set Fone = '1111-1111'
update tbHospedes set Fone = '9' + fone

select * from tbFornecedores
update tbFornecedores set endereco = 'Av. Campinas'
where CodFornecedor = 1

select * from TbFuncionarios
update tbFuncionarios set Nome = 'Ana Joana', funcao = 'Gerente de Marketing'
where CodFuncionario = 3

update tbFuncionarios set Funcao = 'Chef' 
where nome = 'Ricardo'

update tbFuncionarios set Funcao = 'Gerente Geral'
where nome like 'Lu%'

/*excluir dados
delete from NomeTabela 
where codi��o */

delete from tbFuncionarios
where codFuncionario = 2

select * from tbFuncionarios
select * from tbFornecedores

