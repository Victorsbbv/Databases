CREATE DATABASE telefonia;
USE telefonia;

CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome TEXT,
    endereco TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE Planos (
    id INT PRIMARY KEY,
    nome_plano TEXT,
    preco FLOAT(10, 2),
    limite_minutos INT
);

CREATE TABLE Chamadas (
    id INT PRIMARY KEY,
    cliente_id INT,
    duracao INT,
    custo FLOAT(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE Faturas (
    id INT PRIMARY KEY,
    cliente_id INT,
    valor_total FLOAT(10, 2),
    status_pagamento VARCHAR(20),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE ItensFatura (
    id INT PRIMARY KEY,
    fatura_id INT,
    descricao TEXT,
    valor FLOAT(10, 2),
    FOREIGN KEY (fatura_id) REFERENCES Faturas(id)
);

CREATE TABLE Equipamentos (
    id INT PRIMARY KEY,
    cliente_id INT,
    tipo_equipamento TEXT,
    modelo TEXT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE Funcionarios (
    id INT PRIMARY KEY,
    nome TEXT,
    cargo TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE Fornecedores (
    id INT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    email TEXT
);


INSERT INTO Clientes (id, nome, email, telefone, endereco) VALUES
(1, 'Pedro Guilherme', 'lol@gmail.com', '1234-5678', 'Rua Augusto Stresser, 892'),
(2, 'Nathan Tominaga', 'cs@hotmail.com', '2345-6789', 'Rua José de Alencar, 222'),
(3, 'Victor Vieira', 'l4d@hotmail.com', '3345-6721', 'Rua Barão dos Campos, 291'),
(4, 'Roberto Furini', 'egg@hotmail.com', '1145-1234', 'Rua Women of World, 981'),
(5, 'Lucas Gabriel', 'roblox@hotmail.com', '2223-9182', 'Rua José de Alencar, 222'),
(6, 'Lucas Goex', 'cblolx@hotmail.com', '1111-1232', 'Rua José de Alencar, 981'),
(7, 'Willian Rodrigues', 'william@hotmail.com', '1234-1109', 'Rua José das Flores, 412'),
(8, 'Ana Clara Mendes', 'ana.mendes@gmail.com', '9991-2233', 'Rua das Flores, 33'),
(9,'Bruno Santos', 'bruno.santos@yahoo.com', '9882-3344', 'Avenida Central, 1201'),
(10, 'Carla Lima', 'carla.lima@outlook.com', '9773-4455', 'Travessa da Paz, 56'),
(11, 'Diego Figueiredo', 'diego.fig@live.com', '9664-5566', 'Rua João XXIII, 78'),
(12, 'Eduarda Ribeiro', 'eduarda.r@gmail.com', '9555-6677', 'Praça das Águas, 22'),
(13, 'Felipe Alves', 'felipe.alves@hotmail.com', '9446-7788', 'Rua Antonio Carlos, 10'),
(14, 'Gabriela Nunes', 'gabi.nunes@live.com', '9337-8899', 'Rua do Mercado, 9'),
(15, 'Henrique Teixeira', 'henrique.tx@hotmail.com', '9228-9900', 'Rua Principal, 88'),
(16, 'Isabela Silva', 'isabela.silva@live.com', '9119-1011', 'Alameda dos Anjos, 77'),
(17, 'João Pedro Almeida', 'joao.almeida@gmail.com', '9000-1122', 'Rua dos Artistas, 101'),
(18, 'Karen Oliveira', 'karen.oliveira@outlook.com', '9888-1314', 'Avenida Brasil, 404'),
(19, 'Leonardo Ferreira', 'leo.ferreira@hotmail.com', '9777-1415', 'Rua das Orquídeas, 505'),
(20, 'Mariana Costa', 'mariana.costa@gmail.com', '9666-1516', 'Rua do Carmo, 606'),
(21, 'Nicolas Souza', 'nicolas.souza@outlook.com', '9555-1617', 'Rua do Comércio, 707'),
(22, 'Otávio Batista', 'otavio.batista@hotmail.com', '9444-1718', 'Rua Marechal, 808'),
(23, 'Paula Martins', 'paula.martins@gmail.com', '9333-1819', 'Avenida Principal, 909'),
(24, 'Ricardo Carvalho', 'ricardo.carvalho@yahoo.com', '9222-1920', 'Rua da Liberdade, 202'),
(25, 'Sabrina Moreira', 'sabrina.moreira@outlook.com', '9111-2021', 'Rua das Oliveiras, 303'),
(26, 'Thiago Lopes', 'thiago.lopes@hotmail.com', '9009-2122', 'Rua dos Bosques, 404'),
(27, 'Valéria Sousa', 'valeria.sousa@gmail.com', '9898-2223', 'Praça da Sé, 505'),
(28, 'Adriano Correia', 'adriano.correia@outlook.com', '9787-2324', 'Rua dos Navegantes, 606'),
(29, 'Bianca Araújo', 'bianca.araujo@hotmail.com', '9676-2425', 'Travessa das Nações, 707'),
(30, 'Caio Pereira', 'caio.pereira@gmail.com', '9565-2526', 'Rua Nova Esperança, 808'),
(31, 'Daniel Fonseca', 'daniel.fonseca@live.com', '9454-2627', 'Rua da Aurora, 909'),
(32, 'Elisa Rocha', 'elisa.rocha@outlook.com', '9343-2728', 'Avenida Rio Branco, 101'),
(33, 'Fábio Castro', 'fabio.castro@hotmail.com', '9232-2829', 'Rua da República, 202'),
(34, 'Giovanna Lima', 'giovanna.lima@live.com', '9121-2920', 'Rua das Palmeiras, 303'),
(35, 'Heitor Ribeiro', 'heitor.ribeiro@gmail.com', '9010-3031', 'Rua Nova, 404'),
(36, 'Ingrid Duarte', 'ingrid.duarte@outlook.com', '9899-3132', 'Avenida das Nações, 505'),
(37, 'José Augusto', 'jose.augusto@hotmail.com', '9788-3233', 'Rua Presidente Vargas, 606'),
(38, 'Larissa Carvalho', 'larissa.carvalho@gmail.com', '9677-3334', 'Rua do Progresso, 707'),
(39, 'Mateus Franco', 'mateus.franco@live.com', '9566-3435', 'Rua São João, 808'),
(40, 'Nathalia Correia', 'nathalia.correia@hotmail.com', '9455-3536', 'Rua do Sol, 909'),
(41, 'Pedro Henrique', 'pedro.henrique@outlook.com', '9344-3637', 'Avenida dos Estados, 101'),
(42, 'Rafael Silva', 'rafael.silva@gmail.com', '9233-3738', 'Rua dos Poetas, 202'),
(43, 'Sofia Melo', 'sofia.melo@live.com', '9122-3839', 'Rua da Saudade, 303'),
(44, 'Tatiana Freitas', 'tatiana.freitas@outlook.com', '9011-3940', 'Rua do Futuro, 404'),
(45, 'Ursula Macedo', 'ursula.macedo@gmail.com', '9890-4041', 'Rua das Rosas, 505'),
(46, 'Vinícius Oliveira', 'vinicius.oliveira@hotmail.com', '9789-4142', 'Rua do Comércio, 606'),
(47, 'Wagner Souza', 'wagner.souza@live.com', '9678-4243', 'Rua da Harmonia, 707'),
(48, 'Xavier Almeida', 'xavier.almeida@gmail.com', '9567-4344', 'Rua dos Ipês, 808'),
(49, 'Yasmin Gonçalves', 'yasmin.goncalves@outlook.com', '9456-4445', 'Rua da Glória, 909'),
(50, 'Zélia Farias', 'zelia.farias@hotmail.com', '9345-4546', 'Rua Sete de Setembro, 101');

INSERT INTO Planos (id, nome_plano, preco, limite_minutos) VALUES
(1, 'Plano Básico', 29.99, 100),
(2, 'Plano Intermediário', 49.99, 300),
(3, 'Plano Avançado', 69.99, 600),
(4, 'Plano Família', 89.99, 1000),
(5, 'Plano Empresarial', 129.99, 2000),
(6, 'Plano Conectado', 39.99, 150),
(7, 'Plano Smart', 59.99, 400),
(8, 'Plano Total', 79.99, 800),
(9, 'Plano Verão', 49.99, 250),
(10, 'Plano Ilimitado', 99.99, 0),
(11, 'Plano Estudante', 24.99, 50),
(12, 'Plano Pré-pago', 15.00, 30),
(13, 'Plano Turista', 59.00, 200),
(14, 'Plano Sem Fronteiras', 89.00, 500),
(15, 'Plano Empresarial Plus', 149.99, 3000),
(16, 'Plano Conexão Rápida', 39.99, 120),
(17, 'Plano Jovem', 34.99, 80),
(18, 'Plano 5G', 89.99, 1000),
(19, 'Plano Completo', 79.99, 600),
(20, 'Plano Verão Premium', 69.99, 300),
(21, 'Plano Noturno', 29.99, 150),
(22, 'Plano de Lazer', 44.99, 200),
(23, 'Plano Profissional', 129.99, 2000),
(24, 'Plano Família Plus', 99.99, 1200),
(25, 'Plano Flexível', 54.99, 400),
(26, 'Plano Local', 19.99, 100),
(27, 'Plano Lazer e Trabalho', 69.99, 500),
(28, 'Plano Verão Família', 89.99, 1000),
(29, 'Plano Estudante Flexível', 29.99, 80),
(30, 'Plano Corporativo', 139.99, 1500),
(31, 'Plano Intermediário Plus', 59.99, 300),
(32, 'Plano Ilimitado Família', 149.99, 2000),
(33, 'Plano Premium', 99.99, 800),
(34, 'Plano Limite Zero', 119.99, 0),
(35, 'Plano Regular', 39.99, 200),
(36, 'Plano de Aventura', 49.99, 400),
(37, 'Plano para Duas Pessoas', 69.99, 600),
(38, 'Plano Flexível para Jovens', 34.99, 150),
(39, 'Plano Combinado', 59.99, 300),
(40, 'Plano Global', 99.99, 1000),
(41, 'Plano de Final de Semana', 29.99, 50),
(42, 'Plano Avançado Plus', 89.99, 900),
(43, 'Plano de 3 em 1', 79.99, 600),
(44, 'Plano Regional', 24.99, 100),
(45, 'Plano Mês a Mês', 19.99, 30),
(46, 'Plano de Viagem', 69.00, 200),
(47, 'Plano 10GB', 49.99, 0),
(48, 'Plano Amigo', 34.99, 80),
(49, 'Plano Conexão Rápida Plus', 59.99, 300),
(50, 'Plano Para Todos', 44.99, 200);

INSERT INTO Chamadas (id, cliente_id, duracao, custo) VALUES
(1, 1, 10, 1.50),
(2, 1, 25, 3.75),
(3, 1, 5, 0.75),
(4, 2, 15, 2.25),
(5, 2, 30, 4.50),
(6, 3, 12, 1.80),
(7, 3, 20, 3.00),
(8, 4, 8, 1.20),
(9, 4, 22, 3.30),
(10, 5, 18, 2.70),
(11, 5, 35, 5.25),
(12, 6, 14, 2.10),
(13, 6, 28, 4.20),
(14, 7, 9, 1.35),
(15, 7, 11, 1.65),
(16, 8, 7, 1.05),
(17, 8, 19, 2.85),
(18, 9, 6, 0.90),
(19, 9, 15, 2.25),
(20, 10, 12, 1.80),
(21, 10, 30, 4.50),
(22, 11, 8, 1.20),
(23, 11, 25, 3.75),
(24, 12, 14, 2.10),
(25, 12, 32, 4.80),
(26, 13, 20, 3.00),
(27, 13, 11, 1.65),
(28, 14, 5, 0.75),
(29, 14, 10, 1.50),
(30, 15, 28, 4.20),
(31, 15, 15, 2.25),
(32, 16, 13, 1.95),
(33, 16, 9, 1.35),
(34, 17, 18, 2.70),
(35, 17, 23, 3.45),
(36, 18, 16, 2.40),
(37, 18, 12, 1.80),
(38, 19, 20, 3.00),
(39, 19, 27, 4.05),
(40, 20, 24, 3.60),
(41, 20, 14, 2.10),
(42, 21, 9, 1.35),
(43, 21, 15, 2.25),
(44, 22, 30, 4.50),
(45, 22, 10, 1.50),
(46, 23, 26, 3.90),
(47, 23, 5, 0.75),
(48, 24, 7, 1.05),
(49, 24, 22, 3.30),
(50, 25, 19, 2.85);

INSERT INTO Faturas (id, cliente_id, valor_total, status_pagamento) VALUES
(1, 1, 25.50, 'Pago'),
(2, 2, 48.25, 'Pendente'),
(3, 3, 32.00, 'Pago'),
(4, 4, 27.75, 'Pago'),
(5, 5, 55.00, 'Pendente'),
(6, 6, 40.50, 'Pago'),
(7, 7, 38.00, 'Pago'),
(8, 8, 44.20, 'Pendente'),
(9, 9, 50.00, 'Pago'),
(10, 10, 62.50, 'Pendente'),
(11, 11, 30.50, 'Pago'),
(12, 12, 15.00, 'Pago'),
(13, 13, 55.00, 'Pendente'),
(14, 14, 22.50, 'Pago'),
(15, 15, 70.00, 'Pendente'),
(16, 16, 65.00, 'Pago'),
(17, 17, 48.90, 'Pago'),
(18, 18, 25.00, 'Pendente'),
(19, 19, 29.99, 'Pago'),
(20, 20, 40.00, 'Pendente'),
(21, 21, 15.75, 'Pago'),
(22, 22, 34.50, 'Pendente'),
(23, 23, 60.00, 'Pago'),
(24, 24, 80.25, 'Pendente'),
(25, 25, 70.00, 'Pago'),
(26, 26, 20.50, 'Pendente'),
(27, 27, 35.00, 'Pago'),
(28, 28, 50.00, 'Pendente'),
(29, 29, 15.00, 'Pago'),
(30, 30, 49.90, 'Pendente'),
(31, 31, 30.00, 'Pago'),
(32, 32, 60.00, 'Pendente'),
(33, 33, 70.00, 'Pago'),
(34, 34, 44.00, 'Pendente'),
(35, 35, 52.00, 'Pago'),
(36, 36, 33.00, 'Pendente'),
(37, 37, 28.50, 'Pago'),
(38, 38, 16.00, 'Pendente'),
(39, 39, 39.00, 'Pago'),
(40, 40, 55.00, 'Pendente'),
(41, 41, 22.50, 'Pago'),
(42, 42, 12.00, 'Pendente'),
(43, 43, 40.00, 'Pago'),
(44, 44, 62.00, 'Pendente'),
(45, 45, 45.50, 'Pago'),
(46, 46, 35.75, 'Pendente'),
(47, 47, 25.00, 'Pago'),
(48, 48, 33.50, 'Pendente'),
(49, 49, 20.50, 'Pago'),
(50, 50, 55.00, 'Pendente');

INSERT INTO ItensFatura (id, fatura_id, descricao, valor) VALUES
(1, 1, 'Plano Básico', 29.99),
(2, 1, 'Chamada Extra', 1.50),
(3, 2, 'Plano Intermediário', 49.99),
(4, 2, 'Chamada Extra', 4.25),
(5, 3, 'Plano Avançado', 69.99),
(6, 3, 'Chamada Extra', 1.50),
(7, 4, 'Plano Família', 89.99),
(8, 4, 'Chamada Extra', 3.00),
(9, 5, 'Plano Empresarial', 129.99),
(10, 5, 'Chamada Extra', 5.00),
(11, 6, 'Plano Conectado', 39.99),
(12, 6, 'Chamada Extra', 2.00),
(13, 7, 'Plano Smart', 59.99),
(14, 7, 'Chamada Extra', 2.00),
(15, 8, 'Plano Total', 79.99),
(16, 8, 'Chamada Extra', 3.00),
(17, 9, 'Plano Verão', 49.99),
(18, 9, 'Chamada Extra', 1.25),
(19, 10, 'Plano Ilimitado', 99.99),
(20, 10, 'Chamada Extra', 4.50),
(21, 11, 'Plano Estudante', 24.99),
(22, 11, 'Chamada Extra', 0.50),
(23, 12, 'Plano Pré-pago', 15.00),
(24, 12, 'Chamada Extra', 1.00),
(25, 13, 'Plano Turista', 59.00),
(26, 13, 'Chamada Extra', 2.00),
(27, 14, 'Plano Sem Fronteiras', 89.00),
(28, 14, 'Chamada Extra', 3.00),
(29, 15, 'Plano Empresarial Plus', 149.99),
(30, 15, 'Chamada Extra', 5.00),
(31, 16, 'Plano Conexão Rápida', 39.99),
(32, 16, 'Chamada Extra', 1.50),
(33, 17, 'Plano Jovem', 34.99),
(34, 17, 'Chamada Extra', 1.25),
(35, 18, 'Plano 5G', 89.99),
(36, 18, 'Chamada Extra', 3.50),
(37, 19, 'Plano Completo', 79.99),
(38, 19, 'Chamada Extra', 2.00),
(39, 20, 'Plano Verão Premium', 69.99),
(40, 20, 'Chamada Extra', 2.50),
(41, 21, 'Plano Noturno', 29.99),
(42, 21, 'Chamada Extra', 1.00),
(43, 22, 'Plano de Lazer', 44.99),
(44, 22, 'Chamada Extra', 2.00),
(45, 23, 'Plano Profissional', 129.99),
(46, 23, 'Chamada Extra', 5.00),
(47, 24, 'Plano Família Plus', 99.99),
(48, 24, 'Chamada Extra', 4.00),
(49, 25, 'Plano Flexível', 54.99),
(50, 25, 'Chamada Extra', 2.00);

INSERT INTO Equipamentos (id, cliente_id, tipo_equipamento, modelo) VALUES
(1, 1, 'Telefone', 'Samsung Galaxy S21'),
(2, 2, 'Modem', 'TP-Link Archer A7'),
(3, 3, 'Telefone', 'iPhone 12'),
(4, 4, 'Modem', 'D-Link DSL-2877AL'),
(5, 5, 'Telefone', 'Motorola Moto G Power'),
(6, 6, 'Modem', 'Netgear Nighthawk RAX50'),
(7, 7, 'Telefone', 'Xiaomi Redmi Note 10'),
(8, 8, 'Modem', 'Linksys MR9600'),
(9, 9, 'Telefone', 'Nokia 7.2'),
(10, 10, 'Modem', 'ASUS RT-AX86U'),
(11, 11, 'Telefone', 'Sony Xperia 10 II'),
(12, 12, 'Modem', 'Huawei B525'),
(13, 13, 'Telefone', 'LG Velvet'),
(14, 14, 'Modem', 'TP-Link TL-WR841N'),
(15, 15, 'Telefone', 'OnePlus 8T'),
(16, 16, 'Modem', 'ZTE MF920U'),
(17, 17, 'Telefone', 'Oppo Reno 4'),
(18, 18, 'Modem', 'Tenda AC10'),
(19, 19, 'Telefone', 'Google Pixel 4a'),
(20, 20, 'Modem', 'D-Link DIR-867'),
(21, 21, 'Telefone', 'Realme 8 Pro'),
(22, 22, 'Modem', 'Zyxel NBG6617'),
(23, 23, 'Telefone', 'Vivo V21'),
(24, 24, 'Modem', 'Motorola MG7700'),
(25, 25, 'Telefone', 'Apple iPhone SE'),
(26, 26, 'Modem', 'Netgear CM500'),
(27, 27, 'Telefone', 'Samsung Galaxy A52'),
(28, 28, 'Modem', 'ASUS DSL-AC68U'),
(29, 29, 'Telefone', 'Xiaomi Mi 11'),
(30, 30, 'Modem', 'TP-Link Archer AX73'),
(31, 31, 'Telefone', 'Honor 30'),
(32, 32, 'Modem', 'Huawei B315'),
(33, 33, 'Telefone', 'Nokia 8.3'),
(34, 34, 'Modem', 'TP-Link Deco M5'),
(35, 35, 'Telefone', 'Oppo A53'),
(36, 36, 'Modem', 'D-Link DAP-1610'),
(37, 37, 'Telefone', 'Sony Xperia 1 III'),
(38, 38, 'Modem', 'Netgear RAX40'),
(39, 39, 'Telefone', 'Vivo X50'),
(40, 40, 'Modem', 'Linksys EA8300'),
(41, 41, 'Telefone', 'Realme Narzo 30'),
(42, 42, 'Modem', 'ZTE Z3001'),
(43, 43, 'Telefone', 'Motorola Edge'),
(44, 44, 'Modem', 'ASUS RT-AX58U'),
(45, 45, 'Telefone', 'Apple iPhone 13'),
(46, 46, 'Modem', 'TP-Link TL-WR940N'),
(47, 47, 'Telefone', 'Xiaomi Poco X3'),
(48, 48, 'Modem', 'D-Link DWA-192'),
(49, 49, 'Telefone', 'Samsung Galaxy Note 20'),
(50, 50, 'Modem', 'Linksys MR7350');

INSERT INTO Funcionarios (id, nome, cargo, telefone, email) VALUES
(1, 'João Silva', 'Gerente de Vendas', '(11) 91234-5678', 'joao.silva@empresa.com'),
(2, 'Maria Oliveira', 'Analista de Marketing', '(21) 92345-6789', 'maria.oliveira@empresa.com'),
(3, 'Carlos Santos', 'Desenvolvedor', '(31) 93456-7890', 'carlos.santos@empresa.com'),
(4, 'Fernanda Lima', 'Analista de Suporte', '(41) 94567-8901', 'fernanda.lima@empresa.com'),
(5, 'Roberto Ferreira', 'Coordenador de Projetos', '(51) 95678-9012', 'roberto.ferreira@empresa.com'),
(6, 'Ana Costa', 'Gestora de Recursos Humanos', '(61) 96789-0123', 'ana.costa@empresa.com'),
(7, 'Lucas Almeida', 'Técnico de TI', '(71) 97890-1234', 'lucas.almeida@empresa.com'),
(8, 'Patrícia Mendes', 'Gerente de Operações', '(81) 98901-2345', 'patricia.mendes@empresa.com'),
(9, 'Ricardo Pires', 'Analista Financeiro', '(91) 99012-3456', 'ricardo.pires@empresa.com'),
(10, 'Sofia Rocha', 'Designer Gráfico', '(11) 90123-4567', 'sofia.rocha@empresa.com'),
(11, 'Gustavo Martins', 'Analista de Dados', '(21) 91234-5678', 'gustavo.martins@empresa.com'),
(12, 'Juliana Dias', 'Coordenadora de Marketing', '(31) 92345-6789', 'juliana.dias@empresa.com'),
(13, 'Marcos Sousa', 'Gerente de Projetos', '(41) 93456-7890', 'marcos.sousa@empresa.com'),
(14, 'Bruna Almeida', 'Analista de Qualidade', '(51) 94567-8901', 'bruna.almeida@empresa.com'),
(15, 'Diego Pereira', 'Assistente Administrativo', '(61) 95678-9012', 'diego.pereira@empresa.com'),
(16, 'Larissa Nascimento', 'Assistente de Vendas', '(71) 96789-0123', 'larissa.nascimento@empresa.com'),
(17, 'Tiago Ramos', 'Coordenador de TI', '(81) 97890-1234', 'tiago.ramos@empresa.com'),
(18, 'Aline Martins', 'Analista de Atendimento', '(91) 98901-2345', 'aline.martins@empresa.com'),
(19, 'Felipe Ribeiro', 'Gerente de Produto', '(11) 99012-3456', 'felipe.ribeiro@empresa.com'),
(20, 'Camila Ferreira', 'Supervisora de Vendas', '(21) 90123-4567', 'camila.ferreira@empresa.com'),
(21, 'Fernando Santos', 'Desenvolvedor Frontend', '(31) 91234-5678', 'fernando.santos@empresa.com'),
(22, 'Natalia Lima', 'Analista de Sistema', '(41) 92345-6789', 'natalia.lima@empresa.com'),
(23, 'Eduardo Costa', 'Técnico de Suporte', '(51) 93456-7890', 'eduardo.costa@empresa.com'),
(24, 'Patrícia Almeida', 'Gerente de Recursos Humanos', '(61) 94567-8901', 'patricia.almeida@empresa.com'),
(25, 'Lucas Ferreira', 'Assistente Financeiro', '(71) 95678-9012', 'lucas.ferreira@empresa.com'),
(26, 'Sérgio Andrade', 'Coordenador de Logística', '(81) 96789-0123', 'sergio.andrade@empresa.com'),
(27, 'Carla Mendes', 'Analista de Comunicação', '(91) 97890-1234', 'carla.mendes@empresa.com'),
(28, 'Vitor Lima', 'Desenvolvedor Backend', '(11) 98901-2345', 'vitor.lima@empresa.com'),
(29, 'Tatiane Rocha', 'Supervisora de Atendimento', '(21) 99012-3456', 'tatiane.rocha@empresa.com'),
(30, 'Marcelo Pires', 'Analista de Marketing Digital', '(31) 90123-4567', 'marcelo.pires@empresa.com'),
(31, 'Cláudia Santos', 'Gerente de Comunicação', '(41) 91234-5678', 'claudia.santos@empresa.com'),
(32, 'Alexandre Ferreira', 'Gerente de TI', '(51) 92345-6789', 'alexandre.ferreira@empresa.com'),
(33, 'Beatriz Almeida', 'Assistente de Projetos', '(61) 93456-7890', 'beatriz.almeida@empresa.com'),
(34, 'Hugo Nascimento', 'Técnico de Hardware', '(71) 94567-8901', 'hugo.nascimento@empresa.com'),
(35, 'Fabiana Costa', 'Coordenadora de Vendas', '(81) 95678-9012', 'fabiana.costa@empresa.com'),
(36, 'Ricardo Ramos', 'Gerente de Marketing', '(91) 96789-0123', 'ricardo.ramos@empresa.com'),
(37, 'Sofia Nascimento', 'Analista de Projetos', '(11) 97890-1234', 'sofia.nascimento@empresa.com'),
(38, 'Guilherme Santos', 'Desenvolvedor de Aplicativos', '(21) 98901-2345', 'guilherme.santos@empresa.com'),
(39, 'Tânia Lima', 'Analista de Vendas', '(31) 99012-3456', 'tania.lima@empresa.com'),
(40, 'André Oliveira', 'Coordenador de Suporte', '(41) 90123-4567', 'andre.oliveira@empresa.com'),
(41, 'Larissa Pires', 'Assistente de TI', '(51) 91234-5678', 'larissa.pires@empresa.com'),
(42, 'Danilo Andrade', 'Analista de Dados', '(61) 92345-6789', 'danilo.andrade@empresa.com'),
(43, 'Cristina Mendes', 'Supervisora de RH', '(71) 93456-7890', 'cristina.mendes@empresa.com'),
(44, 'Mário Ferreira', 'Analista de Processos', '(81) 94567-8901', 'mario.ferreira@empresa.com'),
(45, 'Luana Souza', 'Gerente de Qualidade', '(91) 95678-9012', 'luana.souza@empresa.com'),
(46, 'Renan Martins', 'Técnico de TI', '(11) 96789-0123', 'renan.martins@empresa.com'),
(47, 'Juliana Rocha', 'Analista de Comunicação', '(21) 97890-1234', 'juliana.rocha@empresa.com'),
(48, 'Tiago Santos', 'Gerente de Produto', '(31) 98901-2345', 'tiago.santos@empresa.com'),
(49, 'Eliane Almeida', 'Coordenadora de Vendas', '(41) 99012-3456', 'eliane.almeida@empresa.com'),
(50, 'Victor Ferreira', 'Analista de Marketing', '(51) 90123-4567', 'victor.ferreira@empresa.com');

INSERT INTO Fornecedores (id, nome, telefone, email) VALUES
(1, 'Tech Supplies Ltda', '(11) 99111-2222', 'contato@techsupplies.com'),
(2, 'ElectroShop', '(21) 99222-3333', 'vendas@electroshop.com'),
(3, 'Wireless Tech', '(31) 99333-4444', 'suporte@wirelesstech.com'),
(4, 'Comunicando Bem', '(41) 99444-5555', 'comercial@comunicandobem.com'),
(5, 'Giga Equipamentos', '(51) 99555-6666', 'giga@gigaequipamentos.com'),
(6, 'FoneStore', '(61) 99666-7777', 'contato@fonestore.com'),
(7, 'Modens e Cia', '(71) 99777-8888', 'atendimento@modensecia.com'),
(8, 'Link Connect', '(81) 99888-9999', 'vendas@linkconnect.com'),
(9, 'Net Solutions', '(91) 99999-0000', 'suporte@netsolutions.com'),
(10, 'Fornecedores de TI', '(11) 90000-1111', 'contato@fornecedoresdti.com'),
(11, 'GlobalTech', '(21) 91111-2222', 'info@globaltech.com'),
(12, 'Mundo Digital', '(31) 92222-3333', 'suporte@mundo-digital.com'),
(13, 'Avançar Telecom', '(41) 93333-4444', 'contato@avancartel.com'),
(14, 'Cabo Connect', '(51) 94444-5555', 'info@caboconnect.com'),
(15, 'Fábrica de Modems', '(61) 95555-6666', 'contato@fabricademodems.com'),
(16, 'HyperLink', '(71) 96666-7777', 'vendas@hyperlink.com'),
(17, 'Sinal Perfeito', '(81) 97777-8888', 'contato@sinalperfeito.com'),
(18, 'Equipamentos de Comunicação', '(91) 98888-9999', 'atendimento@equipamentoscomunicacao.com'),
(19, 'SmartTech', '(11) 99999-0001', 'contato@smarttech.com'),
(20, 'Alpha Telecom', '(21) 90000-1112', 'info@alphatelecom.com'),
(21, 'Comunitel', '(31) 91111-2223', 'contato@comunitel.com'),
(22, 'Fabrica de Fones', '(41) 92222-3334', 'vendas@fabricadefones.com'),
(23, 'Grupo Tech', '(51) 93333-4445', 'suporte@grupotech.com'),
(24, 'Conexão Móvel', '(61) 94444-5556', 'contato@conexaomovel.com'),
(25, 'Serviços de Telecom', '(71) 95555-6667', 'atendimento@servicosdetelecom.com'),
(26, 'Técnica Avançada', '(81) 96666-7778', 'info@tecnicaavancada.com'),
(27, 'Ponto Fone', '(91) 97777-8889', 'contato@pontofone.com'),
(28, 'Link Mais', '(11) 98888-9990', 'atendimento@linkmais.com'),
(29, 'Rede Conectada', '(21) 99999-0002', 'contato@redeconectada.com'),
(30, 'Móveis e Modems', '(31) 90000-1113', 'vendas@moveismodems.com'),
(31, 'Fábrica de Cabos', '(41) 91111-2224', 'info@fabricadecabos.com'),
(32, 'Equipamentos de Rede', '(51) 92222-3335', 'suporte@equipamentosdere.de'),
(33, 'Conexão Rápida', '(61) 93333-4446', 'contato@conexaorapida.com'),
(34, 'HyperFone', '(71) 94444-5557', 'atendimento@hyperfone.com'),
(35, 'Grupo de Comunicações', '(81) 95555-6668', 'info@grupodecomunicacoes.com'),
(36, 'Fabrica de Redes', '(91) 96666-7779', 'contato@fabricaderedes.com'),
(37, 'Comunicando Tecnologia', '(11) 97777-8880', 'vendas@comunicandotecnologia.com'),
(38, 'Equipamentos Inteligentes', '(21) 98888-9991', 'suporte@equipamentosinteligentes.com'),
(39, 'Rede Móvel', '(31) 99999-0003', 'contato@redemovel.com'),
(40, 'Grupo de Telecomunicações', '(41) 90000-1114', 'info@grupodetelecomunicacoes.com'),
(41, 'Sinal Forte', '(51) 91111-2225', 'contato@signalforte.com'),
(42, 'Conexão Global', '(61) 92222-3336', 'vendas@conexaoglobal.com'),
(43, 'TecnoLink', '(71) 93333-4447', 'suporte@tecnolink.com'),
(44, 'Sinal Claro', '(81) 94444-5558', 'info@signalclaro.com'),
(45, 'Equipamentos Avançados', '(91) 95555-6669', 'contato@equipamentosavancados.com'),
(46, 'Inova Telecom', '(11) 96666-7770', 'atendimento@inovatelem.com'),
(47, 'GigaLink', '(21) 97777-8881', 'info@gigalink.com'),
(48, 'Serviços de Conexão', '(31) 98888-9992', 'contato@servicosdeconexao.com'),
(49, 'MegaFone', '(41) 99999-0004', 'suporte@megafone.com'),
(50, 'Acessórios e Fones', '(51) 90000-1115', 'vendas@acessoriosefones.com');

# Relatório de Chamadas Realizadas
SELECT 
    c.nome AS cliente,
    COUNT(ch.id) AS total_chamadas,
    SUM(ch.duracao) AS duracao_total,
    SUM(ch.custo) AS custo_total
FROM 
    Chamadas ch
JOIN 
    Clientes c ON ch.cliente_id = c.id
GROUP BY 
    c.id, c.nome
ORDER BY 
    total_chamadas DESC;

# Relatório de Faturas Pendentes
SELECT 
    c.nome AS cliente,
    f.id AS fatura_id,
    f.valor_total,
    f.status_pagamento
FROM 
    Faturas f
JOIN 
    Clientes c ON f.cliente_id = c.id
WHERE 
    f.status_pagamento = 'Pendente'
ORDER BY 
    c.nome;

# Clientes Mais Ativos
SELECT 
    c.nome AS cliente,
    COUNT(ch.id) AS total_chamadas,
    SUM(ch.duracao) AS duracao_total
FROM 
    Chamadas ch
JOIN 
    Clientes c ON ch.cliente_id = c.id
GROUP BY 
    c.id, c.nome
ORDER BY 
    total_chamadas DESC
LIMIT 10;

# Faturas Pagas por Cliente
SELECT 
    c.nome AS cliente,
    COUNT(f.id) AS total_faturas_pagadas,
    SUM(f.valor_total) AS total_pago
FROM 
    Faturas f
JOIN 
    Clientes c ON f.cliente_id = c.id
WHERE 
    f.status_pagamento = 'Pago'
GROUP BY 
    c.id, c.nome
ORDER BY 
    total_pago DESC;

# Chamadas por Cliente e Custo Médio
SELECT 
    c.nome AS cliente,
    AVG(ch.custo) AS custo_medio,
    COUNT(ch.id) AS total_chamadas
FROM 
    Chamadas ch
JOIN 
    Clientes c ON ch.cliente_id = c.id
GROUP BY 
    c.id, c.nome
ORDER BY 
    custo_medio DESC;