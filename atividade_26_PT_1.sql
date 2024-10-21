CREATE DATABASE frutaria;
USE frutaria;


CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    email TEXT,
    telefone TEXT
);

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    cargo TEXT,
    salario FLOAT(10, 2)
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    preco FLOAT(10, 2) NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    total FLOAT(10, 2) NOT NULL,
    data DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE
);

CREATE TABLE venda_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venda_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES vendas(id) ON DELETE CASCADE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);


INSERT INTO clientes (nome, email, telefone) VALUES
('Roberto Rissini Furini', 'ovo.roberto.caval@gmail.com', '41982192810'),
('Nathan Taiki Tominaga', 'proplayer_lol@hotmail.com', '41928182915');

INSERT INTO funcionarios (nome, cargo, salario) VALUES
('Pedro Guilherme', 'Atendente', 1500.00),
('Victor Schernikau', 'Gerente', 2500.00);

INSERT INTO produtos (nome, preco, quantidade) VALUES
('Maçã', 3.50, 100),
('Banana', 2.00, 200),
('Laranja', 2.50, 150);

INSERT INTO vendas (cliente_id, total) VALUES
(1, 10.50),
(2, 5.00);

INSERT INTO venda_produtos (venda_id, produto_id, quantidade) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 2, 2);


SELECT * FROM clientes;

SELECT v.id AS venda_id, c.nome AS cliente, v.total, v.data
FROM vendas v
JOIN clientes c ON v.cliente_id = c.id;

SELECT SUM(total) AS total_vendas FROM vendas;

SELECT nome, cargo, salario FROM funcionarios;

SELECT nome, quantidade FROM produtos;

SELECT p.nome, SUM(vp.quantidade) AS total_vendido
FROM venda_produtos vp
JOIN produtos p ON vp.produto_id = p.id
GROUP BY p.nome
ORDER BY total_vendido DESC;


UPDATE produtos SET preco = 3.80 WHERE nome = 'Maçã';

UPDATE produtos SET quantidade = quantidade - 2 WHERE id = 1;

DELETE FROM clientes WHERE id = 1;
