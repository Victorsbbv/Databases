CREATE DATABASE DistribuidoraDeBebidas;
USE DistribuidoraDeBebidas;

CREATE TABLE Fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    contato TEXT,
    endereco TEXT
);

CREATE TABLE Bebidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    tipo TEXT,
    preco FLOAT(10, 2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(id)
);

CREATE TABLE ItensPedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    bebida_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (bebida_id) REFERENCES Bebidas(id)
);

INSERT INTO Fornecedores (nome, contato, endereco) VALUES
('Fornecedor Daymen', 'bbq@gmail.com', 'Rua Leonardo, 123'),
('Fornecedor ARAM', 'howling@hotmail.com', 'Rua Pedro, 126'),
('Fornecedor CS', 'xiter@gmail.com', 'Rua Nathan, 721'),
('Fornecedor L4D', 'themonsterswithin@hotmail.com', 'Rua Victor, 101'),
('Fornecedor DBD', 'deathisnotanescape@gmail.com', 'Rua Nicolas, 112');

INSERT INTO Bebidas (nome, tipo, preco, estoque) VALUES
('Cerveja Brahma', 'Cerveja', 6.00, 100),
('Refrigerante Pepsi', 'Refrigerante', 3.00, 200),
('Vinho Branco', 'Vinho', 20.00, 50),
('Cerveja Skol', 'Cerveja', 5.50, 80),
('Suco de Laranja', 'Suco', 12.50, 150),
('Água Mineral', 'Água', 2.00, 300);

INSERT INTO Pedidos (data, fornecedor_id) VALUES
('2024-10-10', 1),
('2024-10-11', 2),
('2024-10-12', 3);

INSERT INTO ItensPedido (pedido_id, bebida_id, quantidade) VALUES
(1, 1, 10),
(1, 2, 20),
(2, 3, 5),
(3, 4, 15),
(3, 5, 10);

UPDATE Bebidas SET estoque = estoque - 5 WHERE id = 1;

DELETE FROM ItensPedido WHERE pedido_id IN (SELECT id FROM Pedidos WHERE fornecedor_id = 2);

DELETE FROM Pedidos WHERE fornecedor_id = 2;

DELETE FROM Fornecedores WHERE id = 2;

DELETE FROM Bebidas WHERE id = 3;

SELECT * FROM Bebidas;

SELECT DISTINCT nome FROM Bebidas;

SELECT * FROM Bebidas ORDER BY preco DESC LIMIT 5;

CREATE TABLE BebidasCaras AS
SELECT * FROM Bebidas WHERE preco > 10;

SELECT * FROM BebidasCaras;
