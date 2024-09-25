
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor FLOAT(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

ALTER TABLE clientes
ADD COLUMN IF NOT EXISTS telefone VARCHAR(9);

CREATE INDEX IF NOT EXISTS idx_data_pedido ON pedidos(data_pedido);

ALTER TABLE clientes
ADD CONSTRAINT const_email UNIQUE (email);

INSERT INTO clientes (id_cliente, nome, email, telefone) VALUES 
(1, 'Pedro Guilherme Kozac', 'tisaun_pgkbp@hotmail.com', '419638531'),
(2, 'Victor Schernikau', 'vprebz@hotmail.com', '41923019432'),
(3, 'Nathan Taiki', 'sinai@gmail.com', '41982132327');

INSERT INTO pedidos (id_pedido, id_cliente, data_pedido, valor) VALUES
(1, 1, '2024-08-06', 100.00),
(2, 1, '2024-03-05', 300.00),
(3, 2, '2023-10-12', 199.99),
(4, 3, '2024-20-04', 50.25);

SELECT * FROM clientes;
SELECT * FROM pedidos;
