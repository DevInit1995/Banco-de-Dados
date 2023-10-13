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

-- concatena��o de CPF E RG com renomea��o de coluna
select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente4;

-- indica a sele��o do tr�s primeiros dados
select * from cliente4 limit 3;

-- sele��o de clientes que nasceram depois da data informada
select nome, data_nascimento from cliente4 where data_nascimento > '2000-01-01';

-- sele��o de nomes que se iniciam com c
select nome from cliente4 where nome like 'C%';

-- sele��o de nome que possuem a letra c entre as palavras
select nome from cliente4 where nome like '%c%';

-- sele��o de dados entre duas datas
select nome, data_nascimento from cliente4 where data_nascimento between '1990-01-01' and '1998-01-01';

-- sele��o de dados faltantes
select nome, rg from cliente4 where rg is null;

-- sele��o ordenada por nomes
select nome from cliente4 order by nome;

-- sele��o ordenadas por nome em ordem crescente
select nome from cliente4 order by nome asc;

-- sele��o ordenadas por nome em ordem decrescente
select nome from cliente4 order by nome desc;






