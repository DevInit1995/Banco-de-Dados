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

select * from bairro4;













