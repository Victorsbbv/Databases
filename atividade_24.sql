CREATE DATABASE sistema_pedidos;
USE sistema_pedidos;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    email TEXT,
    senha TEXT,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    produto TEXT,
    quantidade INT,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

INSERT INTO usuarios (nome, email, senha) VALUES
('Pedro Guilherme', 'pedrolol@gmail.com', 'tisaunpgkbp92'),
('Ana de Armas', 'anaaram@gmail.com', 'aramhowlingabyss'),
('Victor Vieira', 'victorl4d@gmail.com', 'vbdm1012705');

INSERT INTO pedidos (usuario_id, produto, quantidade) VALUES
(1, 'Notebook', 2),
(2, 'Teclado', 1),
(3, 'Mouse', 5);


SELECT * FROM usuarios;

SELECT * FROM pedidos;

SELECT p.id, u.nome, p.produto, p.quantidade, p.data_pedido
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id;

UPDATE usuarios
SET nome = 'Pedro G. Barbosa'
WHERE id = 1;

UPDATE pedidos
SET quantidade = 3
WHERE id = 2;

DELETE FROM pedidos WHERE usuario_id = 2;

DELETE FROM usuarios WHERE id = 2;

DELETE FROM pedidos WHERE id = 3;

CREATE INDEX idx_email ON usuarios(email);

CREATE VIEW v_pedidos_detalhes AS
SELECT p.id, u.nome, p.produto, p.quantidade, p.data_pedido
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id;

SELECT * FROM v_pedidos_detalhes;

DELIMITER //
CREATE FUNCTION contar_pedidos(user_id INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_pedidos INT;
    SELECT COUNT(*) INTO total_pedidos
    FROM pedidos
    WHERE usuario_id = user_id;
    RETURN total_pedidos;
END //
DELIMITER ;

SELECT contar_pedidos(1) AS total_pedidos;

DELIMITER //
CREATE PROCEDURE adicionar_pedido(IN user_id INT, IN prod TEXT, IN qtd INT)
BEGIN
    INSERT INTO pedidos (usuario_id, produto, quantidade) 
    VALUES (user_id, prod, qtd);
END //
DELIMITER ;

CALL adicionar_pedido(1, 'Monitor', 2);

START TRANSACTION;

INSERT INTO usuarios (nome, email, senha) VALUES
('Lucas Gabriel', 'lucas@gmail.com', 'farmroblox178');

INSERT INTO pedidos (usuario_id, produto, quantidade) 
VALUES (LAST_INSERT_ID(), 'Teclado', 1);

COMMIT;

CREATE USER 'novo_usuario'@'localhost' IDENTIFIED BY 'senha_confiavel';
GRANT ALL PRIVILEGES ON sistema_pedidos.* TO 'novo_usuario'@'localhost';

-- DROP DATABASE sistema_pedidos; -- ISSO APÓS TODA A EXECUÇÃO DO BANCO DE DADOS