-- tabela cliente
create table cliente (
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
  constraint pk_cln_idcliente primary key (idcliente)
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














