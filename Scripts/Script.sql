-- tabela cliente
create table cliente4 (
  idcliente integer not null,
  nome varchar(50) not null, 
  cpf char(11),
  rg varchar(15),
  data_nascimento date,
  genero char(1),
  profissao varchar(30),
  nacionalidade varchar(30),
  logradouro varchar(30),
  numero varchar(10),
  complemento varchar(30),
  bairro varchar(10),
  municipio varchar(30),
  uf varchar(30),
  observacoes text,
  
  -- primary Key
  constraint pk_cln_idcliente4 primary key (idcliente)
);

update cliente4 set idmunicipio = 1 where idcliente in (1, 2, 10, 11);
update cliente4 set idmunicipio = 2 where idcliente in (3, 12);
update cliente4 set idmunicipio = 3 where idcliente = 4;
update cliente4 set idmunicipio = 4 where idcliente in (5);
update cliente4 set idmunicipio = 5 where idcliente in (6, 13);
update cliente4 set idmunicipio = 6 where idcliente in (7);
update cliente4 set idmunicipio = 7 where idcliente in (8);
update cliente4 set idmunicipio = 8 where idcliente in (9);
update cliente4 set idmunicipio = 9 where idcliente in (14, 15);

select * from cliente4;

insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, uf) 
values (1, 'Manoel', '88828383821', '32323', '10/10/2001', 'M', 'Estudante', 'Brasileira', 'Rua Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'SC');

insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, uf) 
values (2, 'Geraldo', '12343299291', '56565', '04/01/1987', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 'Ap', 'Centro', 'SC');

insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (3, 'Carlos', '87732323227', '55463', '01/10/1967', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart', 'Cto', 'Canoinhas', 'SC');

insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (4, 'Adriana', '1232122122', '98777', '10/09/1989', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 'Casa', 'São Pedro', 'Porto Vitória', 'SC');

insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf) 
values (5, 'Amanda', '99982838828', '28382', '04/03/1991', 'F', 'Jorn', 'Italiana', 'Av. Central', '100', 'São Pedro', 'General Carneiro', 'PR');

insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf) 
values (6, 'Ângelo', '99982828181', '12323', '01/01/2000', 'M', 'Professor', 'Brasileira', 'Av. Beira Mar', '300', 'Ctr', 'São Paulo', 'SP');

insert into cliente4 (idcliente, nome, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (7, 'Anderson', 'M', 'Prof', 'Italiano', 'Av.Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'RJ');

insert into cliente4 (idcliente, nome, cpf, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf) 
values (8, 'Camila', '9998282828', '10/10/2001', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', 'Centro', 'Porto Alegre', 'RS');

insert into cliente4 (idcliente, nome, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (9, 'Cristiano', 'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 'Casa', 'Centro', 'Porto Alegre', 'RS');

insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (10, 'Adriana', '1232122122', '98777', '10/09/1989', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 'Casa', 'São Pedro', 'Porto Vitória', 'SC');

insert into cliente4 (idcliente, nome, genero, nacionalidade, municipio, uf) 
values (11, 'Fernanda', 'F', 'Brasileira', 'Porto União', 'SC');

insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, municipio, uf) 
values (12, 'Gilmar', '88881818181', '888', '10/02/2000', 'M', 'Estud', 'Brasileira', 'Porto União', 'SC');

insert into cliente4 (idcliente, nome, cpf, rg, genero, profissao, nacionalidade, municipio, uf) 
values (13, 'Diego', '1010191919', '111939', 'M', 'Professor', 'Alemão', 'São Paulo', 'SP');

insert into cliente4 (idcliente, nome, data_nascimento, genero, nacionalidade, municipio, uf) 
values (14, 'Jeferson', '01/07/1983', 'M', 'Brasileira', 'União da Vitória', 'PR');

insert into cliente4 (idcliente, nome, genero, profissao, municipio, uf) 
values (15, 'Jessica', 'F', 'Estudante', 'União da Vitória', 'PR');

insert into cliente4 (idcliente, nome, genero, profissao, municipio, uf) 
values (16, 'Fabricio', 'M', 'Estudante', 'União da Vitória', 'PR');

select nome, data_nascimento from cliente4;

-- alterar o nome da coluna 
select nome, data_nascimento as "Data de nascimento" from cliente4;

-- concatenação de CPF E RG com renomeação de coluna
select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente4;

-- indica a seleção do três primeiros dados
select * from cliente4 limit 3;

-- seleção de clientes que nasceram depois da data informada
select nome, data_nascimento from cliente4 where data_nascimento > '2000-01-01';

-- seleção de nomes que se iniciam com c
select nome from cliente4 where nome like 'C%';

-- seleção de nome que possuem a letra c entre as palavras
select nome from cliente4 where nome like '%c%';

-- seleção de dados entre duas datas
select nome, data_nascimento from cliente4 where data_nascimento between '1990-01-01' and '1998-01-01';

-- seleção de dados faltantes
select nome, rg from cliente4 where rg is null;

-- seleção ordenada por nomes
select nome from cliente4 order by nome;

-- seleção ordenadas por nome em ordem crescente
select nome from cliente4 order by nome asc;

-- seleção ordenadas por nome em ordem decrescente
select nome from cliente4 order by nome desc;

select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente4;

-------- exercicios consultas simples ---------
--1 
select nome, genero, profissao from cliente4 order by nome desc;

--2
select nome from cliente4 where nome like '%r%';

--3 
select nome from cliente4 where nome like 'C%';

--4
select nome from cliente4 where nome like '%a';

--5
select bairro from cliente4 where bairro like 'Centro';

--6
select complemento from cliente4 where complemento like 'A%';

--7
select genero from cliente4 where genero like 'F';

--8
select cpf from cliente4 where cpf is null;

--9
select nome, profissao from cliente4 order by profissao asc;

--10
select * from cliente4 where nacionalidade like 'Brasileira';

--11
select nome, numero from cliente4 where numero is not null;

--12
select nome, uf from cliente4 where uf like 'Santa Catarina';

--13
select data_nascimento from cliente4 where data_nascimento between '01/01/2000' and 01/01/2002;

--14
select 'Nome: ' || nome || 'Logradouro: ' || logradouro || 'Número: ' || numero || 'Complemento' || complemento || 'Bairro' || bairro || 'Municipio' || municipio || 'UF' || uf from cliente4;

--Comandos update e delete
-- alterações e exclusões
select * from cliente4;

--atualização da tabela de cliente4, alterando o nome para teste
-- onde o idcliente = 1
update cliente4 set nome = 'Teste' where idcliente = 1;

update cliente4 set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4;

-- insere novos dados
insert into cliente4 (idcliente, nome) values (8, 'Julia');
-- deletar dados
delete from cliente4 where idcliente = 8;

--Exercicios update delete
--1 nsira os dados abaixo na tabela de cliente4
insert into cliente4 (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf)
values (16, 'Maicon', '12349596421', '1234', '10/10/1965','F', 'Empresario', 'Florianopolis', 'PR');

insert into cliente4 (idcliente, nome, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (17, 'Getúlio', '4631', '10/10/1965','F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Florianopolis', 'PR');


insert into cliente4 (idcliente, nome, genero, profissao, nacionalidade, numero, complemento)
values (18, 'Sandra','M', 'Professor', 'Italiana', '343', 'Bloco A');

select * from cliente4;

--2 Altere os dados do cliente Maicon
update cliente4 set cpf = '45390569432' where idcliente = 16;

update cliente4 set genero = 'M' where idcliente = 16;

update cliente4 set nacionalidade = 'Brasileira' where idcliente = 16;

update cliente4 set uf = 'SC' where idcliente = 16;

--3 Altere os dados do cliente Getúlio
update cliente4 set data_nascimento = '01/04/1978' where idcliente = 17;

update cliente4 set genero = 'M' where idcliente = 17;

--4. Altere os dados da cliente Sandra
update cliente4  set genero = 'F' where idcliente = 18;

update cliente4 set profissao = 'Professora' where idcliente = 18;

update cliente4 set numero = '123' where idcliente = 18;

delete from cliente4 where idcliente = 16;

delete from cliente4  where idcliente = 18;

--aula 19. criação de novas tabelas
create table profissao4 (
	idprofissao integer not null,
	nome varchar(30) not null,
	
	constraint pk_prf_idprofissao4 primary key (idprofissao),
	constraint un_prf_nome4 unique (nome)
);

insert into profissao4 (idprofissao, nome) values (1, 'Estudante');
insert into profissao4 (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao4 (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao4 (idprofissao, nome) values (4, 'Jornalista');
insert into profissao4 (idprofissao, nome) values (5, 'Professor');

select * from nacionalidade4;

create table nacionalidade4 (
	idnacionalidade integer not null,
	nome varchar(30) not null,
	
	constraint pk_ncn_idnacionalidade4 primary key (idnacionalidade),
	constraint un_ncn_nome4 unique (nome)
);

insert into nacionalidade4 (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade4 (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade4 (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade4 (idnacionalidade, nome) values (4, 'Alemã');


create table complemento4 (
	idcomplemento integer not null,
	nome varchar(30) not null,
	
	constraint pk_cpl_idcomplemento4 primary key (idcomplemento),
	constraint un_cpl_nome4 unique (nome)
);

insert into complemento4 (idcomplemento, nome) values (1, 'Casa');

insert into complemento4 (idcomplemento, nome) values (2, 'Apartamento');

select * from complemento4;

create table bairro4 (
	idbairro integer not null, 
	nome varchar(30) not null,
	
	constraint pk_brr_idbairro4 primary key (idbairro),
	constraint un_brr_nome4 unique (nome)
);

insert into bairro4 (idbairro, nome) values (1, 'Cidade Nova');

insert into bairro4 (idbairro, nome) values (2, 'Centro');

insert into bairro4 (idbairro, nome) values (3, 'São Pedro');

insert into bairro4 (idbairro, nome) values (4, 'Santa Rosa');

select * from cliente4;

-- aula 20. Chaves estrangeiras 1
-- exclui o campo idprofissão
alter table cliente4 drop idprofissao;

-- adiciona idprofissao do tipo integer
alter table cliente4 add idprofissao integer;

--adcionando chave estrangeira na tagbela cliente4
alter table cliente4 add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao4 (idprofissao);

update cliente4 set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);

update cliente4 set idprofissao = 2 where idcliente = 2;

update cliente4 set idprofissao = 3 where idcliente = 3;

update cliente4 set idprofissao = 4 where idcliente in (4, 5);

update cliente4 set idprofissao = 5 where idcliente in (6, 7, 8, 13);

select * from profissao4;

alter table cliente4 drop nacionalidade;

alter table cliente4 add naciolidade varchar;

--adicionando chave estrangeira
alter table cliente4 add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade4 (idnacionalidade);

--atualizando os ids na tabela cliente
update cliente4 set idnacionalidade = 1 where idcliente in (1,2,3,4,6,10,11,14);
update cliente4 set idnacionalidade = 2 where idcliente in (5, 7);
update cliente4 set idnacionalidade = 3 where idcliente = 8;
update cliente4 set idnacionalidade = 4 where idcliente in (9, 13);

select * from cliente4;

alter table cliente4 drop complemento;

alter table cliente4 add idcomplemento integer;

alter table cliente4 add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento4 (idcomplemento);

select * from complemento4;

update cliente4 set idcomplemento = 1 where idcliente in (1,4,9,13);
update cliente4 set idcomplemento = 2 where idcliente in (2,3,7);

alter table cliente4 drop bairro;

alter table cliente4 add idbairro integer;

alter table cliente4 add constraint fk_cln_idbairro foreign key (idbairro) references bairro4 (idbairro);

select * from bairro4;
update cliente4 set idbairro = 1 where idcliente in (1,12,13);
update cliente4 set idbairro = 2 where idcliente in (2,3,6,8,9);
update cliente4 set idbairro = 3 where idcliente in (4,5);
update cliente4 set idbairro = 4 where idcliente = 7;


create table uf4 (
	iduf integer not null,
	nome varchar(30) not null,
	siglas char(2) not null,
	
	constraint pk_ufd_idunidade_federecao4 primary key (iduf),
	constraint un_ufd_nome4 unique (nome),
	constraint un_ufd_sigla4 unique (siglas)
);

select * from uf4;

insert into uf4 (iduf, nome, siglas) values (1, 'Santa Catarina', 'SC');
insert into uf4 (iduf, nome, siglas) values (2, 'Paraná', 'PR');
insert into uf4 (iduf, nome, siglas) values (3, 'São Paulo', 'SP');
insert into uf4 (iduf, nome, siglas) values (4, 'Minas Gerais', 'MG');
insert into uf4 (iduf, nome, siglas) values (5, 'Rio Grande do Sul', 'RS');
insert into uf4 (iduf, nome, siglas) values (6, 'Rio de Janeiro', 'RJ');

create table municipio4 (
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,
	
	constraint pk_mnc_idmunicipio4 primary key (idmunicipio),
	constraint un_mnc_nome4 unique (nome),
	constraint fk_mnc_iduf4 foreign key (iduf) references uf4 (iduf)
);

insert into municipio4 (idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio4 (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio4 (idmunicipio, nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio4 (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio4 (idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio4 (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio4 (idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio4 (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio4 (idmunicipio, nome, iduf) values (9, 'União da Vitória', 2);

select * from municipio4;

select * from cliente4;
alter table cliente4 drop municipio4;
alter table cliente4 drop uf;
alter table cliente4 add idmunicipio integer;
alter table cliente4 add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio4 (idmunicipio);

update cliente4 set idmunicipio = 1 where idcliente in (1,2,10,11);
update cliente4 set idmunicipio = 2 where idcliente in (3, 12);
update cliente4 set idmunicipio = 3 where idcliente = 4;
update cliente4 set idmunicipio = 4 where idcliente in (5);
update cliente4 set idmunicipio = 5 where idcliente in (6, 13);
update cliente4 set idmunicipio = 6 where idcliente in (7);
update cliente4 set idmunicipio = 7 where idcliente in (8);
update cliente4 set idmunicipio = 8 where idcliente in (9);
update cliente4 set idmunicipio = 9 where idcliente in (14, 15);

select * from cliente4;


--aula 23.Criação de outras tabelas 2
create table fornecedor4 (
	idFornecedor integer not null,
	nome varchar(50) not null,
	
	constraint pk_fnd_idFornecedor primary key (idFornecedor),
	--constraint un_fnd_nome unique (nome)
);

insert into fornecedor4 (idFornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor4 (idFornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor4 (idFornecedor, nome) values (3, 'BB. Máquinas');
insert into fornecedor4 (idFornecedor, nome) values (4, 'AA, Computadores');
insert into fornecedor4 (idFornecedor, nome) values (5, 'AA Computadores');
insert into fornecedor4 (idFornecedor, nome) values (6, 'BB Computadores');
insert into fornecedor4 (idFornecedor, nome) values (7, 'Cap Computadores');

select * from fornecedor4;

create table vendedor4 (
	idVendedor integer not null,
	nome varchar(50) not null,
	
	constraint pk_vdr_idVendedor primary key (idVendedor),
	constraint un_vdr_nome unique (nome)
);

insert into vendedor4 (idVendedor, nome) values (1, 'André');
insert into vendedor4 (idVendedor, nome) values (2, 'Alison');
insert into vendedor4 (idVendedor, nome) values (3, 'José');
insert into vendedor4 (idVendedor, nome) values (4, 'Ailton');
insert into vendedor4 (idVendedor, nome) values (5, 'Maria');
insert into vendedor4 (idVendedor, nome) values (6, 'Suelem');
insert into vendedor4 (idVendedor, nome) values (7, 'Aline');
insert into vendedor4 (idVendedor, nome) values (8, 'Silvania');

select * from vendedor4;

create table transportadora4 (
	idTransportadora integer not null,
	idMunicipio integer,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(10),
	constraint pk_tpr_idTransportadora primary key (idTransportadora),
	constraint fk_tpr_idMunicipio foreign key (idMunicipio) references municipio4 (idMunicipio),
	constraint un_tpr_nome unique (nome)
);

insert into transportadora4 (idTransportadora, idMunicipio, nome, logradouro, numero)
values (1, 9,'BS. Transportes', 'Rua das Limas', 1);

insert into transportadora4 (idTransportadora, idMunicipio, nome)
values (2, 5,'União Transportes');

select * from transportadora4;

create table produto4 (
	idProduto integer not null,
	idFornecedor integer not null,
	nome varchar(50) not null,
	valor numeric(10,2) not null,
	
	constraint pk_pdo_idProduto primary key (idProduto),
	constraint fk_pdo_idFornecedor foreign key (idFornecedor) references fornecedor4 (idFornecedor)
);

insert into produto4 (idProduto, idfornecedor, nome, valor)
values (1, 1, 'Microcomputador', 800);

insert into produto4 (idProduto, idfornecedor, nome, valor)
values (2, 1, 'Monitor', 500);

insert into produto4 (idProduto, idfornecedor, nome, valor)
values (3, 3, 'Placa Mãe', 800);

insert into produto4 (idProduto, idfornecedor, nome, valor)
values (4, 4, 'HD', 150);

insert into produto4 (idProduto, idfornecedor, nome, valor)
values (5, 5, 'Placa de vídeo', 200);

insert into produto4 (idProduto, idfornecedor, nome, valor)
values (6, 6, 'Memória RAM', 100);

insert into produto4 (idProduto, idfornecedor, nome, valor)
values (7, 4, 'Gabinete', 35);

select * from produto4;

--Aula 26. Tabela de pedidos 1

create table pedido4 (
	idPedido integer not null,
	idCliente integer not null,
	idTransportadora integer,
	idVendedor integer not null,
	data_Pedido date not null,
	valor numeric(10,2) not null,
	
	constraint pk_pdo_idPedido primary key (idPedido),
	constraint fk_pdo_idCliente foreign key (idCliente) references cliente4 (idCliente),
	constraint fk_pdo_idTransportadora foreign key (idTransportadora) references transportadora4 (idTransportadora),
	constraint fk_pdo_idVendedor foreign key (idVendedor) references vendedor4 (idVendedor)
);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '01/04/2008', 1300, 1, 1, 1);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '01/04/2008', 500, 1, 1, 1);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '02/04/2008', 300, 11, 2, 5);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (4, '05/04/2008', 1000, 8, 1, 7);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (5, '01/04/2008', 500, 1, 1, 1);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (6, '06/04/2008', 1985, 16, 1, 6);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (7, '06/04/2008', 800, 16, 1, 7);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (8, '06/04/2008', 175, 3, null, 7);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (9, '07/04/2008', 1300, 12, null, 8);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (10, '10/04/2008', 200, 6, 1, 8);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (11, '15/04/2008', 300, 15, 2, 1);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (12, '20/04/2008', 500, 15, 2, 5);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (13, '20/04/2008', 350, 9, 1, 7);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (14, '23/04/2008', 300, 2, 1, 5);

insert into pedido4 (idPedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (15, '25/04/2008', 200, 11, null, 5);

select * from pedido4;
select * from cliente4;
select * from transportadora4;
select * from pedido_produto4 ;

create table pedido_produto4 (
	idPedido integer not null,
	idProduto integer not null,
	quantidades integer not null,
	valor_unitario numeric(10,2) not null,
	
	constraint pk_ppo_idPedido_produto4 primary key (idPedido, idProduto),
	constraint fk_ppo_idPedido4 foreign key (idPedido) references pedido4 (idPedido),
	constraint fk_ppo_idProduto4 foreign key (idproduto) references produto4 (idProduto)
);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (1, 1 ,1, 800);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (1, 2 ,1, 500);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (3, 2, 1, 500);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (4, 1 ,1, 800);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (4, 3 ,1, 200);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (5, 3, 1, 200);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (6, 1, 2, 800);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (6, 7 , 1, 35);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (6, 5, 1, 200);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (6, 4, 1, 150);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (7, 1 ,1, 800);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (8, 7, 5, 35);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (9, 1, 1, 800);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (9, 2, 1, 500);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (10, 5, 1, 200);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (11, 1, 1, 800);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (11, 6, 1, 100);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (12, 2, 1, 500);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (13, 3, 1, 200);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (13, 4, 1, 150);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (14, 6, 3, 100);

insert into pedido_produto4 (idPedido, idProduto, quantidades, valor_unitario)
values (15, 3, 1, 200);

select * from pedido_produto4;

--Exercicios - consultas simples
-- Aula 28
--1. 
select * from vendedor4 order by nome asc;
--2.
select valor from produto4 where valor > 200 order by valor asc;
--3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select nome, valor, valor + (valor * 10) / 100 as Reajuste from produto4 order by nome;
--4.
select municipio from cliente4 where municipio like 'Rio Grande do Sul';
--5.
select data_Pedido from pedido4 where data_Pedido between '10/04/2008' and '25/04/2008' order by valor;
--6.
select valor from pedido4 where valor > 1000 and valor > 1500;
--7.
select valor from pedido4 where valor  between 100 and 500;
--8.Os pedidos do vendedor André ordenado pelo valor em ordem decrescente. 
select * from vendedor4;
select * from pedido4 where idvendedor = 1 order by valor;
--9.
select * from cliente4 c ;
select * from pedido4 where idcliente = 1 order by valor asc;
--10.
select * from cliente4 c ;
select * from pedido4 where idcliente = 15 order by idvendedor = 1;
--11.
select * from transportadora4;
select * from pedido4 where idtransportadora = 2; 
--12.
select * from pedido4 v;
select * from pedido4 p where idvendedor = 5;
--13.
select * from cliente4 where idmunicipio = 1 or idmunicipio = 9;
select * from cliente4;
--14.
select * from cliente4;
select * from cliente4 where idmunicipio <> 1 and idmunicipio <> 9;
--15.
select * from cliente4 where logradouro is null;
select * from cliente4;
--16.
select * from cliente4 where logradouro like 'Av%';
--17.
select * from vendedor4 where nome like 'S%';
select * from vendedor4;
--18.
select * from vendedor4 where nome like '%a';
--19.
select * from vendedor4 where nome not like'A%';
--20.
select * from municipio4 where nome like 'P%' and iduf = 1;
--21.
select * from transportadora4 where logradouro is not null;
--22. Os itens do pedido 01.
select * from pedido_produto4 where idpedido = 1;
--23. Os itens do pedido 06 ou do pedido 10.
select * from pedido_produto4 where idpedido = 6 or idpedido = 10

































































