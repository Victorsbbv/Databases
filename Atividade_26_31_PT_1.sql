CREATE DATABASE Agroindustria;
USE Agroindustria;

CREATE TABLE Produtores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    endereco TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE Fornecedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    tipo TEXT, 
    endereco TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE Insumos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    quantidade INT NOT NULL,
    unidade_medida VARCHAR(20),
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(id)
);

CREATE TABLE Produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    preco FLOAT(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

CREATE TABLE Vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT,
    quantidade INT NOT NULL,
    preco_total FLOAT(10, 2) NOT NULL,
    data_venda DATE,
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

CREATE TABLE Funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    cargo TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE Logistica (
    id INT PRIMARY KEY AUTO_INCREMENT,
    venda_id INT,
    status TEXT,
    data_envio DATE,
    FOREIGN KEY (venda_id) REFERENCES Vendas(id)
);

CREATE TABLE Estoque (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT,
    tipo_movimento VARCHAR(20),
    quantidade INT NOT NULL,
    data_movimento DATE,
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

INSERT INTO Produtores (nome, endereco, telefone, email) VALUES 
('João Silva', 'Rua das Flores, 123', '11987654321', 'joao.silva@gmail.com'),
('Maria Oliveira', 'Avenida Brasil, 456', '11987654322', 'maria.oliveira@gmail.com'),
('Carlos Pereira', 'Praça da Liberdade, 789', '11987654323', 'carlos.pereira@gmail.com'),
('Ana Santos', 'Rua do Comércio, 321', '11987654324', 'ana.santos@gmail.com'),
('Lucas Costa', 'Avenida das Américas, 654', '11987654325', 'lucas.costa@gmail.com'),
('Patrícia Gomes', 'Rua do Sol, 111', '11987654326', 'patricia.gomes@gmail.com'),
('Fernando Lima', 'Rua das Acácias, 222', '11987654327', 'fernando.lima@gmail.com'),
('Juliana Rodrigues', 'Rua das Palmeiras, 333', '11987654328', 'juliana.rodrigues@gmail.com'),
('Ricardo Alves', 'Avenida do Povo, 444', '11987654329', 'ricardo.alves@gmail.com'),
('Tatiane Martins', 'Rua do Rio, 555', '11987654330', 'tatiane.martins@gmail.com'),
('Gustavo Freitas', 'Rua do Norte, 666', '11987654331', 'gustavo.freitas@gmail.com'),
('Camila Ribeiro', 'Avenida da Liberdade, 777', '11987654332', 'camila.ribeiro@gmail.com'),
('Felipe Nascimento', 'Praça do Comércio, 888', '11987654333', 'felipe.nascimento@gmail.com'),
('Cláudia Ferreira', 'Rua do Lazer, 999', '11987654334', 'claudia.ferreira@gmail.com'),
('Leonardo Carvalho', 'Rua do Progresso, 1010', '11987654335', 'leonardo.carvalho@gmail.com'),
('Renata Soares', 'Avenida Verde, 1212', '11987654336', 'renata.soares@gmail.com'),
('Victor Hugo', 'Rua da Esperança, 1313', '11987654337', 'victor.hugo@gmail.com'),
('Aline Macedo', 'Rua da Alegria, 1414', '11987654338', 'aline.macedo@gmail.com'),
('Edson Lima', 'Avenida da União, 1515', '11987654339', 'edson.lima@gmail.com'),
('Mariana Souza', 'Rua do Trabalho, 1616', '11987654340', 'mariana.souza@gmail.com');

INSERT INTO Fornecedores (nome, tipo, endereco, telefone, email) VALUES 
('Fertilizantes do Brasil', 'insumos', 'Rodovia dos Fertilizantes, 101', '11876543210', 'contato@fertbrasil.com'),
('Máquinas Agrícolas LTDA', 'máquinas', 'Avenida da Tecnologia, 202', '11876543211', 'info@maquinasec.com'),
('Químicos do Agro', 'produtos químicos', 'Rua da Indústria, 303', '11876543212', 'vendas@quimicosagro.com'),
('Sementes Premium', 'insumos', 'Estrada das Sementes, 404', '11876543213', 'semente@premium.com'),
('Agro Produtos Ltda', 'produtos químicos', 'Avenida Verde, 505', '11876543214', 'agro@produtosltda.com'),
('Fertipar Ltda', 'insumos', 'Rodovia Verde, 606', '11876543215', 'contato@fertipar.com'),
('Agro Maquinarias', 'máquinas', 'Avenida do Campo, 707', '11876543216', 'info@agromaq.com'),
('Fertilizantes & Cia', 'insumos', 'Rua das Árvores, 808', '11876543217', 'contato@fertilizantescia.com'),
('Indústria Química Brasil', 'produtos químicos', 'Rua da Indústria Química, 909', '11876543218', 'vendas@indquimica.com'),
('Sementes do Brasil', 'insumos', 'Avenida do Plantio, 1001', '11876543219', 'semente@brasil.com'),
('Fornecedora de Insumos LTDA', 'insumos', 'Rua dos Fornecedores, 1002', '11876543220', 'contato@fornecedores.com'),
('Equipamentos Agrícolas Ltda', 'máquinas', 'Rodovia dos Equipamentos, 1003', '11876543221', 'info@equipag.com'),
('Fertilizantes do Sul', 'insumos', 'Estrada do Sul, 1004', '11876543222', 'contato@fertbrasil.com'),
('Químicos da Terra', 'produtos químicos', 'Avenida Terra, 1005', '11876543223', 'vendas@quimicosterra.com'),
('Sementes de Ouro', 'insumos', 'Rua do Ouro, 1006', '11876543224', 'semente@ouro.com'),
('Agro Fertil Ltda', 'produtos químicos', 'Rodovia dos Fertilizantes, 1007', '11876543225', 'contato@agrofertil.com'),
('Máquinas e Equipamentos do Campo', 'máquinas', 'Avenida do Campo, 1008', '11876543226', 'info@maquinasequip.com'),
('Insumos do Brasil', 'insumos', 'Rua do Insumo, 1009', '11876543227', 'contato@insumos.com'),
('Fertilizantes do Centro', 'insumos', 'Rodovia do Centro, 1010', '11876543228', 'contato@fertcentro.com');

INSERT INTO Insumos (nome, quantidade, unidade_medida, fornecedor_id) VALUES 
('Adubo Orgânico', 500, 'kg', 1),
('Sementes de Milho', 200, 'kg', 4),
('Herbicida X', 150, 'litros', 3),
('Inseticida Y', 100, 'litros', 3),
('Fungicida Z', 80, 'litros', 3),
('Adubo Químico A', 300, 'kg', 1),
('Sementes de Soja', 250, 'kg', 4),
('Pesticida B', 120, 'litros', 3),
('Fertilizante C', 200, 'litros', 2),
('Herbicida D', 60, 'litros', 2),
('Adubo Granulado E', 400, 'kg', 1),
('Sementes de Arroz', 180, 'kg', 4),
('Inseticida F', 90, 'litros', 3),
('Fungicida G', 70, 'litros', 3),
('Adubo Foliar H', 350, 'kg', 1),
('Sementes de Trigo', 240, 'kg', 4),
('Pesticida I', 130, 'litros', 3),
('Fertilizante J', 220, 'litros', 2),
('Herbicida K', 50, 'litros', 2),
('Adubo Líquido L', 330, 'litros', 1);

INSERT INTO Produtos (nome, preco, quantidade_estoque) VALUES 
('Óleo de Soja', 3.50, 100),
('Açúcar Cristal', 1.80, 200),
('Farinha de Trigo', 2.20, 150),
('Arroz Branco', 4.00, 180),
('Milho em Grão', 2.00, 120),
('Feijão Carioca', 5.00, 90),
('Sementes de Abóbora', 6.50, 80),
('Mandioca Congelada', 3.80, 160),
('Café em Grão', 10.00, 70),
('Farinha de Milho', 2.50, 110),
('Batata Doce', 3.00, 130),
('Cenoura', 2.00, 140),
('Beterraba', 2.20, 125),
('Tomate', 4.50, 140),
('Alface', 1.50, 200),
('Brócolis', 5.00, 85),
('Repolho', 2.80, 150),
('Pimentão', 3.50, 130),
('Berinjela', 4.00, 120),
('Pepino', 1.20, 160);

INSERT INTO Vendas (produto_id, quantidade, preco_total, data_venda) VALUES 
(1, 10, 35.00, '2024-01-01'),
(2, 20, 36.00, '2024-01-02'),
(3, 15, 33.00, '2024-01-03'),
(4, 18, 72.00, '2024-01-04'),
(5, 12, 24.00, '2024-01-05'),
(6, 8, 40.00, '2024-01-06'),
(7, 7, 45.50, '2024-01-07'),
(8, 9, 34.20, '2024-01-08'),
(9, 11, 110.00, '2024-01-09'),
(10, 14, 35.00, '2024-01-10'),
(11, 16, 32.00, '2024-01-11'),
(12, 20, 30.00, '2024-01-12'),
(13, 19, 38.00, '2024-01-13'),
(14, 22, 88.00, '2024-01-14'),
(15, 15, 75.00, '2024-01-15'),
(16, 14, 70.00, '2024-01-16'),
(17, 11, 55.00, '2024-01-17'),
(18, 13, 39.00, '2024-01-18'),
(19, 10, 40.00, '2024-01-19'),
(20, 16, 48.00, '2024-01-20');

INSERT INTO Funcionarios (nome, cargo, telefone, email) VALUES 
('Pedro Guilherme', 'Agrônomo', '11923456789', 'pedro.guilherme@gmail.com'),
('Roberto Furini', 'Gerente', '11923456790', 'roberto.furini@gmail.com'),
('Nathan Tominaga', 'Técnico', '11923456791', 'nathan.tominaga@gmail.com'),
('Victor Vieira', 'Auxiliar', '11923456792', 'victor.vieira@gmail.com'),
('Carlos Alberto', 'Coordenador', '11923456793', 'carlos.alberto@gmail.com'),
('Renata Lima', 'Assistente', '11923456794', 'renata.lima@gmail.com'),
('Fernando Martins', 'Supervisor', '11923456795', 'fernando.martins@gmail.com'),
('Juliana Sousa', 'Técnico', '11923456796', 'juliana.sousa@gmail.com'),
('Ricardo Rocha', 'Estagiário', '11923456797', 'ricardo.rocha@gmail.com'),
('Camila Freitas', 'Analista', '11923456798', 'camila.freitas@gmail.com'),
('Felipe Santos', 'Gerente de Vendas', '11923456799', 'felipe.santos@gmail.com'),
('Lucas Alves', 'Vendedor', '11923456800', 'lucas.alves@gmail.com'),
('Patrícia Mendes', 'Operadora de Máquinas', '11923456801', 'patricia.mendes@gmail.com'),
('Ana Beatriz', 'Vendedora', '11923456802', 'ana.beatriz@gmail.com'),
('Victor Hugo', 'Assistente Administrativo', '11923456803', 'victor.hugo@gmail.com'),
('Gustavo Nascimento', 'Engenheiro Agrônomo', '11923456804', 'gustavo.nascimento@gmail.com'),
('Cláudia Silva', 'Coordenadora', '11923456805', 'claudia.silva@gmail.com'),
('Márcio Vieira', 'Diretor', '11923456806', 'marcio.vieira@gmail.com'),
('Sandra Costa', 'Analista de Qualidade', '11923456807', 'sandra.costa@gmail.com'),
('Roberto Almeida', 'Mecânico', '11923456808', 'roberto.almeida@gmail.com'),
('Fernando Lima', 'Auxiliar de Produção', '11923456809', 'fernando.lima@gmail.com');

INSERT INTO Logistica (venda_id, status, data_envio) VALUES 
(1, 'em entrega', '2024-01-02'),
(2, 'entregue', '2024-01-03'),
(3, 'cancelado', '2024-01-04'),
(4, 'em entrega', '2024-01-05'),
(5, 'entregue', '2024-01-06'),
(6, 'em entrega', '2024-01-07'),
(7, 'cancelado', '2024-01-08'),
(8, 'em entrega', '2024-01-09'),
(9, 'entregue', '2024-01-10'),
(10, 'em entrega', '2024-01-11'),
(11, 'entregue', '2024-01-12'),
(12, 'cancelado', '2024-01-13'),
(13, 'em entrega', '2024-01-14'),
(14, 'entregue', '2024-01-15'),
(15, 'em entrega', '2024-01-16'),
(16, 'cancelado', '2024-01-17'),
(17, 'em entrega', '2024-01-18'),
(18, 'entregue', '2024-01-19'),
(19, 'em entrega', '2024-01-20'),
(20, 'entregue', '2024-01-21');

INSERT INTO Estoque (produto_id, tipo_movimento, quantidade, data_movimento) VALUES 
(1, 'entrada', 50, '2024-01-01'),
(2, 'entrada', 100, '2024-01-02'),
(3, 'entrada', 150, '2024-01-03'),
(4, 'entrada', 80, '2024-01-04'),
(5, 'entrada', 120, '2024-01-05'),
(6, 'entrada', 90, '2024-01-06'),
(7, 'entrada', 70, '2024-01-07'),
(8, 'entrada', 60, '2024-01-08'),
(9, 'entrada', 40, '2024-01-09'),
(10, 'entrada', 50, '2024-01-10'),
(11, 'entrada', 80, '2024-01-11'),
(12, 'entrada', 90, '2024-01-12'),
(13, 'entrada', 70, '2024-01-13'),
(14, 'entrada', 60, '2024-01-14'),
(15, 'entrada', 50, '2024-01-15'),
(16, 'entrada', 40, '2024-01-16'),
(17, 'entrada', 30, '2024-01-17'),
(18, 'entrada', 20, '2024-01-18'),
(19, 'entrada', 10, '2024-01-19'),
(20, 'entrada', 5, '2024-01-20');

SELECT p.nome AS Produto, 
       SUM(e.quantidade) AS Total_Produzido
FROM Produtos p
JOIN Estoque e ON p.id = e.produto_id
WHERE e.tipo_movimento = 'entrada'
GROUP BY p.nome;

SELECT p.nome AS Produto, 
       SUM(v.quantidade) AS Total_Vendido, 
       SUM(v.preco_total) AS Total_Arrecadado
FROM Vendas v
JOIN Produtos p ON v.produto_id = p.id
GROUP BY p.nome;

SELECT p.nome AS Produto, 
       p.quantidade_estoque AS Estoque_Atual
FROM Produtos p
WHERE p.quantidade_estoque > 50;

SELECT i.nome AS Insumo, 
       e.tipo_movimento AS Tipo_Movimento, 
       SUM(e.quantidade) AS Quantidade_Movimentada
FROM Insumos i
JOIN Estoque e ON i.id = e.produto_id
GROUP BY i.nome, e.tipo_movimento;

SELECT l.status AS Status_Entrega, 
       COUNT(l.venda_id) AS Total_Vendas
FROM Logistica l
GROUP BY l.status;

SELECT f.nome AS Funcionário, 
       f.cargo AS Cargo
FROM Funcionarios f;

SELECT DATE(v.data_venda) AS Data, 
       SUM(v.preco_total) AS Total_Vendas
FROM Vendas v
GROUP BY DATE(v.data_venda)
ORDER BY Data;

SELECT 
    'Produto' AS Tipo,
    p.nome AS Nome,
    p.quantidade_estoque AS Quantidade_Estoque
FROM Produtos p
UNION ALL
SELECT 
    'Insumo' AS Tipo,
    i.nome AS Nome,
    SUM(e.quantidade) AS Quantidade_Estoque
FROM Insumos i
JOIN Estoque e ON i.id = e.produto_id
GROUP BY i.nome;
