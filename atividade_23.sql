CREATE DATABASE sistema_usuarios;
USE sistema_usuarios;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    email TEXT UNIQUE NOT NULL,
    senha_hash TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE logs_acesso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    data_acesso TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

DELIMITER $$

CREATE FUNCTION usuario_existe(email_usuario TEXT) 
RETURNS BOOLEAN
BEGIN
    DECLARE existe INT;
    
    SELECT COUNT(*) INTO existe
    FROM usuarios
    WHERE email = email_usuario;
    
    RETURN existe > 0;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE inserir_usuario(nome_usuario TEXT, email_usuario TEXT, senha_usuario TEXT)
BEGIN
    DECLARE user_id INT;
    
    INSERT INTO usuarios (nome, email, senha_hash)
    VALUES (nome_usuario, email_usuario, senha_usuario);
    
    SET user_id = LAST_INSERT_ID();
    
    INSERT INTO logs_acesso (usuario_id)
    VALUES (user_id);
END$$

DELIMITER ;

CALL inserir_usuario('Pedro Guilherme', 'tisaun.pgkbp@gmail.com', '$2b$10$ABCD1234');
CALL inserir_usuario('Nicolas de Souza', 'nicolas.souza@email.com', '$2b$10$XYZ9876');

SELECT * FROM usuarios;

SELECT * FROM logs_acesso;

SELECT usuario_existe('tisaun.pgkbp@gmail.com');
