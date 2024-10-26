CREATE DATABASE loja_materiais;
USE  loja_materiais;

CREATE TABLE fornecedores (
    id INT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome TEXT,
    categoria TEXT,
    preco FLOAT(10, 2),
    quantidade_estoque INT,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id)
);

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome TEXT,
    email TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE vendas (
    id INT PRIMARY KEY,
    data_venda DATE,
    cliente_id INT,
    valor_total FLOAT(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE itensvenda (
    id INT PRIMARY KEY,
    venda_id INT,
    produto_id INT,
    quantidade INT,
    preco_individual FLOAT(10, 2),
    FOREIGN KEY (venda_id) REFERENCES vendas(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO fornecedores (id, nome, telefone, endereco) VALUES
(1, 'Materiais Santos', '(41) 98765-4321', 'Rua das Flores, 123, Curitiba, PR'),
(2, 'Construtora Silva', '(41) 98876-5432', 'Av. Brasil, 456, Curitiba, PR'),
(3, 'Ferragens e Cia', '(41) 99987-6543', 'Rua do Comércio, 789, Curitiba, PR'),
(4, 'Tijolos do Brasil', '(41) 96654-3210', 'Rua da Paz, 234, Curitiba, PR'),
(5, 'Tintas e Vernizes', '(41) 95543-2109', 'Av. dos Trabalhadores, 345, Curitiba, PR'),
(6, 'Materiais Gomes', '(41) 94432-1098', 'Rua do Sol, 567, Curitiba, PR'),
(7, 'Cimento e Areia', '(41) 93321-0987', 'Av. das Indústrias, 678, Curitiba, PR'),
(8, 'Telhas São Jorge', '(41) 92210-9876', 'Rua das Árvores, 789, Curitiba, PR'),
(9, 'Madeira e Cia', '(41) 91109-8765', 'Av. da Liberdade, 890, Curitiba, PR'),
(10, 'Elétrica Fácil', '(41) 90098-7654', 'Rua da Alegria, 901, Curitiba, PR'),
(11, 'Construções Curitiba', '(41) 98765-4321', 'Rua das Palmeiras, 123, Curitiba, PR'),
(12, 'Ferro e Aço', '(41) 98876-5432', 'Av. das Nações, 456, Curitiba, PR'),
(13, 'Materiais da Terra', '(41) 99987-6543', 'Rua do Mercado, 789, Curitiba, PR'),
(14, 'Construtora do Sul', '(41) 96654-3210', 'Rua das Flores, 234, Curitiba, PR'),
(15, 'Tintas e Cores', '(41) 95543-2109', 'Av. do Coração, 345, Curitiba, PR'),
(16, 'Materiais Paraná', '(41) 94432-1098', 'Rua do Sol, 567, Curitiba, PR'),
(17, 'Construções e Reformas', '(41) 93321-0987', 'Av. das Torres, 678, Curitiba, PR'),
(18, 'Telhas do Paraná', '(41) 92210-9876', 'Rua dos Pinhais, 789, Curitiba, PR'),
(19, 'Madeiras e Madeiras', '(41) 91109-8765', 'Av. da Esperança, 890, Curitiba, PR'),
(20, 'Elétrica Curitiba', '(41) 90098-7654', 'Rua da Amizade, 901, Curitiba, PR'),
(21, 'Ferro & Cimento', '(41) 91234-5678', 'Rua do Futuro, 100, Curitiba, PR'),
(22, 'Construtora Aurora', '(41) 93456-7890', 'Av. da Vitória, 200, Curitiba, PR'),
(23, 'Tijolos e Mais', '(41) 94567-8901', 'Rua do Progresso, 300, Curitiba, PR'),
(24, 'Materiais São Lucas', '(41) 95678-9012', 'Rua da Liberdade, 400, Curitiba, PR'),
(25, 'Casa da Construção', '(41) 96789-0123', 'Av. dos Sinos, 500, Curitiba, PR'),
(26, 'Ferragens do Brasil', '(41) 97890-1234', 'Rua do Comércio, 600, Curitiba, PR'),
(27, 'Tintas e Texturas', '(41) 98901-2345', 'Rua das Laranjeiras, 700, Curitiba, PR'),
(28, 'Construtora Nacional', '(41) 99012-3456', 'Av. das Acácias, 800, Curitiba, PR'),
(29, 'Materiais Reunidos', '(41) 90123-4567', 'Rua das Construtoras, 900, Curitiba, PR'),
(30, 'Paraná Ferragens', '(41) 91234-5678', 'Rua do Verde, 1000, Curitiba, PR'),
(31, 'Materiais Santos', '(41) 99876-5432', 'Rua da Paz, 1100, Curitiba, PR'),
(32, 'Cimento e Mais', '(41) 98765-4321', 'Av. do Comércio, 1200, Curitiba, PR'),
(33, 'Madeira e Companhia', '(41) 97654-3210', 'Rua dos Inconfidentes, 1300, Curitiba, PR'),
(34, 'Telhas e Cia', '(41) 96543-2109', 'Av. da Indústria, 1400, Curitiba, PR'),
(35, 'Construtora Santa Luzia', '(41) 95432-1098', 'Rua dos Olhos d’Água, 1500, Curitiba, PR'),
(36, 'Ferro e Ferro', '(41) 94321-0987', 'Av. das Montanhas, 1600, Curitiba, PR'),
(37, 'Construtora Móveis', '(41) 93210-9876', 'Rua das Andorinhas, 1700, Curitiba, PR'),
(38, 'Tinta e Cores', '(41) 92109-8765', 'Av. da Criatividade, 1800, Curitiba, PR'),
(39, 'Materiais da Família', '(41) 91098-7654', 'Rua das Esperanças, 1900, Curitiba, PR'),
(40, 'Construções Coração', '(41) 90087-6543', 'Av. do Comércio, 2000, Curitiba, PR'),
(41, 'Madeira e Tinta', '(41) 89976-5432', 'Rua do Sorriso, 2100, Curitiba, PR'),
(42, 'Ferro e Cimento', '(41) 88865-4321', 'Rua das Palmeiras, 2200, Curitiba, PR'),
(43, 'Casa do Tijolo', '(41) 87754-3210', 'Av. das Amoreiras, 2300, Curitiba, PR'),
(44, 'Materiais Para Todos', '(41) 86643-2109', 'Rua do Sol, 2400, Curitiba, PR'),
(45, 'Cimento Verde', '(41) 85532-1098', 'Av. das Flores, 2500, Curitiba, PR'),
(46, 'Tintas Paraná', '(41) 84421-0987', 'Rua da Amizade, 2600, Curitiba, PR'),
(47, 'Ferro e Água', '(41) 83310-9876', 'Av. das Torres, 2700, Curitiba, PR'),
(48, 'Construtora Estrela', '(41) 82209-8765', 'Rua do Mercado, 2800, Curitiba, PR'),
(49, 'Materiais Ecológicos', '(41) 81108-7654', 'Av. das Nações, 2900, Curitiba, PR'),
(50, 'Ferro e Madeira', '(41) 80097-6543', 'Rua do Futuro, 3000, Curitiba, PR');


INSERT INTO produtos (id, nome, categoria, preco, quantidade_estoque, fornecedor_id) VALUES
(1, 'Cimento Portland', 'Cimento', 30.00, 100, 1),
(2, 'Tijolo Cerâmico', 'Tijolo', 0.80, 500, 4),
(3, 'Areia Fina', 'Areia', 20.00, 150, 7),
(4, 'Telha de Cerâmica', 'Telha', 2.50, 300, 8),
(5, 'Tinta Acrílica', 'Tintas', 50.00, 200, 5),
(6, 'Madeira de Pinus', 'Madeira', 100.00, 80, 9),
(7, 'Ferro para Construção', 'Ferragens', 15.00, 250, 3),
(8, 'Cabo Elétrico', 'Elétrica', 2.00, 600, 10),
(9, 'Pintura Spray', 'Tintas', 15.00, 150, 5),
(10, 'Argamassa', 'Cimento', 25.00, 120, 1),
(11, 'Caibro de Madeira', 'Madeira', 50.00, 60, 9),
(12, 'Bucha para Parafuso', 'Ferragens', 0.50, 1000, 3),
(13, 'Tinta a Óleo', 'Tintas', 70.00, 75, 5),
(14, 'Cimento Colante', 'Cimento', 40.00, 90, 1),
(15, 'Revestimento Cerâmico', 'Revestimento', 1.20, 400, 4),
(16, 'Ferro Redondo', 'Ferragens', 20.00, 200, 3),
(17, 'Porcelanato', 'Revestimento', 50.00, 300, 4),
(18, 'Areia Grossa', 'Areia', 18.00, 180, 7),
(19, 'Gravilha', 'Areia', 25.00, 130, 7),
(20, 'Bandeja para Pintura', 'Tintas', 5.00, 300, 5),
(21, 'Massa Corrida', 'Tintas', 35.00, 150, 5),
(22, 'Piso Laminado', 'Revestimento', 45.00, 200, 4),
(23, 'Viga de Madeira', 'Madeira', 120.00, 50, 9),
(24, 'Tinta para Metal', 'Tintas', 55.00, 90, 5),
(25, 'Parafuso de Aço', 'Ferragens', 0.30, 1000, 3),
(26, 'Placa de Gesso', 'Gesso', 12.00, 400, 2),
(27, 'Cola para Cerâmica', 'Cimento', 10.00, 300, 1),
(28, 'Selante de Silicone', 'Elétrica', 20.00, 200, 10),
(29, 'Lixa para Madeira', 'Ferragens', 3.00, 600, 3),
(30, 'Tinta Spray', 'Tintas', 25.00, 150, 5),
(31, 'Balde de Pintura', 'Tintas', 7.00, 350, 5),
(32, 'Escada de Alumínio', 'Ferragens', 150.00, 40, 3),
(33, 'Porcelanato Polido', 'Revestimento', 70.00, 250, 4),
(34, 'Serra Circular', 'Ferragens', 300.00, 30, 3),
(35, 'Mangueira de Jardim', 'Elétrica', 15.00, 120, 10),
(36, 'Cimento Especial', 'Cimento', 35.00, 80, 1),
(37, 'Tijolo Refratário', 'Tijolo', 1.50, 200, 4),
(38, 'Gravilha de Basalto', 'Areia', 30.00, 150, 7),
(39, 'Placa de MDF', 'Madeira', 40.00, 100, 9),
(40, 'Ferro de Solda', 'Elétrica', 80.00, 70, 10),
(41, 'Verniz para Madeira', 'Tintas', 60.00, 100, 5),
(42, 'Bica corrida', 'Revestimento', 1.00, 500, 4),
(43, 'Caixa de Luz', 'Elétrica', 4.00, 250, 10),
(44, 'Chapa de Aço', 'Ferragens', 200.00, 30, 3),
(45, 'Tinta Esmalte', 'Tintas', 45.00, 110, 5),
(46, 'Tela de Proteção', 'Ferragens', 30.00, 80, 3),
(47, 'Ladrilho Hidráulico', 'Revestimento', 3.00, 600, 4),
(48, 'Saco de Cimento', 'Cimento', 32.00, 150, 1),
(49, 'Martelo de Borracha', 'Ferragens', 20.00, 180, 3),
(50, 'Papel de Lixa', 'Ferragens', 1.50, 800, 3);

INSERT INTO clientes (id, nome, email, telefone, endereco) VALUES
(1, 'Pedro Guilherme', 'lol@gmail.com', '1234-5678', 'Rua Augusto Stresser, 892'),
(2, 'Nathan Tominaga', 'cs@hotmail.com', '2345-6789', 'Rua José de Alencar, 222'),
(3, 'Victor Vieira', 'l4d@hotmail.com', '3345-6721', 'Rua Barão dos Campos, 291'),
(4, 'Roberto Furini', 'egg@hotmail.com', '1145-1234', 'Rua Women of World, 981'),
(5, 'Lucas Gabriel', 'lucas.gabriel@outlook.com', '2223-9182', 'Rua José de Alencar, 222'),
(6, 'Lucas Goex', 'lucas.goex@gmail.com', '1111-1232', 'Rua José de Alencar, 981'),
(7, 'Willian Rodrigues', 'willian.rodrigues@hotmail.com', '1234-1109', 'Rua José das Flores, 412'),
(8, 'Ana Clara Mendes', 'ana.mendes@gmail.com', '9991-2233', 'Rua das Flores, 33'),
(9, 'Bruno Santos', 'bruno.santos@yahoo.com', '9882-3344', 'Avenida Central, 1201'),
(10, 'Carla Lima', 'carla.lima@outlook.com', '9773-4455', 'Travessa da Paz, 56'),
(11, 'Diego Figueiredo', 'diego.figueiredo@gmail.com', '9664-5566', 'Rua João XXIII, 78'),
(12, 'Eduarda Ribeiro', 'eduarda.ribeiro@live.com', '9555-6677', 'Praça das Águas, 22'),
(13, 'Felipe Alves', 'felipe.alves@hotmail.com', '9446-7788', 'Rua Antonio Carlos, 10'),
(14, 'Gabriela Nunes', 'gabi.nunes@gmail.com', '9337-8899', 'Rua do Mercado, 9'),
(15, 'Henrique Teixeira', 'henrique.teixeira@outlook.com', '9228-9900', 'Rua Principal, 88'),
(16, 'Isabela Silva', 'isabela.silva@gmail.com', '9119-1011', 'Alameda dos Anjos, 77'),
(17, 'João Pedro Almeida', 'joao.almeida@hotmail.com', '9000-1122', 'Rua dos Artistas, 101'),
(18, 'Karen Oliveira', 'karen.oliveira@outlook.com', '9888-1314', 'Avenida Brasil, 404'),
(19, 'Leonardo Ferreira', 'leo.ferreira@gmail.com', '9777-1415', 'Rua das Orquídeas, 505'),
(20, 'Mariana Costa', 'mariana.costa@hotmail.com', '9666-1516', 'Rua do Carmo, 606'),
(21, 'Nicolas Souza', 'nicolas.souza@live.com', '9555-1617', 'Rua do Comércio, 707'),
(22, 'Otávio Batista', 'otavio.batista@gmail.com', '9444-1718', 'Rua Marechal, 808'),
(23, 'Paula Martins', 'paula.martins@hotmail.com', '9333-1819', 'Avenida Principal, 909'),
(24, 'Ricardo Carvalho', 'ricardo.carvalho@gmail.com', '9222-1920', 'Rua da Liberdade, 202'),
(25, 'Sabrina Moreira', 'sabrina.moreira@live.com', '9111-2021', 'Rua das Oliveiras, 303'),
(26, 'Thiago Lopes', 'thiago.lopes@hotmail.com', '9009-2122', 'Rua dos Bosques, 404'),
(27, 'Valéria Sousa', 'valeria.sousa@gmail.com', '9898-2223', 'Praça da Sé, 505'),
(28, 'Adriano Correia', 'adriano.correia@outlook.com', '9787-2324', 'Rua dos Navegantes, 606'),
(29, 'Bianca Araújo', 'bianca.araujo@hotmail.com', '9676-2425', 'Travessa das Nações, 707'),
(30, 'Caio Pereira', 'caio.pereira@gmail.com', '9565-2526', 'Rua Nova Esperança, 808'),
(31, 'Daniel Fonseca', 'daniel.fonseca@live.com', '9454-2627', 'Rua da Aurora, 909'),
(32, 'Elisa Rocha', 'elisa.rocha@gmail.com', '9343-2728', 'Avenida Rio Branco, 101'),
(33, 'Fábio Castro', 'fabio.castro@outlook.com', '9232-2829', 'Rua da República, 202'),
(34, 'Giovanna Lima', 'giovanna.lima@gmail.com', '9121-2920', 'Rua das Palmeiras, 303'),
(35, 'Heitor Ribeiro', 'heitor.ribeiro@live.com', '9010-3031', 'Rua Nova, 404'),
(36, 'Ingrid Duarte', 'ingrid.duarte@gmail.com', '9899-3132', 'Avenida das Nações, 505'),
(37, 'José Augusto', 'jose.augusto@outlook.com', '9788-3233', 'Rua Presidente Vargas, 606'),
(38, 'Larissa Carvalho', 'larissa.carvalho@gmail.com', '9677-3334', 'Rua do Progresso, 707'),
(39, 'Mateus Franco', 'mateus.franco@live.com', '9566-3435', 'Rua São João, 808'),
(40, 'Nathalia Correia', 'nathalia.correia@gmail.com', '9455-3536', 'Rua do Sol, 909'),
(41, 'Pedro Henrique', 'pedro.henrique@live.com', '9344-3637', 'Avenida dos Estados, 101'),
(42, 'Rafael Silva', 'rafael.silva@gmail.com', '9233-3738', 'Rua dos Poetas, 202'),
(43, 'Sofia Melo', 'sofia.melo@outlook.com', '9122-3839', 'Rua da Saudade, 303'),
(44, 'Tatiana Freitas', 'tatiana.freitas@live.com', '9011-3940', 'Rua do Futuro, 404'),
(45, 'Ursula Macedo', 'ursula.macedo@gmail.com', '9890-4041', 'Rua das Rosas, 505'),
(46, 'Vinícius Oliveira', 'vinicius.oliveira@live.com', '9789-4142', 'Rua do Comércio, 606'),
(47, 'Wagner Souza', 'wagner.souza@hotmail.com', '9678-4243', 'Rua da Harmonia, 707'),
(48, 'Xavier Almeida', 'xavier.almeida@gmail.com', '9567-4344', 'Rua dos Ipês, 808'),
(49, 'Yasmin Gonçalves', 'yasmin.goncalves@outlook.com', '9456-4445', 'Rua da Glória, 909'),
(50, 'Zélia Farias', 'zelia.farias@hotmail.com', '9345-4546', 'Rua Sete de Setembro, 101');


INSERT INTO vendas (id, data_venda, cliente_id, valor_total) VALUES
(1, '2024-01-15', 1, 150.00),
(2, '2024-01-16', 2, 8.00),
(3, '2024-01-17', 3, 140.00),
(4, '2024-01-18', 4, 37.50),
(5, '2024-01-19', 5, 100.00),
(6, '2024-01-20', 6, 300.00),
(7, '2024-01-21', 7, 375.00),
(8, '2024-01-22', 8, 24.00),
(9, '2024-01-23', 9, 120.00),
(10, '2024-01-24', 10, 125.00),
(11, '2024-01-25', 11, 200.00),
(12, '2024-01-26', 12, 25.00),
(13, '2024-01-27', 13, 140.00),
(14, '2024-01-28', 14, 120.00),
(15, '2024-01-29', 15, 36.00),
(16, '2024-01-30', 16, 400.00),
(17, '2024-01-31', 17, 300.00),
(18, '2024-02-01', 18, 162.00),
(19, '2024-02-02', 19, 100.00),
(20, '2024-02-03', 20, 5.00),
(21, '2024-02-04', 21, 175.00),
(22, '2024-02-05', 22, 135.00),
(23, '2024-02-06', 23, 960.00),
(24, '2024-02-07', 24, 55.00),
(25, '2024-02-08', 25, 3.00),
(26, '2024-02-09', 26, 180.00),
(27, '2024-02-10', 27, 200.00),
(28, '2024-02-11', 28, 100.00),
(29, '2024-02-12', 29, 9.00),
(30, '2024-02-13', 30, 250.00),
(31, '2024-02-14', 31, 35.00),
(32, '2024-02-15', 32, 300.00),
(33, '2024-02-16', 33, 280.00),
(34, '2024-02-17', 34, 300.00),
(35, '2024-02-18', 35, 105.00),
(36, '2024-02-19', 36, 105.00),
(37, '2024-02-20', 37, 15.00),
(38, '2024-02-21', 38, 150.00),
(39, '2024-02-22', 39, 80.00),
(40, '2024-02-23', 40, 80.00),
(41, '2024-02-24', 41, 60.00),
(42, '2024-02-25', 42, 5.00),
(43, '2024-02-26', 43, 16.00),
(44, '2024-02-27', 44, 200.00),
(45, '2024-02-28', 45, 225.00),
(46, '2024-02-29', 46, 60.00),
(47, '2024-03-01', 47, 30.00),
(48, '2024-03-02', 48, 128.00),
(49, '2024-03-03', 49, 60.00),
(50, '2024-03-04', 50, 7.50);

INSERT INTO itensvenda (id, venda_id, produto_id, quantidade, preco_individual) VALUES
(1, 1, 1, 5, 30.00),
(2, 2, 2, 10, 0.80),
(3, 3, 3, 7, 20.00),
(4, 4, 4, 15, 2.50),
(5, 5, 5, 2, 50.00),
(6, 6, 6, 3, 100.00),
(7, 7, 7, 25, 15.00),
(8, 8, 8, 12, 2.00),
(9, 9, 9, 8, 15.00),
(10, 10, 10, 5, 25.00),
(11, 11, 11, 4, 50.00),
(12, 12, 12, 50, 0.50),
(13, 13, 13, 2, 70.00),
(14, 14, 14, 3, 40.00),
(15, 15, 15, 30, 1.20),
(16, 16, 16, 20, 20.00),
(17, 17, 17, 6, 50.00),
(18, 18, 18, 9, 18.00),
(19, 19, 19, 4, 25.00),
(20, 20, 20, 1, 5.00),
(21, 21, 21, 5, 35.00),
(22, 22, 22, 3, 45.00),
(23, 23, 23, 8, 120.00),
(24, 24, 24, 1, 55.00),
(25, 25, 25, 20, 0.30),
(26, 26, 26, 15, 12.00),
(27, 27, 27, 20, 10.00),
(28, 28, 28, 5, 20.00),
(29, 29, 29, 3, 3.00),
(30, 30, 30, 10, 25.00),
(31, 31, 31, 5, 7.00),
(32, 32, 32, 2, 150.00),
(33, 33, 33, 4, 70.00),
(34, 34, 34, 1, 300.00),
(35, 35, 35, 7, 15.00),
(36, 36, 36, 3, 35.00),
(37, 37, 37, 10, 1.50),
(38, 38, 38, 5, 30.00),
(39, 39, 39, 2, 40.00),
(40, 40, 40, 1, 80.00),
(41, 41, 41, 1, 60.00),
(42, 42, 42, 5, 1.00),
(43, 43, 43, 4, 4.00),
(44, 44, 44, 1, 200.00),
(45, 45, 45, 5, 45.00),
(46, 46, 46, 2, 30.00),
(47, 47, 47, 10, 3.00),
(48, 48, 48, 4, 32.00),
(49, 49, 49, 3, 20.00),
(50, 50, 50, 5, 1.50);

# Número de Produtos em Estoque
SELECT nome, quantidade_estoque
FROM produtos
WHERE quantidade_estoque > 0;

# Total de Vendas por Cliente
SELECT c.nome AS cliente, SUM(v.valor_total) AS total_gasto
FROM clientes c
JOIN vendas v ON c.id = v.cliente_id
GROUP BY c.id, c.nome
ORDER BY total_gasto DESC;

# Total de Produtos Vendidos
SELECT p.nome AS produto, SUM(iv.quantidade) AS total_vendido
FROM itensvenda iv
JOIN produtos p ON iv.produto_id = p.id
GROUP BY p.id, p.nome
ORDER BY total_vendido DESC;

# Vendas por Período
SELECT DATE_FORMAT(data_venda, '%Y-%m') AS mes, SUM(valor_total) AS total_vendas
FROM vendas
WHERE data_venda BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY mes
ORDER BY mes;

# Detalhes das Vendas Ordenadas pela data mais recente
SELECT v.id AS venda_id, c.nome AS cliente, p.nome AS produto, iv.quantidade, iv.preco_individual
FROM vendas v
JOIN clientes c ON v.cliente_id = c.id
JOIN itensvenda iv ON v.id = iv.venda_id
JOIN produtos p ON iv.produto_id = p.id
ORDER BY v.data_venda DESC;




