# EXERCÍCIO 1
CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_nascimento DATE
);

CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE itens_pedido (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto VARCHAR(100),
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id)
);

INSERT INTO clientes(cliente_id, nome, email, data_nascimento) VALUES (1, 'Pedro Guilherme', 'tisaun_pgkbp@gmail.com', 11-02-2003),
(2, 'Nathan Tominaga', 'sinai@gmail.com', 12-31-2002);

INSERT INTO pedidos(pedido_id, data_pedido, valor_total) VALUES (1, 08-25-2024, 120.99),
(2, 08-27-2024, 199.90);

INSERT INTO itens_pedido(item_id, produto, quantidade, preco_unitario) VALUES (1, 'Mouse Redragon', 1, 120.99),
(2, 'Headset Onikuma RBG', 1, 199.90);

# EXERCÍCIO 2
SELECT COUNT(*) AS total_pedidos, AVG(valor_total) AS media_valor_total
FROM pedidos;

# EXERCÍCIO 3
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES funcionarios(id)
);

# EXERCÍCIO 4
CREATE TABLE categoria (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produto (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(categoria_id)
);

# EXERCÍCIO 5

CREATE TABLE clientes_2 (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(100) NOT NULL
);

CREATE TABLE produtos_2 (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    produto_nome VARCHAR(100) NOT NULL,
    preco_unitario DECIMAL(10, 2)
);


CREATE TABLE vendas (
    venda_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes_2(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES produtos_2(produto_id)
);

INSERT INTO clientes_2(cliente_id, cliente_nome) VALUES (1, 'Peter William'),
(2, 'Roberto Furini');

INSERT INTO produtos_2(produto_id, produto_nome, preco_unitario) VALUES (1, 'Book of Legends', 50.90),
(2, 'Book of Love', 70.50);  

INSERT INTO vendas (venda_id, cliente_id, produto_id, quantidade) VALUES
(1, 1, 1, 3),
(2, 2, 2, 1);


# EXERCÍCIO 6

SELECT produtosalias.produto_nome, vendasalias.quantidade * produtosalias.preco_unitario AS valor_total
FROM vendas vendasalias
JOIN produtos_2 produtosalias ON vendasalias.produto_id = produtosalias.produto_id;

# EXERCÍCIO 7

CREATE TABLE fornecedores (
    fornecedor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100) NOT NULL UNIQUE
);

