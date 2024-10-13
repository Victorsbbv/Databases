CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    data_cadastro DATE
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (nome, email, data_cadastro) VALUES
('Pedro Guilherme', 'tisaun@gmail.com', '2023-02-01'),
('Kozac Barbosa', 'lol@gmail.com', '2023-03-15'),
('Victor Vieira', 'l4d@hotmail.com', '2023-04-20'),
('Nathan Tominaga', 'cs@hotmail.com', '2023-05-10'),
('Amanda Risisini', 'ovo@gmail.com', '2023-06-25');

INSERT INTO pedidos (cliente_id, data_pedido, valor_total) VALUES
(1, '2023-06-01', 150.00),
(2, '2023-06-15', 200.50),
(3, '2023-07-10', 90.75);

SELECT * FROM clientes;

# Email dos clientes cadastrados após 2023-01-01.
SELECT nome, email FROM clientes WHERE data_cadastro > '2023-01-01';

# Valor maior que 100
SELECT * FROM pedidos WHERE valor_total > 100;

# Clientes cujo nome começa com 'A'.
SELECT * FROM clientes WHERE nome LIKE 'A%';

# Todos os pedidos com nome do cliente
SELECT p.id AS pedido_id, c.nome AS cliente_nome, p.data_pedido, p.valor_total 
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;

# Total de pedidos feitos por cada cliente.
SELECT c.nome, COUNT(p.id) AS total_pedidos 
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id;


SELECT SUM(valor_total) AS valor_total_pedidos FROM pedidos;

SELECT AVG(valor_total) AS media_valor_pedidos FROM pedidos;

UPDATE clientes 
SET email = 'melhorjungler@gmail.com' 
WHERE id = 1;

UPDATE pedidos 
SET valor_total = valor_total * 1.10;


DELETE FROM pedidos WHERE cliente_id = 1;
DELETE FROM clientes WHERE id = 1; 

# Clientes sem pedido
SELECT c.* 
FROM clientes c 
LEFT JOIN pedidos p ON c.id = p.cliente_id 
WHERE p.id IS NULL;

# Clientes e o número de pedidos que cada um fez, incluindo os que não têm pedidos.
SELECT c.nome, COUNT(p.id) AS numero_pedidos 
FROM clientes c 
LEFT JOIN pedidos p ON c.id = p.cliente_id 
GROUP BY c.id;


CREATE INDEX idx_email ON clientes(email);
CREATE INDEX idx_valor_total ON pedidos(valor_total);
