CREATE DATABASE panificadora;
USE panificadora;

CREATE TABLE Categorias_Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT
);

CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    preco FLOAT(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categorias_Produtos(id)
);

CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    endereco TEXT,
    telefone TEXT
);

CREATE TABLE Fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    contato TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE Itens_Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    preco_unitario FLOAT(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

CREATE TABLE Estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

CREATE TABLE Vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    preco_unitario FLOAT(10, 2) NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

INSERT INTO Categorias_Produtos (nome) VALUES
('Pães'),
('Bolos'),
('Doces'),
('Biscoitos'),
('Salgados'),
('Bebidas'),
('Tortas'),
('Sanduíches'),
('Saladas'),
('Cafés'),
('Sucos'),
('Sopas'),
('Massas'),
('Sobremesas'),
('Petit Fours'),
('Vegetariano'),
('Sem Glúten'),
('Orgânico'),
('Produtos Regionais'),
('Outros');

INSERT INTO Produtos (nome, preco, categoria_id) VALUES
('Pão de Queijo', 1.50, 1),
('Bolo de Cenoura', 12.00, 2),
('Brigadeiro', 1.20, 3),
('Biscoito de Maizena', 0.80, 4),
('Coxinha', 3.50, 5),
('Café Expresso', 3.00, 10),
('Suco de Laranja', 4.50, 11),
('Torta de Frango', 15.00, 7),
('Sanduíche Natural', 8.50, 8),
('Salada de Frutas', 6.00, 9),
('Petit Gateau', 12.00, 13),
('Pão Integral', 2.00, 1),
('Bolo de Chocolate', 14.00, 2),
('Café com Leite', 4.00, 10),
('Biscoito de Polvilho', 0.90, 4),
('Pastel de Forno', 5.00, 5),
('Torta de Limão', 13.00, 7),
('Sanduíche de Atum', 9.00, 8),
('Suco de Uva', 5.00, 11),
('Café Mocha', 4.50, 10);

INSERT INTO Clientes (nome, endereco, telefone) VALUES
('Ana Silva', 'Rua das Flores, 123', '(41) 9988-7766'),
('Bruno Costa', 'Avenida Central, 456', '(41) 9977-6655'),
('Carlos Almeida', 'Rua das Orquídeas, 789', '(41) 9966-5544'),
('Daniela Souza', 'Travessa do Sol, 101', '(41) 9955-4433'),
('Eduardo Martins', 'Alameda das Palmeiras, 202', '(41) 9944-3322'),
('Fernanda Oliveira', 'Rua das Rosas, 303', '(41) 9933-2211'),
('Gabriel Santos', 'Avenida do Mar, 404', '(41) 9922-1100'),
('Helena Silva', 'Rua dos Girassóis, 505', '(41) 9911-0099'),
('Isabela Lima', 'Travessa da Lua, 606', '(41) 9900-9988'),
('João Pedro', 'Alameda das Acácias, 707', '(41) 9899-8877'),
('Karina Silva', 'Rua das Violetas, 808', '(41) 9888-7766'),
('Leonardo Costa', 'Avenida das Araucárias, 909', '(41) 9877-6655'),
('Mariana Souza', 'Rua dos Lírios, 1010', '(41) 9866-5544'),
('Nathalia Santos', 'Travessa do Vento, 1111', '(41) 9855-4433'),
('Otávio Almeida', 'Alameda das Magnólias, 1212', '(41) 9844-3322'),
('Patrícia Lima', 'Rua dos Manacás, 1313', '(41) 9833-2211'),
('Ricardo Oliveira', 'Avenida do Sol, 1414', '(41) 9822-1100'),
('Sabrina Costa', 'Travessa das Estrelas, 1515', '(41) 9811-0099'),
('Thiago Martins', 'Rua das Dalias, 1616', '(41) 9800-9988'),
('Viviane Souza', 'Alameda das Hortênsias, 1717', '(41) 9799-8877');

INSERT INTO Fornecedores (nome, contato, telefone, endereco) VALUES
('Casa dos Trigos', 'vendas@casadostrigo.com.br', '(41) 9654-1234', 'Rua Almirante Tamandaré, 1000'),
('Distribuidora Café Real', 'contato@cafereal.com.br', '(41) 9654-2345', 'Avenida Visconde de Guarapuava, 550'),
('Panifrio', 'relacoes@panifrio.com.br', '(41) 9654-3456', 'Rua XV de Novembro, 777'),
('Doces do Paraná', 'docespr@outlook.com', '(41) 9654-4567', 'Rua das Flores, 1234'),
('Forno Nobre Alimentos', 'forno.nobre@exemplo.com', '(41) 9654-5678', 'Avenida República Argentina, 210'),
('Grãos Select', 'comercial@graosselect.com.br', '(41) 9654-6789', 'Rua José Loureiro, 305'),
('Delícias da Fazenda', 'deliciasfazenda@gmail.com', '(41) 9654-7890', 'Travessa Nestor de Castro, 201'),
('Leite Curitiba', 'contato@leitecuritiba.com.br', '(41) 9654-8901', 'Rua André de Barros, 150'),
('Panamar', 'representante@panamar.com', '(41) 9654-9012', 'Rua Carlos de Carvalho, 455'),
('Moinho Granjeiro', 'vendas@moinhogranjeiro.com.br', '(41) 9654-1123', 'Alameda Cabral, 90'),
('Cacau Brasil', 'cacau.brasil@exemplo.com', '(41) 9654-2234', 'Rua Vicente Machado, 120'),
('NaturalMix Produtos', 'naturalmix@exemplo.com', '(41) 9654-3345', 'Avenida Batel, 600'),
('Doceria Santa Marta', 'doceria.santamarta@gmail.com', '(41) 9654-4456', 'Rua Monsenhor Celso, 314'),
('Distribuidora Beira Rio', 'beirario@distrib.com', '(41) 9654-5567', 'Rua Emiliano Perneta, 700'),
('Queijos Serra Azul', 'serra.azul@queijos.com', '(41) 9654-6678', 'Rua Saldanha Marinho, 422'),
('Verdureiros Associados', 'verdurassoc@gmail.com', '(41) 9654-7789', 'Avenida Sete de Setembro, 1001'),
('Cereais Integrais', 'cereais.integral@exemplo.com', '(41) 9654-8890', 'Rua Barão do Rio Branco, 230'),
('Pastas Italianas', 'pastaitaliana@exemplo.com', '(41) 9654-9911', 'Rua Marechal Deodoro, 89'),
('Padoca Fornecedores', 'contato@padocafornecedores.com.br', '(41) 9654-1022', 'Avenida Silva Jardim, 875'),
('Essência dos Campos', 'contato@essenciacampos.com.br', '(41) 9654-2133', 'Rua Padre Anchieta, 568');

INSERT INTO Pedidos (cliente_id, data) VALUES
(1, '2024-02-01'),
(2, '2024-02-03'),
(3, '2024-02-05'),
(4, '2024-02-06'),
(5, '2024-02-07'),
(6, '2024-02-09'),
(7, '2024-02-11'),
(8, '2024-02-13'),
(9, '2024-02-14'),
(10, '2024-02-15'),
(11, '2024-02-16'),
(12, '2024-02-17'),
(13, '2024-02-18'),
(14, '2024-02-19'),
(15, '2024-02-20'),
(16, '2024-02-21'),
(17, '2024-02-22'),
(18, '2024-02-23'),
(19, '2024-02-24'),
(20, '2024-02-25');

INSERT INTO Itens_Pedidos (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 3, 1.50),
(2, 2, 1, 12.00),
(3, 3, 4, 1.20),
(4, 4, 2, 0.80),
(5, 5, 1, 3.50),
(6, 6, 1, 3.00),
(7, 7, 2, 4.50),
(8, 8, 1, 15.00),
(9, 9, 1, 8.50),
(10, 10, 2, 6.00),
(11, 11, 2, 12.00),
(12, 12, 3, 2.00),
(13, 13, 1, 14.00),
(14, 14, 1, 4.00),
(15, 15, 3, 0.90),
(16, 16, 2, 5.00),
(17, 17, 1, 13.00),
(18, 18, 2, 9.00),
(19, 19, 3, 5.00),
(20, 20, 1, 4.50);

INSERT INTO Estoque (produto_id, quantidade) VALUES
(1, 100),
(2, 50),
(3, 200),
(4, 150),
(5, 75),
(6, 120),
(7, 90),
(8, 60),
(9, 40),
(10, 30),
(11, 20),
(12, 110),
(13, 50),
(14, 80),
(15, 130),
(16, 60),
(17, 45),
(18, 35),
(19, 95),
(20, 70);

INSERT INTO Vendas (pedido_id, produto_id, quantidade, preco_unitario, data) VALUES
(1, 1, 3, 1.50, '2024-02-01'),
(2, 2, 1, 12.00, '2024-02-03'),
(3, 3, 4, 1.20, '2024-02-05'),
(4, 4, 2, 0.80, '2024-02-06'),
(5, 5, 1, 3.50, '2024-02-07'),
(6, 6, 1, 3.00, '2024-02-09'),
(7, 7, 2, 4.50, '2024-02-11'),
(8, 8, 1, 15.00, '2024-02-13'),
(9, 9, 1, 8.50, '2024-02-14'),
(10, 10, 2, 6.00, '2024-02-15'),
(11, 11, 2, 12.00, '2024-02-16'),
(12, 12, 3, 2.00, '2024-02-17'),
(13, 13, 1, 14.00, '2024-02-18'),
(14, 14, 1, 4.00, '2024-02-19'),
(15, 15, 3, 0.90, '2024-02-20'),
(16, 16, 2, 5.00, '2024-02-21'),
(17, 17, 1, 13.00, '2024-02-22'),
(18, 18, 2, 9.00, '2024-02-23'),
(19, 19, 3, 5.00, '2024-02-24'),
(20, 20, 1, 4.50, '2024-02-25');


CREATE INDEX idx_produtos_categoria ON Produtos (categoria_id);
CREATE INDEX idx_pedidos_cliente ON Pedidos (cliente_id);

# Consulta 1: Listar todos os produtos e suas respectivas categorias

SELECT p.nome AS Produto, c.nome AS Categoria
FROM Produtos p
JOIN Categorias_Produtos c ON p.categoria_id = c.id;

# Consulta 2: Obter todos os pedidos feitos por um cliente específico (ID 5)

SELECT p.id AS PedidoID, p.data AS DataPedido, c.nome AS Cliente
FROM Pedidos p
JOIN Clientes c ON p.cliente_id = c.id
WHERE c.id = 5;

# Consulta 3: Listar o estoque disponível de cada produto, ordenado pela quantidade

SELECT p.nome AS Produto, e.quantidade AS QuantidadeEstoque
FROM Estoque e
JOIN Produtos p ON e.produto_id = p.id
ORDER BY e.quantidade DESC;

# Consulta 4: Exibir detalhes de vendas, incluindo produto, quantidade, preço unitário e valor total

SELECT v.pedido_id AS PedidoID, p.nome AS Produto, v.quantidade AS Quantidade, 
v.preco_unitario AS PrecoUnitario, (v.quantidade * v.preco_unitario) AS ValorTotal
FROM Vendas v
JOIN Produtos p ON v.produto_id = p.id;

# Consulta 5: Consultar o total de vendas (em valor) para cada produto

SELECT p.nome AS Produto, SUM(v.quantidade * v.preco_unitario) AS TotalVendas
FROM Vendas v
JOIN Produtos p ON v.produto_id = p.id
GROUP BY p.nome
ORDER BY TotalVendas DESC;

# Consulta 6: Obter os produtos com quantidade baixa no estoque (menos de 50 unidades)

SELECT p.nome AS Produto, e.quantidade AS QuantidadeEstoque
FROM Estoque e
JOIN Produtos p ON e.produto_id = p.id
WHERE e.quantidade < 50;
