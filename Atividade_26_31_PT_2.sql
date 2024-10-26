CREATE DATABASE canecas_loja;
USE canecas_loja;

CREATE TABLE Fornecedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fornecedor_nome VARCHAR(255) UNIQUE,
    contato TEXT,
    endereco TEXT
);

CREATE TABLE Canecas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    categoria TEXT,
    fornecedor_nome VARCHAR(255),
    preco FLOAT(10, 2) NOT NULL,
    quantidade_estoque INT,
    FOREIGN KEY (fornecedor_nome) REFERENCES Fornecedores(fornecedor_nome)
);

CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    email TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE Vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data_venda DATETIME NOT NULL,
    valor_total FLOAT(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE ItensVenda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    venda_id INT,
    caneca_id INT,
    quantidade INT NOT NULL,
    subtotal FLOAT(10, 2) NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES Vendas(id),
    FOREIGN KEY (caneca_id) REFERENCES Canecas(id)
);

INSERT INTO Fornecedores (fornecedor_nome, contato, endereco) VALUES 
('Fornecedor Ceramiczz', 'ceramiczz_fornecedora@gmail.com', 'Rua Euzébio The Turle, 241'),
('Fornecedor Canecas Júlia', 'canecas_júlia@hotmail.com', 'Rua Maracanã, 456'),
('Fornecedor MasterCanecas', 'mastercanecas@hotmail.com', 'Rua 7 de Abril, 123'),
('Fornecedor Arte & Design', 'arte.design@gmail.com', 'Avenida Paulista, 321'),
('Fornecedor TopCups', 'topcups@yahoo.com', 'Rua dos Pinheiros, 567'),
('Fornecedor Fabrica Canecas', 'fabricacanecas@outlook.com', 'Avenida Independência, 876'),
('Fornecedor Brazil Cups', 'brazilcups@hotmail.com', 'Rua das Palmeiras, 654'),
('Fornecedor Canecaria LTDA', 'canecaria.ltda@gmail.com', 'Avenida Central, 1010'),
('Fornecedor Criativa Canecas', 'criativa.cups@hotmail.com', 'Travessa dos Pioneiros, 212'),
('Fornecedor Mega Mugs', 'mega.mugs@live.com', 'Rua do Comércio, 314'),
('Fornecedor PrimeCanecas', 'primecanecas@gmail.com', 'Rua Alvorada, 456'),
('Fornecedor Elite Cups', 'elite.cups@outlook.com', 'Avenida Getúlio Vargas, 789'),
('Fornecedor Superior Mugs', 'superior.mugs@gmail.com', 'Rua Marechal Deodoro, 321'),
('Fornecedor Original Cups', 'originalcups@hotmail.com', 'Rua Professor Freitas, 123'),
('Fornecedor StarMugs', 'starmugs@outlook.com', 'Rua dos Professores, 456'),
('Fornecedor Deluxe Mugs', 'deluxe.mugs@gmail.com', 'Avenida do Estado, 789'),
('Fornecedor LuxoCanecas', 'luxocanecas@outlook.com', 'Rua da Glória, 101'),
('Fornecedor ModernCanecas', 'modern.canecas@hotmail.com', 'Rua das Oliveiras, 202'),
('Fornecedor Supremo Mugs', 'supremo.mugs@gmail.com', 'Travessa dos Artistas, 303'),
('Fornecedor Power Cups', 'power.cups@hotmail.com', 'Rua João Pessoa, 404'),
('Fornecedor Infinity Canecas', 'infinity.canecas@gmail.com', 'Avenida São Paulo, 505'),
('Fornecedor Alpha Cups', 'alpha.cups@outlook.com', 'Rua Presidente Vargas, 606'),
('Fornecedor GreenCups', 'greencups@hotmail.com', 'Rua dos Navegantes, 707'),
('Fornecedor Smart Mugs', 'smart.mugs@live.com', 'Avenida dos Estudantes, 808'),
('Fornecedor Ultimate Cups', 'ultimate.cups@hotmail.com', 'Rua dos Engenheiros, 909'),
('Fornecedor EcoCanecas', 'eco.canecas@gmail.com', 'Avenida da Liberdade, 101'),
('Fornecedor Superior Design', 'superior.design@hotmail.com', 'Rua Floriano Peixoto, 123'),
('Fornecedor Supreme Cups', 'supreme.cups@outlook.com', 'Travessa dos Jornalistas, 321'),
('Fornecedor Crystal Mugs', 'crystal.mugs@gmail.com', 'Rua Nova Esperança, 654'),
('Fornecedor Impacto Mugs', 'impacto.mugs@outlook.com', 'Avenida do Trabalhador, 876'),
('Fornecedor DreamCups', 'dream.cups@gmail.com', 'Rua do Progresso, 1010'),
('Fornecedor Arte em Canecas', 'contato@arteemcanecas.com.br', 'Rua das Américas, 1284'),
('Fornecedor Mundo das Canecas', 'mundo_canecas@gmail.com', 'Avenida Paulista, 1569'),
('Fornecedor Canecas Express', 'vendas@canecasexpress.com', 'Rua Vinte e Quatro de Maio, 923'),
('Fornecedor Estilo Cerâmica', 'estiloceramica@hotmail.com', 'Rua Marquês de Sapucaí, 411'),
('Fornecedor Canecas Arrojadas', 'arrojadas@gmail.com', 'Avenida Brasil, 2456'),
('Fornecedor Canecas Decor', 'contato@canecasdecor.com', 'Rua João XXIII, 901'),
('Fornecedor Universo das Canecas', 'universodascanecas@hotmail.com', 'Rua das Nações Unidas, 302'),
('Fornecedor Caneca Master', 'mastercanecas@gmail.com', 'Rua Vicente Machado, 350'),
('Fornecedor Estampas Modernas', 'estampas_modernas@gmail.com', 'Rua Dom Pedro I, 667'),
('Fornecedor Cerâmica Nacional', 'nacional.ceramica@yahoo.com', 'Rua Benedito Calixto, 789'),
('Fornecedor Canecas e Tal', 'vendas@canecasetal.com.br', 'Rua Marechal Deodoro, 239'),
('Fornecedor Cerâmica Contemporânea', 'contempceramica@gmail.com', 'Rua Floriano Peixoto, 478'),
('Fornecedor Artesanato Canecas', 'artesanatocanecas@hotmail.com', 'Rua José Bonifácio, 384'),
('Fornecedor ArtCanecas', 'artcanecas@gmail.com', 'Rua Almirante Tamandaré, 101'),
('Fornecedor Caneca Viva', 'contato@canecaviva.com.br', 'Rua Xavier de Toledo, 541'),
('Fornecedor Canecas Criativas', 'criativas_canecas@yahoo.com', 'Avenida Rio Branco, 138'),
('Fornecedor Bela Cerâmica', 'belaceramica@hotmail.com', 'Rua Barata Ribeiro, 603'),
('Fornecedor Canecas Premium', 'premiumcanecas@gmail.com', 'Rua Antônio Carlos, 902'),
('Fornecedor Estamparia e Cia', 'estampariacia@gmail.com', 'Rua Teodoro Sampaio, 211');

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


INSERT INTO Canecas (nome, categoria, preco, quantidade_estoque, fornecedor_nome) VALUES 
('Caneca de Cerâmica Floral', 'Cerâmica', 15.90, 100, 'Fornecedor Ceramiczz'),
('Caneca de Cerâmica Geométrica', 'Cerâmica', 18.50, 80, 'Fornecedor Canecas Júlia'),
('Caneca de Vidro Transparente', 'Vidro', 20.50, 50, 'Fornecedor MasterCanecas'),
('Caneca de Vidro Decorada', 'Vidro', 22.00, 40, 'Fornecedor Arte & Design'),
('Caneca de Plástico Colorido', 'Plástico', 10.00, 200, 'Fornecedor TopCups'),
('Caneca Térmica Azul', 'Térmica', 30.00, 80, 'Fornecedor Fabrica Canecas'),
('Caneca Térmica Vermelha', 'Térmica', 32.00, 70, 'Fornecedor Brazil Cups'),
('Caneca Personalizada com Nome', 'Personalizada', 25.00, 60, 'Fornecedor Canecaria LTDA'),
('Caneca de Porcelana Branca', 'Porcelana', 35.00, 30, 'Fornecedor Criativa Canecas'),
('Caneca de Cerâmica Vintage', 'Cerâmica', 27.00, 20, 'Fornecedor Mega Mugs'),
('Caneca de Cerâmica com Tampa', 'Cerâmica', 29.00, 25, 'Fornecedor PrimeCanecas'),
('Caneca de Vidro Canudo', 'Vidro', 24.00, 45, 'Fornecedor Elite Cups'),
('Caneca de Plástico para Viagem', 'Plástico', 15.00, 150, 'Fornecedor Superior Mugs'),
('Caneca de Cerâmica para Café', 'Cerâmica', 20.00, 90, 'Fornecedor Original Cups'),
('Caneca de Cerâmica com Padrão Animal', 'Cerâmica', 28.00, 35, 'Fornecedor StarMugs'),
('Caneca de Vidro com Estampa', 'Vidro', 23.00, 50, 'Fornecedor Deluxe Mugs'),
('Caneca de Plástico com Isolamento', 'Plástico', 12.50, 120, 'Fornecedor LuxoCanecas'),
('Caneca de Cerâmica Artística', 'Cerâmica', 40.00, 15, 'Fornecedor ModernCanecas'),
('Caneca de Cerâmica para Chá', 'Cerâmica', 22.00, 65, 'Fornecedor Supremo Mugs'),
('Caneca de Porcelana Elegante', 'Porcelana', 38.00, 20, 'Fornecedor Power Cups'),
('Caneca de Cerâmica Comédia', 'Cerâmica', 19.00, 55, 'Fornecedor Infinity Canecas'),
('Caneca de Cerâmica Frases Motivacionais', 'Cerâmica', 20.50, 75, 'Fornecedor Alpha Cups'),
('Caneca de Vidro de Aço Inoxidável', 'Vidro', 45.00, 10, 'Fornecedor GreenCups'),
('Caneca de Cerâmica para Estudantes', 'Cerâmica', 18.00, 50, 'Fornecedor Smart Mugs'),
('Caneca de Cerâmica Colorida', 'Cerâmica', 17.50, 85, 'Fornecedor Ultimate Cups'),
('Caneca de Plástico com Alça', 'Plástico', 11.00, 180, 'Fornecedor EcoCanecas'),
('Caneca de Cerâmica com Decoração Natalina', 'Cerâmica', 21.00, 40, 'Fornecedor Superior Design'),
('Caneca de Cerâmica de Natal', 'Cerâmica', 30.00, 30, 'Fornecedor Supreme Cups'),
('Caneca de Cerâmica com Tema de Gato', 'Cerâmica', 26.00, 55, 'Fornecedor Crystal Mugs'),
('Caneca de Cerâmica com Tema de Cão', 'Cerâmica', 26.00, 50, 'Fornecedor Impacto Mugs'),
('Caneca de Vidro com Capacidade de 500ml', 'Vidro', 28.00, 45, 'Fornecedor DreamCups'),
('Caneca de Cerâmica com Estampa de Flores', 'Cerâmica', 23.50, 60, 'Fornecedor Arte em Canecas'),
('Caneca de Plástico Transparente', 'Plástico', 9.00, 200, 'Fornecedor Mundo das Canecas'),
('Caneca de Cerâmica Azul', 'Cerâmica', 19.50, 75, 'Fornecedor Canecas Express'),
('Caneca de Cerâmica Verde', 'Cerâmica', 20.00, 70, 'Fornecedor Estilo Cerâmica'),
('Caneca de Porcelana Rosa', 'Porcelana', 37.00, 20, 'Fornecedor Canecas Arrojadas'),
('Caneca de Cerâmica Coração', 'Cerâmica', 29.00, 25, 'Fornecedor Canecas Decor'),
('Caneca de Cerâmica com Risco', 'Cerâmica', 18.00, 90, 'Fornecedor Universo das Canecas'),
('Caneca de Vidro para Cerveja', 'Vidro', 25.00, 40, 'Fornecedor Caneca Master'),
('Caneca de Cerâmica Preto e Branco', 'Cerâmica', 22.00, 50, 'Fornecedor Estampas Modernas'),
('Caneca de Cerâmica com Personagem', 'Cerâmica', 24.00, 35, 'Fornecedor Cerâmica Nacional'),
('Caneca de Cerâmica Minimalista', 'Cerâmica', 31.00, 15, 'Fornecedor Canecas e Tal'),
('Caneca de Cerâmica com Tema de Viagem', 'Cerâmica', 21.50, 45, 'Fornecedor Cerâmica Contemporânea'),
('Caneca de Cerâmica com Tema de Música', 'Cerâmica', 26.50, 30, 'Fornecedor Artesanato Canecas'),
('Caneca de Vidro com Canudo', 'Vidro', 27.00, 25, 'Fornecedor ArtCanecas'),
('Caneca de Plástico com Tampa', 'Plástico', 14.00, 120, 'Fornecedor Caneca Viva'),
('Caneca de Cerâmica para Chá Verde', 'Cerâmica', 20.00, 55, 'Fornecedor Canecas Criativas'),
('Caneca de Cerâmica Arco-Íris', 'Cerâmica', 30.00, 20, 'Fornecedor Bela Cerâmica'),
('Caneca de Cerâmica para Barista', 'Cerâmica', 32.00, 15, 'Fornecedor Canecas Premium'),
('Caneca de Vidro para Smoothie', 'Vidro', 29.00, 10, 'Fornecedor Estamparia e Cia');

INSERT INTO Vendas (cliente_id, data_venda, valor_total) VALUES
(1, '2024-10-01 10:00:00', 100.00),
(2, '2024-10-02 11:00:00', 150.00),
(3, '2024-10-03 12:00:00', 200.00),
(4, '2024-10-04 13:00:00', 75.00),
(5, '2024-10-05 14:00:00', 120.00),
(6, '2024-10-06 15:00:00', 200.00),
(7, '2024-10-07 16:00:00', 50.00),
(8, '2024-10-08 17:00:00', 90.00),
(9, '2024-10-09 18:00:00', 300.00),
(10, '2024-10-10 19:00:00', 110.00),
(11, '2024-10-11 20:00:00', 135.00),
(12, '2024-10-12 21:00:00', 65.00),
(13, '2024-10-13 22:00:00', 170.00),
(14, '2024-10-14 23:00:00', 55.00),
(15, '2024-10-15 09:00:00', 80.00),
(16, '2024-10-16 10:00:00', 95.00),
(17, '2024-10-17 11:00:00', 125.00),
(18, '2024-10-18 12:00:00', 45.00),
(19, '2024-10-19 13:00:00', 85.00),
(20, '2024-10-20 14:00:00', 70.00),
(21, '2024-10-21 15:00:00', 130.00),
(22, '2024-10-22 16:00:00', 160.00),
(23, '2024-10-23 17:00:00', 210.00),
(24, '2024-10-24 18:00:00', 140.00),
(25, '2024-10-25 19:00:00', 90.00),
(26, '2024-10-26 20:00:00', 100.00),
(27, '2024-10-27 21:00:00', 150.00),
(28, '2024-10-28 22:00:00', 80.00),
(29, '2024-10-29 23:00:00', 130.00),
(30, '2024-10-30 09:00:00', 190.00),
(31, '2024-10-31 10:00:00', 170.00),
(32, '2024-11-01 11:00:00', 200.00),
(33, '2024-11-02 12:00:00', 50.00),
(34, '2024-11-03 13:00:00', 75.00),
(35, '2024-11-04 14:00:00', 60.00),
(36, '2024-11-05 15:00:00', 90.00),
(37, '2024-11-06 16:00:00', 110.00),
(38, '2024-11-07 17:00:00', 140.00),
(39, '2024-11-08 18:00:00', 150.00),
(40, '2024-11-09 19:00:00', 30.00),
(41, '2024-11-10 20:00:00', 85.00),
(42, '2024-11-11 21:00:00', 120.00),
(43, '2024-11-12 22:00:00', 95.00),
(44, '2024-11-13 23:00:00', 175.00),
(45, '2024-11-14 09:00:00', 210.00),
(46, '2024-11-15 10:00:00', 55.00),
(47, '2024-11-16 11:00:00', 160.00),
(48, '2024-11-17 12:00:00', 85.00),
(49, '2024-11-18 13:00:00', 145.00),
(50, '2024-11-19 14:00:00', 50.00);

INSERT INTO ItensVenda (venda_id, caneca_id, quantidade, subtotal) VALUES 
(1, 2, 2, 37.00),
(2, 3, 5, 102.50),
(3, 1, 4, 63.60),
(4, 4, 1, 30.00),
(5, 5, 2, 20.00),
(6, 1, 3, 47.70),
(7, 2, 1, 18.50),
(8, 3, 2, 41.00),
(9, 4, 1, 30.00),
(10, 5, 2, 20.00),
(11, 1, 3, 47.70),
(12, 2, 1, 18.50),
(13, 3, 4, 82.00),
(14, 1, 5, 79.50),
(15, 2, 2, 37.00),
(16, 3, 1, 20.50),
(17, 4, 2, 60.00),
(18, 1, 3, 47.70),
(19, 2, 5, 75.00),
(20, 3, 4, 82.00),
(21, 4, 1, 30.00),
(22, 5, 2, 20.00),
(23, 1, 3, 47.70),
(24, 2, 1, 18.50),
(25, 3, 2, 41.00),
(26, 4, 1, 30.00),
(27, 5, 2, 20.00),
(28, 1, 3, 47.70),
(29, 2, 1, 18.50),
(30, 3, 4, 82.00),
(31, 1, 5, 79.50),
(32, 2, 2, 37.00),
(33, 3, 1, 20.50),
(34, 4, 2, 60.00),
(35, 1, 3, 47.70),
(36, 2, 5, 75.00),
(37, 3, 4, 82.00),
(38, 4, 1, 30.00),
(39, 5, 2, 20.00),
(40, 1, 3, 47.70),
(41, 2, 1, 18.50),
(42, 3, 2, 41.00),
(43, 4, 1, 30.00),
(44, 5, 2, 20.00),
(45, 1, 3, 47.70),
(46, 2, 1, 18.50),
(47, 3, 4, 82.00),
(48, 1, 5, 79.50),
(49, 2, 2, 37.00),
(50, 3, 1, 20.50);

SELECT 
    v.id AS venda_id,
    c.nome AS cliente,
    v.data_venda,
    v.valor_total
FROM 
    Vendas v
JOIN 
    Clientes c ON v.cliente_id = c.id
WHERE 
    v.data_venda BETWEEN '2024-10-01' AND '2024-10-31'
ORDER BY 
    v.data_venda;

SELECT 
    ca.nome AS caneca,
    ca.fornecedor_nome AS fornecedor,
    SUM(iv.quantidade) AS total_vendido
FROM 
    ItensVenda iv
JOIN 
    Canecas ca ON iv.caneca_id = ca.id
GROUP BY 
    ca.nome, ca.fornecedor_nome
ORDER BY 
    total_vendido DESC;


SELECT 
    nome, 
    quantidade_estoque, 
    preco 
FROM 
    Canecas
ORDER BY 
    quantidade_estoque DESC;

SELECT 
    c.nome AS cliente,
    COUNT(v.id) AS total_vendas,
    SUM(v.valor_total) AS valor_total_vendas
FROM 
    Vendas v
JOIN 
    Clientes c ON v.cliente_id = c.id
GROUP BY 
    c.nome
ORDER BY 
    valor_total_vendas DESC;

SELECT 
    DATE_FORMAT(v.data_venda, '%Y-%m') AS mes,
    SUM(v.valor_total) AS total_vendas
FROM 
    Vendas v
GROUP BY 
    mes
ORDER BY 
    mes;

SELECT 
    nome, 
    quantidade_estoque 
FROM 
    Canecas
WHERE 
    quantidade_estoque < 20
ORDER BY 
    quantidade_estoque ASC;

SELECT 
    v.id AS venda_id,
    c.nome AS cliente,
    v.data_venda,
    iv.quantidade,
    (iv.quantidade * ca.preco) AS subtotal
FROM 
    ItensVenda iv
JOIN 
    Vendas v ON iv.venda_id = v.id
JOIN 
    Canecas ca ON iv.caneca_id = ca.id
JOIN 
    Clientes c ON v.cliente_id = c.id
WHERE 
    ca.nome = 'Caneca de Cerâmica Floral'; 
