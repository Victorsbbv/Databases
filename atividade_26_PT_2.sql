CREATE DATABASE sorveteria;
USE sorveteria;


CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    email TEXT,
    telefone TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    cargo VARCHAR(50),
    salario FLOAT(10, 2) NOT NULL,
    data_admissao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE sabores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    preco FLOAT(10, 2) NOT NULL
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE CASCADE
);

CREATE TABLE pedido_sabores (
    id_pedido INT,
    id_sabor INT,
    PRIMARY KEY (id_pedido, id_sabor),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_sabor) REFERENCES sabores(id)
);


INSERT INTO clientes (nome, email, telefone) VALUES
('Edward Kenway', 'black_flag@hotmail.com', '41982182527'),
('Haytham Kenway', 'forsaken@gmail.com', '4192817219'),
('Connor Kenway', 'freedom@hotmail.com', '4192190428');

INSERT INTO funcionarios (nome, cargo, salario) VALUES
('Altair Ibn Alahad', 'Atendente', 1500.00),
('Ezio Auditore de La Firenze', 'Gerente', 3000.00),
('Aveline de Granpé', 'Caixa', 1200.00);

INSERT INTO sabores (nome, preco) VALUES
('Chocolate', 5.00),
('Morango', 5.50),
('Baunilha', 4.50),
('Limão', 5.00);

INSERT INTO pedidos (id_cliente) VALUES
(1), 
(2), 
(3);

INSERT INTO pedido_sabores (id_pedido, id_sabor) VALUES
(1, 1), 
(1, 2), 
(2, 3), 
(3, 1), 
(3, 4);


SELECT * FROM clientes;

SELECT p.id, c.nome AS cliente, s.nome AS sabor
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id
JOIN pedido_sabores ps ON p.id = ps.id_pedido
JOIN sabores s ON ps.id_sabor = s.id;

SELECT SUM(s.preco) AS total_vendas
FROM pedido_sabores ps
JOIN sabores s ON ps.id_sabor = s.id;

SELECT nome, cargo, salario FROM funcionarios;

SELECT s.nome, COUNT(ps.id_sabor) AS quantidade_vendida
FROM pedido_sabores ps
JOIN sabores s ON ps.id_sabor = s.id
GROUP BY s.nome
ORDER BY quantidade_vendida DESC;


UPDATE sabores SET preco = 5.75 WHERE nome = 'Morango';

DELETE FROM clientes WHERE id = 2;
