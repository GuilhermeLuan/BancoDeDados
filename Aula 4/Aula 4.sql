-- AULA 4 - DIA 02/09		
-- CREATE, ALTER, SELECT, INSERT, UPDATE, DELETE

-- Excluir uma coluna 
ALTER TABLE pessoas DROP COLUMN data_nascimento;

-- Alterar atributos 
ALTER TABLE pessoas CHANGE profissao sobrenome VARCHAR(45);

-- Inserir registros
INSERT INTO pessoas (nome, numero_sorte, sobrenome)
VALUES ("Guilherme", 14, "Luan");

INSERT INTO pessoas (nome, numero_sorte, sobrenome)
VALUES ("Gabriel", 99, "Barbosa");

-- Select
SELECT * from pessoas;
SELECT nome from pessoas;
SELECT nome AS NOME from pessoas;
SELECT * FROM PESSOAS WHERE nome = "Gabriel";

-- Update
SET SQL_SAFE_UPDATES = 0;
UPDATE pessoas SET numero_sorte = 15 WHERE nome = "Gabriel";

-- Delete
DELETE FROM pessoas where nome = "Gabriel";
