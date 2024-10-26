CREATE DATABASE LojaDeBrinquedos;
USE LojaDeBrinquedos;

CREATE TABLE Fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    endereco TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE Brinquedos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    categoria TEXT,
    preco FLOAT(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(id)
);

CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    endereco TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE Vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_venda DATE NOT NULL,
    valor_total FLOAT (10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE ItensVenda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venda_id INT,
    brinquedo_id INT,
    quantidade INT NOT NULL,
    subtotal FLOAT(10, 2) NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES Vendas(id),
    FOREIGN KEY (brinquedo_id) REFERENCES Brinquedos(id)
);


INSERT INTO Fornecedores (nome, endereco, telefone, email) VALUES
('Brinquedos do Futuro', 'Rua da Inovação, 100', '11987654321', 'contato@brinquedosfuturo.com'),
('Mundo Mágico', 'Av. da Fantasia, 200', '11912345678', 'suporte@mundomagico.com'),
('Diversão em Dobro', 'Estrada da Alegria, 300', '11876543210', 'vendas@diversaodobro.com'),
('Brincar e Aprender', 'Rua do Saber, 400', '11765432109', 'info@brincareaprender.com'),
('Estrela Brilhante', 'Av. das Estrelas, 500', '11654321098', 'contato@estrelabrilhante.com'),
('Playtime Toys', 'Rua da Diversão, 600', '11543210987', 'contact@playtimetoys.com'),
('Factory of Fun', 'Av. do Sorriso, 700', '11432109876', 'support@factoryoffun.com'),
('Kids World', 'Rua dos Pequenos, 800', '11321098765', 'info@kidsworld.com'),
('Wonder Toys', 'Av. da Magia, 900', '11210987654', 'info@wondertoys.com'),
('Toy Factory', 'Rua do Brinquedo, 1000', '11109876543', 'contact@toyfactory.com'),
('Dreamland Toys', 'Rua da Fantasia, 1100', '11987654322', 'dreamland@toys.com'),
('Happy Play', 'Av. das Crianças, 1200', '11912345679', 'contact@happyplay.com'),
('Adventures in Toys', 'Estrada da Alegria, 1300', '11876543211', 'info@adventuresintoys.com'),
('Little Explorers', 'Rua do Descobrimento, 1400', '11765432110', 'info@littleexplorers.com'),
('Rainbow Toys', 'Av. do Arco-Íris, 1500', '11654321099', 'contact@rainbowtoys.com'),
('Toy Kingdom', 'Rua do Reino, 1600', '11543210988', 'support@toykingdom.com'),
('Creative Toys Co.', 'Av. da Inovação, 1700', '11432109877', 'info@creativetoys.com'),
('Fun Galaxy', 'Rua das Estrelas, 1800', '11321098766', 'contact@fungalaxy.com'),
('Super Toys', 'Av. do Super-Herói, 1900', '11210987655', 'info@supertoys.com'),
('Toy Village', 'Rua do Vilarejo, 2000', '11109876544', 'contact@toyvillage.com'),
('Crafters Toys', 'Rua da Criatividade, 2100', '11987654323', 'info@crafterstoys.com'),
('Fantasy Toys', 'Av. do Sonho, 2200', '11912345680', 'contact@fantasytoys.com'),
('Wonderland Toys', 'Estrada da Fantasia, 2300', '11876543212', 'support@wonderlandtoys.com'),
('Galaxy Toys', 'Rua da Galáxia, 2400', '11765432111', 'info@galaxytoys.com'),
('Jungle Toys', 'Av. da Selva, 2500', '11654321090', 'contact@jungletos.com'),
('Ocean Toys', 'Rua do Oceano, 2600', '11543210989', 'info@oceantoys.com'),
('Mountain Toys', 'Av. da Montanha, 2700', '11432109878', 'contact@mountaintoys.com'),
('Desert Toys', 'Rua do Deserto, 2800', '11321098767', 'info@deserttoys.com'),
('Space Toys', 'Av. do Espaço, 2900', '11210987656', 'contact@spacetoys.com'),
('Robo Toys', 'Rua dos Robôs, 3000', '11109876545', 'info@robotoys.com'),
('Princess Toys', 'Av. das Princesas, 3100', '11987654324', 'contact@princesstoys.com'),
('Heroic Toys', 'Rua dos Heróis, 3200', '11912345681', 'info@heroictoys.com'),
('Animal Kingdom Toys', 'Estrada do Reino Animal, 3300', '11876543213', 'support@animalkingdomtoys.com'),
('Sports Toys', 'Rua do Esporte, 3400', '11765432112', 'info@sportstoys.com'),
('Science Toys', 'Av. da Ciência, 3500', '11654321091', 'contact@sciencetoys.com'),
('Artistic Toys', 'Rua da Arte, 3600', '11543210990', 'info@artistictos.com'),
('Dino Toys', 'Av. dos Dinossauros, 3700', '11432109879', 'contact@dinosaurtoys.com'),
('Music Toys', 'Rua da Música, 3800', '11321098768', 'info@musictos.com'),
('Magic Toys', 'Av. da Magia, 3900', '11210987657', 'contact@magictoys.com'),
('Puzzle Toys', 'Rua do Quebra-Cabeça, 4000', '11109876546', 'info@puzzletos.com'),
('Traveling Toys', 'Av. das Viagens, 4100', '11987654325', 'contact@travelingtoys.com'),
('Interactive Toys', 'Estrada da Interatividade, 4200', '11912345682', 'support@interactivetoys.com'),
('Learning Toys', 'Rua do Aprendizado, 4300', '11876543214', 'info@learningtoys.com'),
('Nature Toys', 'Av. da Natureza, 4400', '11765432113', 'contact@naturetoys.com'),
('Cozy Toys', 'Rua do Conforto, 4500', '11654321092', 'info=cozytoys.com');

INSERT INTO Brinquedos (nome, categoria, preco, quantidade_estoque, fornecedor_id) VALUES
('Super Carro de Corrida', 'Veículo', 150.00, 30, 1),
('Boneca Princesa', 'Brinquedo de ação', 80.00, 25, 2),
('Quebra-Cabeça de 1000 Peças', 'Educativo', 60.00, 15, 3),
('Pelúcia de Urso', 'Brinquedo macio', 70.00, 20, 4),
('Jogo de Tabuleiro Estratégico', 'Estratégia', 120.00, 10, 5),
('Ferrovia Mágica', 'Veículo', 90.00, 18, 1),
('Fantoche de Mão', 'Brinquedo de Ação', 30.00, 40, 2),
('Set de Construção', 'Construção', 100.00, 12, 3),
('Bola de Futebol', 'Esportivo', 45.00, 22, 4),
('Jogo de Cartas', 'Estratégia', 25.00, 50, 5),
('Carro de Bombeiros', 'Veículo', 110.00, 16, 1),
('Super Herói de Ação', 'Brinquedo de Ação', 75.00, 20, 2),
('Montanha Russa de Brinquedo', 'Diversão', 200.00, 5, 3),
('Caminhão de Lixo', 'Veículo', 85.00, 14, 4),
('Robô Inteligente', 'Tecnologia', 300.00, 8, 5),
('Bicicleta Infantil', 'Esportivo', 200.00, 12, 1),
('Cesta de Piquenique', 'Aventura', 50.00, 18, 2),
('Piano Musical', 'Educativo', 65.00, 15, 3),
('Kit de Ciências', 'Educativo', 90.00, 10, 4),
('Dinosaur Toy Set', 'Aventura', 120.00, 7, 5),
('Boneco de Dinossauro', 'Aventura', 35.00, 30, 1),
('Jogo de Memória', 'Educativo', 40.00, 22, 2),
('Conjunto de Pintura', 'Criatividade', 55.00, 17, 3),
('Balão de Água', 'Diversão', 10.00, 100, 4),
('Jogo de Dardos', 'Esportivo', 75.00, 8, 5),
('Trem Elétrico', 'Veículo', 200.00, 10, 1),
('Bolha de Sabão', 'Diversão', 25.00, 60, 2),
('Caixa de Música', 'Educativo', 45.00, 14, 3),
('Cubo Mágico', 'Desafio', 20.00, 20, 4),
('Carrinho de Controle Remoto', 'Tecnologia', 150.00, 9, 5),
('Boneca de Pano', 'Brinquedo macio', 30.00, 25, 1),
('Boliche Infantil', 'Esportivo', 50.00, 11, 2),
('Set de Ferramentas', 'Construção', 90.00, 5, 3),
('Jogo de Montagem', 'Construção', 100.00, 15, 4),
('Pista de Carrinhos', 'Diversão', 120.00, 10, 5),
('Caminhão de Bombeiros', 'Veículo', 130.00, 13, 1),
('Pasta de Atividades', 'Educativo', 50.00, 18, 2),
('Patins de Iniciação', 'Esportivo', 200.00, 8, 3),
('Quebra-Cabeça 3D', 'Educativo', 80.00, 9, 4),
('Guitarra Infantil', 'Música', 100.00, 12, 5),
('Jogo da Velha', 'Estratégia', 30.00, 22, 1),
('Cama Elástica', 'Diversão', 250.00, 5, 2),
('Bola de Basquete', 'Esportivo', 70.00, 20, 3),
('Fantoche de Pulga', 'Brinquedo de Ação', 35.00, 25, 4),
('Kit de Jardinagem', 'Educação', 40.00, 18, 5),
('Cubo de Rubik', 'Desafio', 15.00, 30, 1),
('Torre de Bloquinhos', 'Construção', 25.00, 40, 2),
('Mini Arcade', 'Tecnologia', 200.00, 6, 3),
('Jogo de Lógica', 'Desafio', 50.00, 15, 4),
('Kit de Experimentos', 'Educação', 70.00, 10, 5),
('Brinquedo de Empilhar', 'Educação', 30.00, 20, 1),
('Jogo de Esportes', 'Esportivo', 80.00, 12, 2),
('Bolha de Ar', 'Diversão', 15.00, 50, 3),
('Carro de Controle Remoto', 'Tecnologia', 120.00, 9, 4),
('Lego Criativo', 'Construção', 150.00, 7, 5),
('Robo de Brinquedo', 'Tecnologia', 220.00, 8, 1),
('Bola de Plástico', 'Diversão', 5.00, 100, 2);

INSERT INTO Clientes (nome, endereco, telefone, email) VALUES
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
(1, '2024-01-10', 300.00),
(2, '2024-01-11', 150.00),
(3, '2024-01-12', 400.00),
(4, '2024-01-13', 250.00),
(5, '2024-01-14', 600.00),
(6, '2024-01-15', 200.00),
(7, '2024-01-16', 350.00),
(8, '2024-01-17', 450.00),
(9, '2024-01-18', 100.00),
(10, '2024-01-19', 300.00),
(11, '2024-01-20', 250.00),
(12, '2024-01-21', 150.00),
(13, '2024-01-22', 400.00),
(14, '2024-01-23', 200.00),
(15, '2024-01-24', 350.00),
(16, '2024-01-25', 600.00),
(17, '2024-01-26', 250.00),
(18, '2024-01-27', 450.00),
(19, '2024-01-28', 300.00),
(20, '2024-01-29', 150.00),
(21, '2024-01-30', 400.00),
(22, '2024-01-31', 200.00),
(23, '2024-02-01', 350.00),
(24, '2024-02-02', 600.00),
(25, '2024-02-03', 250.00),
(26, '2024-02-04', 150.00),
(27, '2024-02-05', 400.00),
(28, '2024-02-06', 200.00),
(29, '2024-02-07', 350.00),
(30, '2024-02-08', 600.00),
(31, '2024-02-09', 250.00),
(32, '2024-02-10', 450.00),
(33, '2024-02-11', 300.00),
(34, '2024-02-12', 150.00),
(35, '2024-02-13', 400.00),
(36, '2024-02-14', 200.00),
(37, '2024-02-15', 350.00),
(38, '2024-02-16', 600.00),
(39, '2024-02-17', 250.00),
(40, '2024-02-18', 450.00),
(41, '2024-02-19', 300.00),
(42, '2024-02-20', 150.00),
(43, '2024-02-21', 400.00),
(44, '2024-02-22', 200.00),
(45, '2024-02-23', 350.00),
(46, '2024-02-24', 600.00),
(47, '2024-02-25', 250.00),
(48, '2024-02-26', 450.00),
(49, '2024-02-27', 300.00),
(50, '2024-02-28', 150.00);

INSERT INTO ItensVenda (venda_id, brinquedo_id, quantidade, subtotal) VALUES
(1, 1, 2, 300.00),
(2, 2, 1, 80.00),
(3, 3, 3, 180.00),
(4, 4, 1, 70.00),
(5, 5, 2, 240.00),
(6, 6, 1, 90.00),
(7, 7, 3, 90.00),
(8, 8, 2, 50.00),
(9, 9, 1, 25.00),
(10, 10, 2, 50.00),
(11, 11, 1, 130.00),
(12, 12, 1, 75.00),
(13, 13, 2, 200.00),
(14, 14, 1, 85.00),
(15, 15, 1, 300.00),
(16, 16, 1, 200.00),
(17, 17, 1, 50.00),
(18, 18, 1, 65.00),
(19, 19, 1, 90.00),
(20, 20, 1, 120.00),
(21, 21, 1, 35.00),
(22, 22, 1, 40.00),
(23, 23, 1, 55.00),
(24, 24, 1, 10.00),
(25, 25, 1, 75.00),
(26, 26, 1, 200.00),
(27, 27, 1, 25.00),
(28, 28, 1, 150.00),
(29, 29, 1, 30.00),
(30, 30, 1, 20.00),
(31, 31, 1, 70.00),
(32, 32, 1, 90.00),
(33, 33, 1, 80.00),
(34, 34, 1, 40.00),
(35, 35, 1, 150.00),
(36, 36, 1, 60.00),
(37, 37, 1, 250.00),
(38, 38, 1, 15.00),
(39, 39, 1, 200.00),
(40, 40, 1, 100.00),
(41, 41, 1, 35.00),
(42, 42, 1, 90.00),
(43, 43, 1, 200.00),
(44, 44, 1, 60.00),
(45, 45, 1, 30.00),
(46, 46, 1, 50.00),
(47, 47, 1, 70.00),
(48, 48, 1, 100.00),
(49, 49, 1, 80.00),
(50, 50, 1, 50.00);


# Vendas por período
SELECT v.id, c.nome AS cliente, v.data_venda, SUM(iv.subtotal) AS total_venda
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
JOIN ItensVenda iv ON v.id = iv.venda_id
WHERE v.data_venda BETWEEN '2024-01-01' AND '2024-01-31'
GROUP BY v.id;

# Brinquedos mais vendidos
SELECT b.nome, SUM(iv.quantidade) AS total_vendido
FROM ItensVenda iv
JOIN Brinquedos b ON iv.brinquedo_id = b.id
GROUP BY b.id
ORDER BY total_vendido DESC;

# Compras dos usuários e seus preços
SELECT 
    Clientes.nome AS Nome_Cliente,
    Brinquedos.nome AS Nome_Brinquedo,
    ItensVenda.quantidade AS Quantidade_Comprada,
    ItensVenda.subtotal AS Valor_Pago
FROM 
    Clientes
JOIN 
    Vendas ON Clientes.id = Vendas.cliente_id
JOIN 
    ItensVenda ON Vendas.id = ItensVenda.venda_id
JOIN 
    Brinquedos ON ItensVenda.brinquedo_id = Brinquedos.id
ORDER BY 
    Clientes.nome, Vendas.data_venda;
