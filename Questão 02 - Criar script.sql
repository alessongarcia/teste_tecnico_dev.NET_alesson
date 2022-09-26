create database teste_alesson;
go

use teste_alesson;
go

create table cliente (
id bigint identity(1,1) not null,
nome varchar(150) not null, 
cpf varchar(14) not null, 
uf varchar(2) not null, 
celular varchar(10) not null
)
go

create table financiamento (
id bigint not null,
id_cliente bigint not null, 
tipo_financiamento int not null, 
valor_total decimal(18,2) not null, 
data_ultimo_vencimento datetime not null
)
go

create table parcelas(
id bigint identity(1,1) not null,
id_financiamento bigint not null, 
numero_parcela int not null, 
valor_parcela decimal(18,2) not null, 
data_vencimento datetime not null, 
data_pagamento datetime null
)
go

create table estado (
id bigint identity(1,1) not null,
uf varchar(2) not null,
nome_estado varchar(100)
)
go

create table tipo_financiamento(
id bigint identity(1,1) not null,
nome_financiamento varchar(25) not null
)
go

--Inserir cidades que serão utilizados no exemplo
insert into estado (uf, nome_estado) values ('SP', 'São Paulo');
insert into estado (uf, nome_estado) values ('RJ','Rio de Janeiro');
insert into estado (uf, nome_estado) values ('MT','Mato Grosso');
insert into estado (uf, nome_estado) values ('AM','Amazonas');
insert into estado (uf, nome_estado) values ('TO','Tocantins');

--Inserir tipo financiamento
insert into tipo_financiamento (nome_financiamento) values ('Crédito Direto');
insert into tipo_financiamento (nome_financiamento) values ('Crédito Consignado');
insert into tipo_financiamento (nome_financiamento) values ('Crédito Pessoa Jurídica');
insert into tipo_financiamento (nome_financiamento) values ('Crédito Pessoa Física');
insert into tipo_financiamento (nome_financiamento) values ('Crédito Imobiliário');

--Inserir cliente que serão utilizados no exemplo
insert into cliente (nome, cpf, uf, celular) values ('João Paulo da Silva', '450.091.620-24', 'SP', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Mariana Rios', '106.278.340-94', 'RJ', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Sebastião de Souza', '862.012.630-04', 'SP', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Maria Madalena Batista', '681.706.250-09', 'MT', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Victoria Eduarda Garcia', '186.074.530-09', 'SP', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Dolores de Barros', '536.953.810-78', 'AM', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Pedro José Pinto', '406.929.090-79', 'SP', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Miguel Borssari', '226.184.650-91', 'TO', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Luiz Claúdio da Luz', '656.574.160-31', 'SP', '94521-4545');
insert into cliente (nome, cpf, uf, celular) values ('Francisco Bonil', '008.445.790-25', 'SP', '94521-4545');

--Inserir financiamento que serão utilizados no exemplo
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (1, 1, 1, 1800.00, '10/10/2022');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (2, 2, 2, 1500.00, '10/10/2022');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (3, 3, 3, 2199.00, '10/11/2022');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (4, 4, 4, 1650.00, '10/10/2022');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (5, 5, 5, 2450.00, '10/12/2022');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (6, 6, 3, 2643.00, '10/10/2022');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (7, 7, 1, 9568.00, '10/01/2023');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (8, 8, 5, 7368.00, '10/9/2022');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (9, 9, 4, 6450.00, '10/11/2022');
insert into financiamento (id, id_cliente, tipo_financiamento, valor_total, data_ultimo_vencimento) values (10, 10, 2,5565.00, '10/10/2022');

--Inserir parcelas que serão utilizados no exemplo
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (1, 1, 360.00, '10/6/2022', '7/6/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (1, 2, 360.00, '10/7/2022', '6/7/2022' );
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (1, 3, 360.00, '10/8/2022', '10/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (1, 4, 360.00, '10/9/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (1, 5, 360.00, '10/10/2022', null);

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (2, 1, 500.00, '10/8/2022', '7/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (2, 2, 500.00, '10/9/2022', null );
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (2, 3, 500.00, '10/10/2022', null);

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (3, 1, 366.50, '10/6/2022', '7/6/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (3, 2, 366.50, '10/7/2022', '6/7/2022' );
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (3, 3, 366.50, '10/8/2022', '10/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (3, 4, 366.50, '10/9/2022', '05/9/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (3, 5, 366.50, '10/10/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (3, 6, 366.50, '10/11/2022', null);

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (4, 1, 550.00, '10/8/2022', '7/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (4, 2, 550.00, '10/9/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (4, 3, 550.00, '10/10/2022', null);

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (5, 1, 350.00, '10/6/2022', '7/6/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (5, 2, 350.00, '10/7/2022', '6/7/2022' );
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (5, 3, 350.00, '10/8/2022', '10/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (5, 4, 350.00, '10/9/2022', '05/9/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (5, 5, 350.00, '10/10/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (5, 6, 350.00, '10/11/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (5, 7, 350.00, '10/12/2022', null);

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (6, 1, 881.00, '10/8/2022', '7/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (6, 2, 881.00, '10/9/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (6, 3, 881.00, '10/10/2022', null);

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (7, 1, 1196.00, '10/6/2022', '7/6/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (7, 2, 1196.00, '10/7/2022', '6/7/2022' );
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (7, 3, 1196.00, '10/8/2022', '10/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (7, 4, 1196.00, '10/9/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (7, 5, 1196.00, '10/10/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (7, 6, 1196.00, '10/11/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (7, 7, 1196.00, '10/12/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (7, 8, 1196.00, '10/01/2023', null);

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (8, 1, 3684.00, '10/8/2022', '7/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (8, 2, 3684.00, '10/9/2022', '7/9/2022' );

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (9, 1, 1075.00, '10/6/2022', '7/6/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (9, 2, 1075.00, '10/7/2022', '6/7/2022' );
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (9, 3, 1075.00, '10/8/2022', '10/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (9, 4, 1075.00, '10/9/2022', '05/9/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (9, 5, 1075.00, '10/10/2022', null);
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (9, 6, 1075.00, '10/11/2022', null);

insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (10, 1, 1855.00, '10/8/2022', '7/8/2022');
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (10, 2, 1855.00, '10/9/2022', null );
insert into parcelas (id_financiamento, numero_parcela, valor_parcela, data_vencimento, data_pagamento) values (10, 3, 1855.00, '10/10/2022', null);

--Consulta para verificar clientes de SP e que possuem mais de 60% das parcelas pagas.
select x.nome, x.PercPago
from (
	  select c.nome, ROUND(((CAST(count(p.data_pagamento) AS DECIMAL)*100)/(CAST(Count(p.id_financiamento) AS DECIMAL))),2) as PercPago
	  from cliente c 
	  inner join financiamento f on c.id = f.id_cliente
	  inner join parcelas p on f.id = p.id_financiamento
	  where c.uf = 'SP'
	  group by c.nome) x
where PercPago > 60
;
--Consulta para mostrar os primeiros quatro clientes que possuem alguma parcela com mais de cinco dias vencido
select top 4 c.nome, c.cpf, e.nome_estado, c.celular, cast(p.data_vencimento as date) as data_vencimento, cast(p.data_pagamento as date) as data_pagamento, DATEDIFF(day, p.data_vencimento, GETDATE()) as dias_vencido
from cliente c 
inner join financiamento f on c.id = f.id_cliente
inner join parcelas p on f.id = p.id_financiamento
left join estado e on c.uf = e.uf
where DATEDIFF(day, p.data_vencimento, GETDATE()) > 4
  and p.data_pagamento is null