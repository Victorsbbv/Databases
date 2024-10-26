CREATE DATABASE adega_vinho;
USE adega_vinho;


CREATE TABLE Fornecedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    contato TEXT,
    endereco TEXT
);

CREATE TABLE Vinhos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    tipo TEXT,
    ano_producao INT,
    teor_alcoolico FLOAT(4, 2),
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(id)
);

CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    telefone TEXT,
    endereco TEXT,
    email TEXT
);

CREATE TABLE Vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data_venda DATE,
    valor_total FLOAT(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE ItensVenda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    venda_id INT,
    vinho_id INT,
    quantidade INT,
    preco_unitario FLOAT(10, 2),
    subtotal FLOAT(10, 2) GENERATED ALWAYS AS (quantidade * preco_unitario) STORED,
    FOREIGN KEY (venda_id) REFERENCES Vendas(id),
    FOREIGN KEY (vinho_id) REFERENCES Vinhos(id)
);


INSERT INTO Fornecedores (nome, contato, endereco) VALUES
('Adega do Vale', 'José Almeida', 'Rua das Oliveiras'),
('Vinhos e Cia', 'Maria Fernanda', 'Avenida das Nações, 215'),
('Casa do Vinho', 'Carlos Silva', 'Estrada do Sol, 98'),
('Vinhos Premium', 'Cláudia Costa', 'Rua da Paz, 56'),
('Adega Santa Maria', 'Rafael Santos', 'Avenida Central, 77'),
('Vinhos do Mundo', 'Laura Lima', 'Rua do Comércio, 24'),
('Bodega Verde', 'Fernando Lima', 'Praça do Mercado, 10'),
('Vinhos e Queijos', 'Ricardo Pereira', 'Rua do Vinho, 30'),
('Estância do Vinho', 'Mariana Oliveira', 'Rua da Alegria, 100'),
('Vinícola Vale Verde', 'Eduardo Gomes', 'Avenida da Liberdade, 15'),
('Adega São Jorge', 'Sofia Martins', 'Rua dos Cedros, 12'),
('Vinhos da Serra', 'Bruno Costa', 'Avenida do Parque, 55'),
('Bodega do Campo', 'Helena Dias', 'Rua do Campo, 33'),
('Vinhos da Terra', 'Fábio Rocha', 'Rua do Sol, 18'),
('Casa do Vinho Verde', 'André Santos', 'Avenida das Flores, 44'),
('Adega do Porto', 'Lúcia Ferreira', 'Rua das Maçãs, 7'),
('Bodega da Praia', 'Juliana Almeida', 'Avenida da Praia, 89'),
('Vinhos da Montanha', 'Tiago Martins', 'Rua do Montanha, 66'),
('Casa do Vinho Alentejano', 'Marcio Gomes', 'Estrada do Alentejo, 27'),
('Vinhos do Tejo', 'Inês Silva', 'Praça do Tejo, 14'),
('Bodega Verdejante', 'Rita Lima', 'Avenida Verde, 75'),
('Vinhos e Sabores', 'Leonardo Oliveira', 'Rua dos Sabores, 45'),
('Adega da Ribeira', 'Patrícia Pereira', 'Rua da Ribeira, 22'),
('Casa do Vinho Tinto', 'Gustavo Nascimento', 'Rua do Tinto, 17'),
('Bodega da Quinta', 'Ana Cristina', 'Avenida da Quinta, 9'),
('Vinhos do Alentejo', 'Claudio Pires', 'Estrada do Alentejo, 40'),
('Adega Nova Era', 'Tatiane Ribeiro', 'Rua Nova, 12'),
('Vinhos Clássicos', 'Samuel Dias', 'Avenida dos Clássicos, 88'),
('Bodega dos Sonhos', 'Camila Ferreira', 'Rua dos Sonhos, 23'),
('Casa do Vinho da Madeira', 'Jorge Martins', 'Praça da Madeira, 34'),
('Vinhos do Douro', 'Catarina Gomes', 'Estrada do Douro, 56'),
('Adega do Sol Nascente', 'Ricardo Costa', 'Rua do Sol, 90'),
('Bodega do Horizonte', 'Amanda Lima', 'Avenida do Horizonte, 11'),
('Vinhos da Tradição', 'Fernando Rocha', 'Rua da Tradição, 28'),
('Casa do Vinho dos Açores', 'Gabriel Santos', 'Praça dos Açores, 20'),
('Vinhos dos Reis', 'Patrícia Martins', 'Rua dos Reis, 77'),
('Adega da Vila', 'Thiago Almeida', 'Avenida da Vila, 62'),
('Bodega do Fogo', 'Viviane Nascimento', 'Rua do Fogo, 8'),
('Vinhos do Ocidente', 'Rodrigo Silva', 'Praça do Ocidente, 45'),
('Casa do Vinho dos Campos', 'Tatiane Oliveira', 'Rua dos Campos, 39'),
('Adega do Centro', 'Flávio Pires', 'Avenida Central, 85'),
('Vinhos da Costa', 'Evelyn Costa', 'Rua da Costa, 15'),
('Bodega do Sol Poente', 'Célia Martins', 'Praça do Sol, 70'),
('Vinhos do Coração', 'Paulo Gomes', 'Rua do Coração, 10'),
('Casa do Vinho Frutal', 'Sérgio Dias', 'Avenida Frutal, 21'),
('Adega do Refúgio', 'Verônica Lima', 'Rua do Refúgio, 33'),
('Vinhos da Luz', 'Eliane Silva', 'Avenida da Luz, 48'),
('Bodega do Mar', 'Anderson Almeida', 'Praça do Mar, 54'),
('Casa do Vinho do Norte', 'Gabriel Ribeiro', 'Rua do Norte, 17'),
('Adega do Jardim', 'Larissa Dias', 'Avenida do Jardim, 5');


INSERT INTO Vinhos (nome, tipo, ano_producao, teor_alcoolico, fornecedor_id) VALUES
('Vinho Tinto Premium', 'Tinto', 2018, 13.5, 1),
('Vinho Branco Reserva', 'Branco', 2020, 12.0, 2),
('Vinho Rosé de Verão', 'Rosé', 2019, 11.5, 3),
('Vinho Tinto Clássico', 'Tinto', 2017, 14.0, 4),
('Vinho Branco Seco', 'Branco', 2021, 12.5, 5),
('Vinho Tinto da Casa', 'Tinto', 2016, 13.0, 6),
('Vinho Espumante', 'Espumante', 2022, 11.0, 7),
('Vinho do Porto', 'Fortificado', 2015, 20.0, 8),
('Vinho Branco Suave', 'Branco', 2023, 10.5, 9),
('Vinho Tinto Orgânico', 'Tinto', 2020, 14.5, 10),
('Vinho Tinto Reserva', 'Tinto', 2016, 15.0, 11),
('Vinho Branco Frutado', 'Branco', 2019, 12.8, 12),
('Vinho Rosé Seco', 'Rosé', 2021, 11.3, 13),
('Vinho Tinto da Colheita', 'Tinto', 2018, 13.7, 14),
('Vinho Verde', 'Branco', 2020, 11.2, 15),
('Vinho Tinto Encorpado', 'Tinto', 2017, 14.3, 16),
('Vinho Brut', 'Espumante', 2022, 12.2, 17),
('Vinho Tinto Leve', 'Tinto', 2023, 12.0, 18),
('Vinho Branco do Alentejo', 'Branco', 2018, 12.7, 19),
('Vinho Rosé de Primavera', 'Rosé', 2019, 11.0, 20),
('Vinho Tinto de Mesa', 'Tinto', 2017, 13.2, 21),
('Vinho Branco da Serra', 'Branco', 2020, 12.3, 22),
('Vinho Tinto de Baco', 'Tinto', 2019, 14.0, 23),
('Vinho Rosé de Verão', 'Rosé', 2021, 11.8, 24),
('Vinho Tinto da Ilha', 'Tinto', 2018, 13.6, 25),
('Vinho Branco da Costa', 'Branco', 2019, 12.1, 26),
('Vinho Tinto do Vale', 'Tinto', 2022, 14.1, 27),
('Vinho Branco Leve', 'Branco', 2023, 10.9, 28),
('Vinho Rosé do Oeste', 'Rosé', 2020, 11.7, 29),
('Vinho Tinto Seco', 'Tinto', 2019, 13.3, 30),
('Vinho Verde do Norte', 'Branco', 2018, 12.4, 31),
('Vinho Tinto do Douro', 'Tinto', 2022, 14.4, 32),
('Vinho Branco da Ilha', 'Branco', 2021, 11.9, 33),
('Vinho Rosé Frutado', 'Rosé', 2020, 11.4, 34),
('Vinho Tinto de Verão', 'Tinto', 2017, 13.8, 35),
('Vinho Branco Suave', 'Branco', 2019, 10.8, 36),
('Vinho Tinto do Mar', 'Tinto', 2020, 14.2, 37),
('Vinho Rosé de Outono', 'Rosé', 2021, 11.1, 38),
('Vinho Branco da Cidade', 'Branco', 2019, 12.5, 39),
('Vinho Tinto da Região', 'Tinto', 2020, 13.9, 40),
('Vinho Branco do Vale', 'Branco', 2023, 12.6, 41),
('Vinho Tinto Clássico', 'Tinto', 2018, 14.7, 42),
('Vinho Rosé de Colheita', 'Rosé', 2022, 10.7, 43),
('Vinho Tinto da Montanha', 'Tinto', 2019, 13.4, 44),
('Vinho Branco do Campo', 'Branco', 2021, 12.9, 45),
('Vinho Tinto de Colheita', 'Tinto', 2020, 14.6, 46),
('Vinho Rosé de Verão', 'Rosé', 2021, 11.0, 47),
('Vinho Tinto da Praia', 'Tinto', 2013, 13.5, 48),
('Vinho Branco da Encosta', 'Branco', 2020, 12.2, 49),
('Vinho Tinto do Interior', 'Tinto', 2021, 14.3, 50);

INSERT INTO Clientes (nome, email, telefone, endereco) VALUES
('Pedro Guilherme', 'lol@gmail.com', '1234-5678', 'Rua Augusto Stresser, 892'),
('Nathan Tominaga', 'cs@hotmail.com', '2345-6789', 'Rua José de Alencar, 222'),
('Victor Vieira', 'l4d@hotmail.com', '3345-6721', 'Rua Barão dos Campos, 291'),
('Roberto Furini', 'egg@hotmail.com', '1145-1234', 'Rua Women of World, 981'),
('Lucas Gabriel', 'roblox@hotmail.com', '2223-9182', 'Rua José de Alencar, 222'),
('Lucas Goex', 'cblolx@hotmail.com', '1111-1232', 'Rua José de Alencar, 981'),
('Willian Rodrigues', 'william@hotmail.com', '1234-1109', 'Rua José das Flores, 412'),
('Ana Clara Mendes', 'ana.mendes@gmail.com', '9991-2233', 'Rua das Flores, 33'),
('Bruno Santos', 'bruno.santos@yahoo.com', '9882-3344', 'Avenida Central, 1201'),
('Carla Lima', 'carla.lima@outlook.com', '9773-4455', 'Travessa da Paz, 56'),
('Diego Figueiredo', 'diego.fig@live.com', '9664-5566', 'Rua João XXIII, 78'),
('Eduarda Ribeiro', 'eduarda.r@gmail.com', '9555-6677', 'Praça das Águas, 22'),
('Felipe Alves', 'felipe.alves@hotmail.com', '9446-7788', 'Rua Antonio Carlos, 10'),
('Gabriela Nunes', 'gabi.nunes@live.com', '9337-8899', 'Rua do Mercado, 9'),
('Henrique Teixeira', 'henrique.tx@hotmail.com', '9228-9900', 'Rua Principal, 88'),
('Isabela Silva', 'isabela.silva@live.com', '9119-1011', 'Alameda dos Anjos, 77'),
('João Pedro Almeida', 'joao.almeida@gmail.com', '9000-1122', 'Rua dos Artistas, 101'),
('Karen Oliveira', 'karen.oliveira@outlook.com', '9888-1314', 'Avenida Brasil, 404'),
('Leonardo Ferreira', 'leo.ferreira@hotmail.com', '9777-1415', 'Rua das Orquídeas, 505'),
('Mariana Costa', 'mariana.costa@gmail.com', '9666-1516', 'Rua do Carmo, 606'),
('Nicolas Souza', 'nicolas.souza@outlook.com', '9555-1617', 'Rua do Comércio, 707'),
('Otávio Batista', 'otavio.batista@hotmail.com', '9444-1718', 'Rua Marechal, 808'),
('Paula Martins', 'paula.martins@gmail.com', '9333-1819', 'Avenida Principal, 909'),
('Ricardo Carvalho', 'ricardo.carvalho@yahoo.com', '9222-1920', 'Rua da Liberdade, 202'),
('Sabrina Moreira', 'sabrina.moreira@outlook.com', '9111-2021', 'Rua das Oliveiras, 303'),
('Thiago Lopes', 'thiago.lopes@hotmail.com', '9009-2122', 'Rua dos Bosques, 404'),
('Valéria Sousa', 'valeria.sousa@gmail.com', '9898-2223', 'Praça da Sé, 505'),
('Adriano Correia', 'adriano.correia@outlook.com', '9787-2324', 'Rua dos Navegantes, 606'),
('Bianca Araújo', 'bianca.araujo@hotmail.com', '9676-2425', 'Travessa das Nações, 707'),
('Caio Pereira', 'caio.pereira@gmail.com', '9565-2526', 'Rua Nova Esperança, 808'),
('Daniel Fonseca', 'daniel.fonseca@live.com', '9454-2627', 'Rua da Aurora, 909'),
('Elisa Rocha', 'elisa.rocha@outlook.com', '9343-2728', 'Avenida Rio Branco, 101'),
('Fábio Castro', 'fabio.castro@hotmail.com', '9232-2829', 'Rua da República, 202'),
('Giovanna Lima', 'giovanna.lima@live.com', '9121-2920', 'Rua das Palmeiras, 303'),
('Heitor Ribeiro', 'heitor.ribeiro@gmail.com', '9010-3031', 'Rua Nova, 404'),
('Ingrid Duarte', 'ingrid.duarte@outlook.com', '9899-3132', 'Avenida das Nações, 505'),
('José Augusto', 'jose.augusto@hotmail.com', '9788-3233', 'Rua Presidente Vargas, 606'),
('Larissa Carvalho', 'larissa.carvalho@gmail.com', '9677-3334', 'Rua do Progresso, 707'),
('Mateus Franco', 'mateus.franco@live.com', '9566-3435', 'Rua São João, 808'),
('Nathalia Correia', 'nathalia.correia@hotmail.com', '9455-3536', 'Rua do Sol, 909'),
('Pedro Henrique', 'pedro.henrique@outlook.com', '9344-3637', 'Avenida dos Estados, 101'),
('Rafael Silva', 'rafael.silva@gmail.com', '9233-3738', 'Rua dos Poetas, 202'),
('Sofia Melo', 'sofia.melo@live.com', '9122-3839', 'Rua da Saudade, 303'),
('Tatiana Freitas', 'tatiana.freitas@outlook.com', '9011-3940', 'Rua do Futuro, 404'),
('Ursula Macedo', 'ursula.macedo@gmail.com', '9890-4041', 'Rua das Rosas, 505'),
('Vinícius Oliveira', 'vinicius.oliveira@hotmail.com', '9789-4142', 'Rua do Comércio, 606'),
('Wagner Souza', 'wagner.souza@live.com', '9678-4243', 'Rua da Harmonia, 707'),
('Xavier Almeida', 'xavier.almeida@gmail.com', '9567-4344', 'Rua dos Ipês, 808'),
('Yasmin Gonçalves', 'yasmin.goncalves@outlook.com', '9456-4445', 'Rua da Glória, 909'),
('Zélia Farias', 'zelia.farias@hotmail.com', '9345-4546', 'Rua Sete de Setembro, 101');

INSERT INTO Vendas (cliente_id, data_venda, valor_total) VALUES
(1, '2024-01-10', 250.00),
(2, '2024-01-15', 150.00),
(3, '2024-01-20', 200.00),
(4, '2024-01-25', 300.00),
(5, '2024-02-05', 180.00),
(6, '2024-02-10', 220.00),
(7, '2024-02-15', 160.00),
(8, '2024-02-20', 210.00),
(9, '2024-02-25', 170.00),
(10, '2024-03-05', 230.00),
(11, '2024-03-10', 140.00),
(12, '2024-03-15', 260.00),
(13, '2024-03-20', 150.00),
(14, '2024-03-25', 280.00),
(15, '2024-04-05', 190.00),
(16, '2024-04-10', 230.00),
(17, '2024-04-15', 210.00),
(18, '2024-04-20', 180.00),
(19, '2024-04-25', 240.00),
(20, '2024-05-05', 250.00),
(21, '2024-05-10', 270.00),
(22, '2024-05-15', 320.00),
(23, '2024-05-20', 180.00),
(24, '2024-05-25', 150.00),
(25, '2024-06-05', 190.00),
(26, '2024-06-10', 220.00),
(27, '2024-06-15', 300.00),
(28, '2024-06-20', 140.00),
(29, '2024-06-25', 160.00),
(30, '2024-07-05', 280.00),
(31, '2024-07-10', 190.00),
(32, '2024-07-15', 230.00),
(33, '2024-07-20', 250.00),
(34, '2024-07-25', 200.00),
(35, '2024-08-05', 180.00),
(36, '2024-08-10', 300.00),
(37, '2024-08-15', 150.00),
(38, '2024-08-20', 250.00),
(39, '2024-08-25', 280.00),
(40, '2024-09-05', 190.00),
(41, '2024-09-10', 220.00),
(42, '2024-09-15', 230.00),
(43, '2024-09-20', 250.00),
(44, '2024-09-25', 300.00),
(45, '2024-10-05', 140.00),
(46, '2024-10-10', 170.00),
(47, '2021-10-15', 210.00),
(48, '2022-10-20', 190.00),
(49, '2023-10-25', 260.00),
(50, '2023-10-30', 180.00);

INSERT INTO ItensVenda (venda_id, vinho_id, quantidade, preco_unitario) VALUES
(1, 1, 2, 50.00),
(2, 2, 1, 100.00),
(3, 3, 1, 100.00),
(4, 4, 1, 150.00),
(5, 5, 1, 150.00),
(6, 6, 1, 200.00),
(7, 7, 1, 200.00),
(8, 8, 2, 150.00),
(9, 9, 1, 150.00),
(10, 10, 1, 180.00),
(11, 11, 1, 220.00),
(12, 12, 2, 110.00),
(13, 13, 1, 160.00),
(14, 14, 1, 210.00),
(15, 15, 1, 210.00),
(16, 16, 1, 170.00),
(17, 17, 1, 230.00),
(18, 18, 1, 140.00),
(19, 19, 1, 260.00),
(20, 20, 1, 150.00),
(21, 21, 1, 280.00),
(22, 22, 1, 190.00),
(23, 23, 1, 230.00),
(24, 24, 1, 210.00),
(25, 25, 1, 180.00),
(26, 26, 1, 240.00),
(27, 27, 1, 250.00),
(28, 28, 1, 270.00),
(29, 29, 1, 320.00),
(30, 30, 1, 180.00),
(31, 31, 1, 150.00),
(32, 32, 1, 190.00),
(33, 33, 1, 220.00),
(34, 34, 1, 300.00),
(35, 35, 1, 140.00),
(36, 36, 1, 160.00),
(37, 37, 1, 280.00),
(38, 38, 1, 190.00),
(39, 39, 1, 230.00),
(40, 40, 1, 250.00),
(41, 41, 1, 200.00),
(42, 42, 1, 180.00),
(43, 43, 1, 300.00),
(44, 44, 1, 150.00),
(45, 45, 1, 250.00),
(46, 46, 1, 280.00),
(47, 47, 1, 190.00),
(48, 48, 1, 220.00),
(49, 49, 1, 230.00),
(50, 50, 1, 250.00);

# Consulta para listar todos os vinhos em estoque
SELECT v.id, v.nome, v.tipo, v.ano_producao, v.teor_alcoolico, f.nome AS fornecedor
FROM Vinhos v
JOIN Fornecedores f ON v.fornecedor_id = f.id;

# Consulta para verificar o histórico de vendas
SELECT v.id AS venda_id, c.nome AS cliente, v.data_venda, v.valor_total
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
ORDER BY v.data_venda DESC;

# Consulta para obter detalhes dos itens vendidos em uma venda específica (23 nesse caso)
SELECT iv.id AS item_id, v.nome AS vinho, iv.quantidade, iv.preco_unitario, iv.subtotal
FROM ItensVenda iv
JOIN Vinhos v ON iv.vinho_id = v.id
WHERE iv.venda_id = 23; 

# Consulta para calcular o total de vendas por cliente (VALOR TOTAL)
SELECT c.nome AS cliente, SUM(v.valor_total) AS total_vendas
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
GROUP BY c.id
ORDER BY total_vendas DESC;

# Consulta para listar as vendas em um intervalo de datas específico
SELECT v.id AS venda_id, c.nome AS cliente, v.data_venda, v.valor_total
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
WHERE v.data_venda BETWEEN '2024-01-01' AND '2024-12-31' # NÃO INCLUE OS ANOS 2023, 2022 e 2021 QUE FORAM INSERIDOS NA TABELA
ORDER BY v.data_venda;