use BDPousada;
/* Criação de campo autonumerado 
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
values (1, 'Biu Gueittis', 'Av Jundiaí', 'Jundiaí', '2000-01-10', '9999-0000', 'biul@maicroçofiti') 

insert into TbHospedes 
values (2, 'Istive Djobys', 'Alameda das Maçãs', 'Cuppertino', '2000-01-10', '9999-0000', 'idjobis@epoul') 

insert into TbHospedes 
values (3, 'Yellow Mãsqui', 'Teslopolis', 'Av Cyber Truck', '2000-01-10', '9999-0000', 'musk@tesla') 

insert into TbHospedes (CodHospede, Nome, Endereco, Cidade, DataNasc, Fone, Email) values 
(4, 'Estive Vouzniaki', 'Alameda das Maçãs', 'Cupertino', '2000-01-10', '9999-0000', 'estive@maicroçofiti'),
(5, 'Jaque Patombá', 'Alameda das Uvas', 'Cupertino', '2000-01-10', '9999-0000', 'adda@maicroçofiti'),
(6, 'Zuquembergui', 'Alameda das Peras', 'Cupertino', '2000-01-10', '9999-0000', 'adda@maicroçofiti')

select * from TbHospedes

Insert into TbFuncionarios (Nome, Funcao, DataAdm) 
values ('Lucas', 'Gerente', '2020-09-01')

Insert into TbFuncionarios 
values ('Ricardo', 'Cozinheiro', '2020-05-01')

Insert into TbFuncionarios 
values ('Ana', 'Marketing', '2020-05-01')

select * from tbFuncionarios


Insert into TbFornecedores (Nome, Endereco) 
values ('Óleo azul', 'Av Dois')

Insert into tbFornecedores (Nome, Endereco) values
('Cozinha tudo', 'Av Sem nome'),
('Serviços express', 'Rua dos serviços')

select * from tbFornecedores

/* Alterar dados da tabela
update NomeTabela set campo = novo valor
where codição
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
where codição */

delete from tbFuncionarios
where codFuncionario = 2

select * from tbFuncionarios
select * from tbFornecedores

