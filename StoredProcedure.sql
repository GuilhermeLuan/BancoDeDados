-- Stored Procedure

create database loja;

use loja;

create table cliente (
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	email VARCHAR(100),
    dataRegistro DATE
);

-- CRIAR UMA PROCEDURE

DELIMITER //
CREATE Procedure HelloWorld()
BEGIN
	select "Olá mundo" as Mensagem;
END //
DELIMITER ;

-- CHAMAR UMA PROCEDURE

CALL HelloWorld;

-- #######################

DELIMITER //
CREATE Procedure InserirClente(
	IN p_nome varchar(100),
    IN p_email varchar(100),
    IN p_dataRegistro date
)

BEGIN
	INSERT INTO cliente (nome, email, dataRegistro)
    VALUES (p_nome, p_email, p_dataRegistro);
END //
DELIMITER ;

CALL InserirClente("Guilherme Luan", "guilherme@mail.com", "2024-10-21");

-- UPDATE

DELIMITER //
CREATE Procedure AtualizarCliente(
	IN p_id int,
	IN p_nome varchar(100),
    IN p_email varchar(100)
)

BEGIN
	UPDATE cliente
	SET nome = p_nome, email = p_email
    WHERE idCliente = p_id;
END //
DELIMITER ;

CALL AtualizarCliente(1, "Guilherme L", "guilhermeluan@pm.me");

-- BUSCAR CLIENTE

DELIMITER //
CREATE Procedure BuscarClienteNome(
	IN p_id int,
    OUT p_nome varchar(100)
)

BEGIN
	SELECT nome INTO p_nome 
    FROM loja.cliente
	WHERE idCliente = p_id;
END //
DELIMITER ;

SET @nome = " ";
CALL BuscarClienteNome(3, @nome);
SELECT @nome;

-- EXCLUIR CLIENTE
DELIMITER //


CREATE Procedure ExcluirCliente(
	IN p_id int
)

BEGIN
	DELETE FROM loja.cliente
	WHERE idCliente = p_id;
END //
DELIMITER ;

CALL ExcluirCliente(2);

-- TOTAL CLIENTE

DELIMITER //


CREATE Procedure TotalCliente(
)

BEGIN
	SELECT COUNT(idCliente)
	FROM loja.cliente;
END //

DELIMITER ;

CALL TotalCliente();

