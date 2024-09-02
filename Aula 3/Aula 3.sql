-- CRIAR UM BANCO
 CREATE DATABASE banco;

-- CRIAR A TABELA
CREATE TABLE minhatabela (
	nome varchar(30)
);

CREATE TABLE pessoas(
	nome varchar(45),
    numero_sorte int,
    data_nascimento date
);

-- REMOVER UMA TABELA
DROP TABLE minhatabela;

-- REMOVER O BANCO
CREATE DATABASE banco2;

DROP DATABASE banco2;

-- ADICIONAR COLUNA EM UMA TABELA
ALTER TABLE pessoas ADD COLUMN profissao varchar(20);