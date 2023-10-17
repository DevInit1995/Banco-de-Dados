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
  
select * from cliente4;
 
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

alter table cliente4 add idnacionalidade integer;

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






