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






