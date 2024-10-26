CREATE DATABASE farmacia;
USE farmacia;


CREATE TABLE categorias_produtos (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria TEXT
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco FLOAT(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias_produtos(id_categoria)
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_fornecedor TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedidos (
    id_item_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario FLOAT(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);


CREATE INDEX idx_nome_produto ON produtos(nome_produto);

CREATE INDEX idx_data_pedido ON pedidos(data_pedido);

INSERT INTO categorias_produtos (nome_categoria)
VALUES 
('Medicamentos'),
('Suplementos'),
('Higiene Pessoal'),
('Cosméticos'),
('Equipamentos Médicos');

INSERT INTO produtos (nome_produto, preco, estoque, id_categoria)
VALUES 
('Paracetamol 500mg', 10.00, 50, 1),
('Vitamina C 1g', 15.00, 100, 2),
('Sabonete Antibacteriano', 5.50, 200, 3),
('Protetor Solar FPS 50', 35.00, 75, 4),
('Termômetro Digital', 40.00, 30, 5),
('Omeprazol 20mg', 12.00, 80, 1),
('Ibuprofeno 400mg', 9.50, 60, 1),
('Centrum A-Zinc', 45.00, 40, 2),
('Creme Dental Whitening', 8.00, 150, 3),
('Creme Hidratante 200ml', 25.00, 90, 4),
('Aspirina 500mg', 7.00, 100, 1),
('Vitamina D 2000UI', 30.00, 80, 2),
('Enxaguante Bucal 500ml', 12.00, 70, 3),
('Shampoo Anticaspa 400ml', 22.00, 60, 4),
('Aparelho de Pressão Digital', 120.00, 20, 5),
('Loratadina 10mg', 18.00, 50, 1),
('Calcio + Vitamina D', 35.00, 55, 2),
('Desodorante Roll-on', 10.00, 140, 3),
('Batom Hidratante', 20.00, 100, 4),
('Inalador Nebulizador', 150.00, 15, 5),
('Dipirona Sódica 1g', 6.00, 120, 1),
('Zinco 50mg', 25.00, 90, 2),
('Fio Dental 50m', 5.00, 130, 3),
('Base Facial 30ml', 45.00, 50, 4),
('Glicosímetro', 200.00, 10, 5),
('Amoxicilina 500mg', 20.00, 80, 1),
('Complexo B', 28.00, 70, 2),
('Lenços Umedecidos', 15.00, 200, 3),
('Máscara Facial Revitalizante', 35.00, 60, 4),
('Estetoscópio', 250.00, 25, 5),
('Cetoconazol 200mg', 19.00, 90, 1),
('Ômega 3 1000mg', 50.00, 40, 2),
('Creme Dental Kids', 6.00, 180, 3),
('Protetor Labial', 8.50, 120, 4),
('Aparelho de Glicemia', 220.00, 12, 5),
('Prednisona 20mg', 16.00, 95, 1),
('Multivitamínico Infantil', 40.00, 50, 2),
('Sabonete Líquido 300ml', 18.00, 150, 3),
('Máscara Capilar 500g', 55.00, 40, 4),
('Oxímetro de Dedo', 85.00, 20, 5),
('Losartana 50mg', 10.00, 130, 1),
('Vitamina E 400UI', 35.00, 60, 2),
('Desodorante Aerosol', 14.00, 160, 3),
('Pó Compacto Facial', 28.00, 90, 4),
('Seringa Descartável', 1.00, 500, 5),
('Diclofenaco 50mg', 8.00, 100, 1),
('Vitamina B12 1000mcg', 30.00, 50, 2),
('Escova de Dentes Macia', 4.00, 200, 3),
('Corretivo Facial', 22.00, 80, 4),
('Balança Digital', 110.00, 25, 5),
('Captopril 25mg', 7.00, 110, 1),
('Ferro 325mg', 20.00, 60, 2),
('Sabonete Íntimo 200ml', 18.00, 140, 3),
('Rímel 12ml', 28.00, 90, 4),
('Termômetro Infravermelho', 180.00, 15, 5),
('Simeticona 125mg', 12.00, 80, 1),
('Magnésio Dimalato', 50.00, 50, 2),
('Shampoo Infantil 300ml', 15.00, 160, 3),
('Blush Compacto', 30.00, 70, 4),
('Medidor de Pressão Manual', 65.00, 30, 5),
('Antiinflamatório Ibuprofeno 600mg', 22.00, 100, 1),
('Suplemento Vitamina C 500mg', 35.00, 50, 2),
('Desodorante Stick', 12.00, 120, 3),
('Delineador Líquido', 22.00, 80, 4),
('Inalador Portátil', 180.00, 12, 5),
('Lorazepam 2mg', 15.00, 100, 1),
('Vitamina K2 100mcg', 55.00, 40, 2),
('Cotonete 100 unidades', 5.50, 300, 3),
('Pó Iluminador', 32.00, 80, 4),
('Eletrocardiógrafo', 900.00, 5, 5),
('Amitriptilina 25mg', 12.00, 90, 1),
('Multivitamínico Mulher', 60.00, 40, 2),
('Água Micelar 200ml', 25.00, 120, 3),
('Creme Anti-Idade 50g', 80.00, 30, 4),
('Aparelho CPAP', 1200.00, 8, 5),
('Bromoprida 10mg', 14.00, 70, 1),
('Vitamina A 10.000UI', 35.00, 50, 2),
('Shampoo a Seco 200ml', 30.00, 100, 3),
('BB Cream 30ml', 40.00, 70, 4),
('Aparelho Auditivo', 500.00, 10, 5),
('Levotiroxina 50mcg', 12.00, 90, 1),
('Biotina 5000mcg', 40.00, 50, 2),
('Escova Dental Elétrica', 70.00, 25, 3),
('Protetor Solar Facial', 60.00, 90, 4),
('Respirador Hospitalar', 250.00, 20, 5),
('Metformina 850mg', 18.00, 120, 1),
('Cálcio 500mg', 30.00, 60, 2),
('Shampoo Antiqueda 300ml', 35.00, 80, 3),
('Batom Matte', 22.00, 100, 4),
('Aparelho de Pressão Arterial', 180.00, 15, 5);

INSERT INTO clientes (nome_cliente, telefone, email)
VALUES 
('Pedro Guilherme', '99999-1234', 'ana@gmail.com'),
('Nathan Tominaga', '99999-5678', 'joao@gmail.com'),
('Nicolas de Souza', '99999-8765', 'maria@gmail.com');

INSERT INTO fornecedores (nome_fornecedor, telefone, email)
VALUES 
('FarmaSupply', '1111-2222', 'contato@farmasupply.com'),
('MedDistribuidora', '3333-4444', 'contato@meddistribuidora.com');

INSERT INTO pedidos (id_cliente, data_pedido)
VALUES 
(1, '2024-10-10'),
(2, '2024-10-11');

INSERT INTO itens_pedidos (id_pedido, id_produto, quantidade, preco_unitario)
VALUES 
(1, 1, 2, 10.00),
(1, 3, 5, 5.50),
(2, 2, 1, 15.00);


SELECT 
    ip.id_item_pedido,
    p.id_pedido,
    c.nome_cliente,
    pr.nome_produto,
    ip.quantidade,
    ip.preco_unitario,
    (ip.quantidade * ip.preco_unitario) AS total_preco
FROM 
    itens_pedidos ip
JOIN 
    pedidos p ON ip.id_pedido = p.id_pedido
JOIN 
    clientes c ON p.id_cliente = c.id_cliente
JOIN 
    produtos pr ON ip.id_produto = pr.id_produto;

