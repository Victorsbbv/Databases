CREATE DATABASE agronegocio;
USE agronegocio;

CREATE TABLE Produtores (
    id INT PRIMARY KEY,
    nome TEXT,
    endereco TEXT,
    telefone TEXT
);

CREATE TABLE Culturas (
    id INT PRIMARY KEY,
    nome TEXT,
    tipo TEXT
);

CREATE TABLE Insumos (
    id INT PRIMARY KEY,
    nome TEXT,
    tipo TEXT
);

CREATE TABLE Fornecedores (
    id INT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE Funcionarios (
    id INT PRIMARY KEY,
    nome TEXT,
    cargo TEXT,
    salario FLOAT(10, 2)
);

CREATE TABLE Vendas (
    id INT PRIMARY KEY,
    id_produtor INT,
    id_cultura INT,
    quantidade INT,
    data_vendas DATE,
    valor_total FLOAT(10, 2),
    FOREIGN KEY (id_produtor) REFERENCES Produtores(id),
    FOREIGN KEY (id_cultura) REFERENCES Culturas(id)
);

CREATE TABLE Estoque (
    id INT PRIMARY KEY,
    id_insumo INT,
    quantidade INT,
    data_estoque DATE,
    FOREIGN KEY (id_insumo) REFERENCES Insumos(id)
);

CREATE TABLE RelatoriosProducao (
    id INT PRIMARY KEY,
    id_cultura INT,
    quantidade_colhida INT,
    data_relatorio DATE,
    observacoes TEXT,
    FOREIGN KEY (id_cultura) REFERENCES Culturas(id)
);

INSERT INTO Produtores (id, nome, endereco, telefone) VALUES
(1, 'João da Silva', 'Avenida das Flores, 123', '1234567890'),
(2, 'Maria Oliveira', 'Rua do Sol Nascente, 456', '0987654321'),
(3, 'Carlos Pereira', 'Travessa das Estrelas, 789', '2345678901'),
(4, 'Ana Santos', 'Rua dos Pássaros, 123', '3456789012'),
(5, 'Pedro Alves', 'Rua do Rio Verde, 234', '4567890123'),
(6, 'Fernanda Lima', 'Avenida do Mar, 345', '5678901234'),
(7, 'Roberto Costa', 'Rua da Paz, 456', '6789012345'),
(8, 'Lucas Martins', 'Praça da Liberdade, 567', '7890123456'),
(9, 'Tatiane Gomes', 'Rua do Campo, 678', '8901234567'),
(10, 'Jorge Silva', 'Avenida das Árvores, 789', '9012345678'),
(11, 'Luana Ferreira', 'Rua dos Sorrisos, 890', '1123456789'),
(12, 'Thiago Rocha', 'Rua da Amizade, 901', '2234567890'),
(13, 'Rafael Almeida', 'Rua dos Ventos, 012', '3345678901'),
(14, 'Camila Dias', 'Avenida do Horizonte, 123', '4456789012'),
(15, 'Vinícius Ribeiro', 'Rua da Esperança, 234', '5567890123'),
(16, 'Bruna Lima', 'Rua da Alegria, 345', '6678901234'),
(17, 'André Carvalho', 'Rua das Laranjeiras, 456', '7789012345'),
(18, 'Patrícia Mendes', 'Rua dos Girassóis, 567', '8890123456'),
(19, 'Eduardo Santos', 'Rua da Serpente, 678', '9901234567'),
(20, 'Juliana Cardoso', 'Rua dos Viajantes, 789', '1012345678'),
(21, 'Marcio Lopes', 'Rua da Trilha, 890', '2123456789'),
(22, 'Karla Vieira', 'Rua da Primavera, 901', '3234567890'),
(23, 'Diego Pinto', 'Rua do Sol Poente, 012', '4345678901'),
(24, 'Gustavo Almeida', 'Rua do Luar, 123', '5456789012'),
(25, 'Simone Barros', 'Avenida das Ondas, 234', '6567890123'),
(26, 'Fabio Mendes', 'Rua das Maçãs, 345', '7678901234'),
(27, 'Rosana Martins', 'Rua do Farol, 456', '8789012345'),
(28, 'Alexandre Costa', 'Rua dos Corações, 567', '9890123456'),
(29, 'Marina Pereira', 'Avenida das Conchas, 678', '1901234567'),
(30, 'Fernando Santos', 'Rua do Vento Norte, 789', '2012345678'),
(31, 'Lucas Ferreira', 'Rua da Borboleta, 890', '3123456789'),
(32, 'Sofia Lima', 'Avenida do Cristal, 901', '4234567890'),
(33, 'Paulo Roberto', 'Rua da Colina, 012', '5345678901'),
(34, 'Carla Dias', 'Rua do Sábio, 123', '6456789012'),
(35, 'Ricardo Alves', 'Rua da Liberdade, 234', '7567890123'),
(36, 'Patrícia Nunes', 'Rua do Sol Radiante, 345', '8678901234'),
(37, 'Danilo Ferreira', 'Rua das Nuvens, 456', '9789012345'),
(38, 'Vera Lúcia', 'Rua do Arco-Íris, 567', '0890123456'),
(39, 'Sérgio Santos', 'Rua do Amor, 678', '1901234567'),
(40, 'Cecília Barros', 'Rua dos Encantos, 789', '2012345678'),
(41, 'Guilherme Costa', 'Rua das Cascatas, 890', '3123456789'),
(42, 'Flávia Lima', 'Rua das Maravilhas, 901', '4234567890'),
(43, 'Túlio Mendes', 'Rua do Amanhã, 012', '5345678901'),
(44, 'Alessandra Gomes', 'Rua dos Sonhos, 123', '6456789012'),
(45, 'Rodrigo Dias', 'Rua do Mar Azul, 234', '7567890123'),
(46, 'Fábio Lopes', 'Avenida da Serpente, 345', '8678901234'),
(47, 'Fernanda Nunes', 'Rua da Aurora, 456', '9789012345'),
(48, 'Ricardo Ribeiro', 'Rua das Estações, 567', '0890123456'),
(49, 'Marcelo Silva', 'Rua do Infinito, 678', '1901234567'),
(50, 'Elaine Costa', 'Rua das Borboletas, 789', '2012345678');

INSERT INTO Culturas (id, nome, tipo) VALUES
(1, 'Soja', 'Oleaginosa'),
(2, 'Milho', 'Cereal'),
(3, 'Café', 'Café'),
(4, 'Trigo', 'Cereal'),
(5, 'Arroz', 'Cereal'),
(6, 'Feijão', 'Leguminosa'),
(7, 'Cana-de-açúcar', 'Cana'),
(8, 'Tomate', 'Hortaliça'),
(9, 'Cenoura', 'Hortaliça'),
(10, 'Alface', 'Hortaliça'),
(11, 'Batata', 'Tubérculo'),
(12, 'Mandioca', 'Tubérculo'),
(13, 'Batata-doce', 'Tubérculo'),
(14, 'Milho Verde', 'Cereal'),
(15, 'Pimentão', 'Hortaliça'),
(16, 'Berinjela', 'Hortaliça'),
(17, 'Abóbora', 'Hortaliça'),
(18, 'Laranja', 'Fruta'),
(19, 'Maçã', 'Fruta'),
(20, 'Uva', 'Fruta'),
(21, 'Pera', 'Fruta'),
(22, 'Banana', 'Fruta'),
(23, 'Kiwi', 'Fruta'),
(24, 'Coco', 'Fruta'),
(25, 'Cebola', 'Hortaliça'),
(26, 'Alho', 'Hortaliça'),
(27, 'Pepino', 'Hortaliça'),
(28, 'Abobrinha', 'Hortaliça'),
(29, 'Rúcula', 'Hortaliça'),
(30, 'Espinafre', 'Hortaliça'),
(31, 'Brócolis', 'Hortaliça'),
(32, 'República', 'Hortaliça'),
(33, 'Couve', 'Hortaliça'),
(34, 'Salsa', 'Hortaliça'),
(35, 'Cebolinha', 'Hortaliça'),
(36, 'Dill', 'Hortaliça'),
(37, 'Hortelã', 'Hortaliça'),
(38, 'Lima', 'Fruta'),
(39, 'Limão', 'Fruta'),
(40, 'Groselha', 'Fruta'),
(41, 'Framboesa', 'Fruta'),
(42, 'Amora', 'Fruta'),
(43, 'Melancia', 'Fruta'),
(44, 'Melão', 'Fruta'),
(45, 'Pêssego', 'Fruta'),
(46, 'Ameixa', 'Fruta'),
(47, 'Nectarina', 'Fruta'),
(48, 'Cabeludo', 'Fruta'),
(49, 'Mamão', 'Fruta'),
(50, 'Blueberry', 'Fruta');

INSERT INTO Insumos (id, nome, tipo) VALUES
(1, 'Fertilizante Raid', 'Fertilizante'),
(2, 'Defensivo Black', 'Defensivo'),
(3, 'Semente Secreta', 'Semente'),
(4, 'Adubo Ultra Mega Poderoso', 'Fertilizante'),
(5, 'Herbicida Protex', 'Herbicida'),
(6, 'Inseticida Mata tudo', 'Inseticida'),
(7, 'Fungicida Fungão', 'Fungicida'),
(8, 'Semente de Soja', 'Semente'),
(9, 'Semente de Milho', 'Semente'),
(10, 'Semente de Café', 'Semente'),
(11, 'Semente de Trigo', 'Semente'),
(12, 'Semente de Arroz', 'Semente'),
(13, 'Semente de Feijão', 'Semente'),
(14, 'Semente de Cana', 'Semente'),
(15, 'Semente de Tomate', 'Semente'),
(16, 'Semente de Cenoura', 'Semente'),
(17, 'Semente de Alface', 'Semente'),
(18, 'Semente de Batata', 'Semente'),
(19, 'Semente de Mandioca', 'Semente'),
(20, 'Semente de Batata-doce', 'Semente'),
(21, 'Fertilizante Orgânico', 'Fertilizante'),
(22, 'Adubo Mineral', 'Adubo'),
(23, 'Inseticida Natural', 'Inseticida'),
(24, 'Fungicida Biológico', 'Fungicida'),
(25, 'Herbicida Seletivo', 'Herbicida'),
(26, 'Adubo NPK', 'Adubo'),
(27, 'Adubo Verde', 'Adubo'),
(28, 'Fertilizante Químico', 'Fertilizante'),
(29, 'Defensivo Naturais', 'Defensivo'),
(30, 'Defensivo Químico', 'Defensivo'),
(31, 'Mistura de Adubos', 'Adubo'),
(32, 'Mistura de Sementes', 'Semente'),
(33, 'Adubo Foliar', 'Adubo'),
(34, 'Mistura para Solo', 'Fertilizante'),
(35, 'Preparados de Frutas', 'Herbicida'),
(36, 'Fertilizante de Ação Rápida', 'Fertilizante'),
(37, 'Mistura de Fertilizantes', 'Fertilizante'),
(38, 'Fertilizante de Liberação Controlada', 'Fertilizante'),
(39, 'Adubo para Frutas', 'Adubo'),
(40, 'Adubo para Hortaliças', 'Adubo'),
(41, 'Adubo para Flores', 'Adubo'),
(42, 'Fertilizante com Microrganismos', 'Fertilizante'),
(43, 'Mistura para Cultivo', 'Fertilizante'),
(44, 'Sementes Transgênicas', 'Semente'),
(45, 'Fertilizantes Foliares', 'Fertilizante'),
(46, 'Mistura para Sementes', 'Semente'),
(47, 'Defensivos para Soja', 'Defensivo'),
(48, 'Defensivos para Milho', 'Defensivo'),
(49, 'Defensivos para Café', 'Defensivo'),
(50, 'Mistura para Adubação', 'Adubo');

INSERT INTO Fornecedores (id, nome, telefone, endereco) VALUES
(1, 'Fertilizantes do Brasil', '11 2134-5678', 'Avenida do Solo Fértil, 1253'),
(2, 'Sementes Riqueza Verde', '44 5987-6543', 'Rua Verdejante, 3482'),
(3, 'Máquinas Agrícolas AgriTech', '77 4892-3456', 'Avenida da Inovação Agrícola, 9021'),
(4, 'Distribuidora de Insumos Agropecuários', '88 3567-8921', 'Rua do Progresso Rural, 5817'),
(5, 'Agropecuária Fazenda São Jorge', '99 1234-5678', 'Rodovia do Campo Limpo, Km 8.3'),
(6, 'Vendas de Equipamentos de Irrigação', '22 4321-8765', 'Rua das Águas, 2140'),
(7, 'Fábrica de Rações NutriAgro', '33 5678-1234', 'Avenida da Nutrição Animal, 6574'),
(8, 'Agropecuária Leite Bom', '44 8765-4321', 'Rua do Leite Fresco, 7910'),
(9, 'Consultoria Agrícola TerraFértil', '55 6543-2109', 'Rua do Solo Saudável, 3674'),
(10, 'Casa do Pecuarista', '66 3210-9876', 'Avenida do Criador, 8119'),
(11, 'Fornecedora de Grãos do Sul', '77 8901-2345', 'Rua da Colheita Rápida, 4568'),
(12, 'Hortifrúti Verde Vida', '88 7890-1234', 'Rua das Frutas Naturais, 2306'),
(13, 'Agropecuária Rota do Campo', '99 2345-6789', 'Rodovia da Vida Rural, Km 12.9'),
(14, 'Distribuidora de Adubos Fertilis', '00 1122-3344', 'Rua do Adubo Verde, 8453'),
(15, 'Revenda de Insumos Fitossanitários', '11 2233-4455', 'Avenida dos Cuidados, 7194'),
(16, 'Empreendimentos Agropecuários Santos', '22 3344-5566', 'Rua do Empreendedor Rural, 1382'),
(17, 'Fábrica de Biofertilizantes EcoAgro', '33 4455-6677', 'Rua da Sustentabilidade Verde, 4821'),
(18, 'Casa do Agricultor', '44 5566-7788', 'Rua do Campo Florescente, 5964'),
(19, 'Fornecedora de Produtos Orgânicos', '55 6677-8899', 'Avenida da Agricultura Limpa, 1035'),
(20, 'Comércio de Sementes Especiais', '66 7788-9900', 'Rua das Sementes Selecionadas, 2649'),
(21, 'Fábrica de Maquinários Agrícolas', '77 8899-0011', 'Rua da Tecnologia Agrícola, 3027'),
(22, 'Revenda de Equipamentos de Colheita', '88 9900-1122', 'Rua da Colheita Eficiente, 4563'),
(23, 'Consultoria em Irrigação', '99 0011-2233', 'Rua da Água Perfeita, 1587'),
(24, 'Distribuição de Produtos Veterinários', '00 1122-3344', 'Rua do Cuidado Animal, 4078'),
(25, 'Cooperativa Agrícola União', '11 2233-4455', 'Avenida da Cooperação Agrícola, 7891'),
(26, 'Armazém de Grãos do Centro-Oeste', '22 3344-5566', 'Rua do Armazém da Terra, 6204'),
(27, 'Casa de Ferragens Agrícolas', '33 4455-6677', 'Rua das Ferragens do Campo, 3845'),
(28, 'Fábrica de Alimentos para Animais', '44 5566-7788', 'Avenida do Bem-Estar Animal, 2493'),
(29, 'Mercado de Produtos Agropecuários', '55 6677-8899', 'Rua do Comércio Rural, 7832'),
(30, 'Agência de Assistência Técnica Rural', '66 7788-9900', 'Rua da Ajuda ao Produtor, 8420'),
(31, 'Transportadora Agro Logística', '77 8899-0011', 'Avenida da Logística Verde, 5210'),
(32, 'Agroindústria Sabor do Campo', '88 9900-1122', 'Rua do Sabor Natural, 7386'),
(33, 'Revenda de Insumos para Fruticultura', '99 0011-2233', 'Rua da Fruticultura Saudável, 1567'),
(34, 'Fornecedora de Produtos para Horticultura', '00 1122-3344', 'Rua da Horta Produtiva, 9634'),
(35, 'Distribuidora de Aditivos Alimentares', '11 2233-4455', 'Avenida dos Aditivos Naturais, 8572'),
(36, 'Fábrica de Equipamentos para Pecuária', '22 3344-5566', 'Rua do Equipamento Pecuário, 1230'),
(37, 'Consultoria em Agricultura Sustentável', '33 4455-6677', 'Rua da Sustentabilidade Prática, 4079'),
(38, 'Fornecedora de Floricultura', '44 5566-7788', 'Rua das Flores do Campo, 2201'),
(39, 'Venda de Mudas e Sementes', '55 6677-8899', 'Rua das Mudas e Sementes, 8114'),
(40, 'Indústria de Produtos de Limpeza Agrícola', '66 7788-9900', 'Avenida da Limpeza Verde, 9093'),
(41, 'Cooperativa de Produtores Rurais', '77 8899-0011', 'Rua da Cooperação Rural, 6742'),
(42, 'Revenda de Equipamentos para Irrigação', '88 9900-1122', 'Rua da Irrigação Inteligente, 4851'),
(43, 'Distribuição de Produtos de Controle de Pragas', '99 0011-2233', 'Avenida do Controle Verde, 7538'),
(44, 'Fábrica de Insumos Orgânicos', '00 1122-3344', 'Rua dos Insumos Naturais, 1580'),
(45, 'Armazém de Ferragens do Campo', '11 2233-4455', 'Rua das Ferragens de Campo, 6723'),
(46, 'Consultoria em Pecuária Leiteira', '22 3344-5566', 'Avenida da Pecuária Leiteira, 3495'),
(47, 'Distribuidora de Sementes Certificadas', '33 4455-6677', 'Rua das Sementes Premium, 8510'),
(48, 'Loja de Produtos de Jardinagem', '44 5566-7788', 'Rua do Jardim Encantado, 4396'),
(49, 'Venda de Insumos para Culturas Diversas', '55 6677-8899', 'Rua da Diversidade de Culturas, 9624'),
(50, 'Serviços de Manutenção de Máquinas Agrícolas', '66 7788-9900', 'Avenida da Manutenção Agrícola, 3085');


INSERT INTO Funcionarios (id, nome, cargo, salario) VALUES
(1, 'Pedro Guilherme', 'Engenheiro Agrônomo', 5000),
(2, 'Nathan Tominaga', 'Técnico Agrícola', 3500),
(3, 'Victor Vieira', 'Gestor de Propriedade Rural', 6000),
(4, 'Roberto Furini', 'Assistente Técnico', 4000),
(5, 'Lucas Gabriel', 'Agricultor', 3000),
(6, 'Lucas Goex', 'Pesquisador Agronômico', 7000),
(7, 'Willian Rodrigues', 'Consultor Agronômico', 5500),
(8, 'Ana Clara Mendes', 'Zootecnista', 4500),
(9, 'Bruno Santos', 'Engenheiro Florestal', 5200),
(10, 'Carla Lima', 'Especialista em Irrigação', 4800),
(11, 'Diego Figueiredo', 'Técnico em Horticultura', 3700),
(12, 'Eduarda Ribeiro', 'Agrônoma de Pesquisa', 6100),
(13, 'Felipe Alves', 'Supervisor de Lavras', 5900),
(14, 'Gabriela Nunes', 'Técnico de Fertilização', 3800),
(15, 'Henrique Teixeira', 'Engenheiro Agrônomo de Projetos', 5400),
(16, 'Isabela Silva', 'Coordenadora de Produção', 5700),
(17, 'João Pedro Almeida', 'Técnico em Agropecuária', 3600),
(18, 'Karen Oliveira', 'Gestora Ambiental', 5600),
(19, 'Leonardo Ferreira', 'Consultor em Sustentabilidade', 6000),
(20, 'Mariana Costa', 'Pesquisadora de Culturas', 6400),
(21, 'Nicolas Souza', 'Especialista em Controle de Pragas', 4200),
(22, 'Otávio Batista', 'Técnico de Irrigação', 3900),
(23, 'Paula Martins', 'Engenheira de Alimentos', 5100),
(24, 'Ricardo Carvalho', 'Gestor de Projetos Agrários', 5300),
(25, 'Sabrina Moreira', 'Assistente de Pesquisa', 3400),
(26, 'Thiago Lopes', 'Engenheiro de Segurança do Trabalho', 5500),
(27, 'Valéria Sousa', 'Zootecnista de Produção', 4600),
(28, 'Adriano Correia', 'Técnico em Biotecnologia', 5800),
(29, 'Bianca Araújo', 'Gestora de Agroindústria', 6200),
(30, 'Caio Pereira', 'Analista de Sistemas Agrícolas', 4900),
(31, 'Daniel Fonseca', 'Engenheiro de Culturas', 5700),
(32, 'Elisa Rocha', 'Técnica em Análise de Solo', 4000),
(33, 'Fábio Castro', 'Consultor de Marketing Agrícola', 4300),
(34, 'Giovanna Lima', 'Técnica em Sementes', 3800),
(35, 'Heitor Ribeiro', 'Analista de Qualidade', 4600),
(36, 'Ingrid Duarte', 'Técnica de Agricultura de Precisão', 4200),
(37, 'José Augusto', 'Engenheiro de Irrigação', 5000),
(38, 'Larissa Carvalho', 'Assistente de Culturas', 3400),
(39, 'Mateus Franco', 'Técnico de Produção', 4500),
(40, 'Nathalia Correia', 'Especialista em Solo', 4900),
(41, 'Pedro Henrique', 'Coordenador de Pesquisa', 6000),
(42, 'Rafael Silva', 'Analista Ambiental', 4700),
(43, 'Sofia Melo', 'Engenheira Agrônoma Júnior', 3900),
(44, 'Tatiana Freitas', 'Consultora de Projetos Agrários', 5200),
(45, 'Ursula Macedo', 'Pesquisadora em Melhoramento Genético', 6500),
(46, 'Vinícius Oliveira', 'Gestor de Irrigação', 5300),
(47, 'Wagner Souza', 'Técnico em Culturas Anuais', 3700),
(48, 'Xavier Almeida', 'Coordenador de Desenvolvimento', 5600),
(49, 'Yasmin Gonçalves', 'Analista de Pesquisa', 4500),
(50, 'Zélia Farias', 'Engenheira de Bioprocessos', 5800);


INSERT INTO Vendas (id, data_vendas, valor_total, id_produtor, id_cultura, quantidade) VALUES
(1, '2024-01-15', 15000.00, 1, 1, 100),  
(2, '2024-01-20', 8000.00, 1, 2, 60), 
(3, '2024-01-25', 12000.00, 2, 3, 80),
(4, '2024-01-30', 9000.00, 2, 4, 70),
(5, '2024-02-05', 11000.00, 3, 5, 90),
(6, '2024-02-10', 6000.00, 3, 6, 50),
(7, '2024-02-15', 18000.00, 4, 7, 120),
(8, '2024-02-20', 5000.00, 4, 8, 40),
(9, '2024-02-25', 7000.00, 5, 9, 30),
(10, '2024-03-01', 4500.00, 5, 10, 25),
(11, '2024-03-05', 4000.00, 6, 11, 20),
(12, '2024-03-10', 3500.00, 6, 12, 15),
(13, '2024-03-15', 3800.00, 7, 13, 35),
(14, '2024-03-20', 9000.00, 7, 14, 55),
(15, '2024-03-25', 6200.00, 8, 15, 45),
(16, '2024-03-30', 5700.00, 8, 16, 30),
(17, '2024-04-05', 4600.00, 9, 17, 25),
(18, '2024-04-10', 11000.00, 9, 18, 60),
(19, '2024-04-15', 8000.00, 10, 19, 70),
(20, '2024-04-20', 15000.00, 10, 20, 100),
(21, '2024-04-25', 9000.00, 11, 21, 90),
(22, '2024-04-30', 12000.00, 11, 22, 110),
(23, '2024-05-05', 8500.00, 12, 23, 80),
(24, '2024-05-10', 4000.00, 12, 24, 45),
(25, '2024-05-15', 3000.00, 13, 25, 20),
(26, '2024-05-20', 3500.00, 13, 26, 30),
(27, '2024-05-25', 6000.00, 14, 27, 60),
(28, '2024-06-01', 4500.00, 14, 28, 40),
(29, '2024-06-05', 5500.00, 15, 29, 50),
(30, '2024-06-10', 7000.00, 15, 30, 70),
(31, '2024-06-15', 8000.00, 16, 31, 90),
(32, '2024-06-20', 9000.00, 16, 32, 110),
(33, '2024-06-25', 7200.00, 17, 33, 80),
(34, '2024-07-01', 6800.00, 17, 34, 75), 
(35, '2024-07-05', 7400.00, 18, 35, 65),
(36, '2024-07-10', 3900.00, 18, 36, 55),
(37, '2024-07-15', 8000.00, 19, 37, 100),
(38, '2024-07-20', 11000.00, 19, 38, 90),
(39, '2024-07-25', 6500.00, 20, 39, 40),
(40, '2024-08-01', 7000.00, 20, 40, 60),
(41, '2024-08-05', 9000.00, 21, 41, 80),
(42, '2024-08-10', 8500.00, 21, 42, 70),
(43, '2024-08-15', 10000.00, 22, 43, 55),
(44, '2024-08-20', 7500.00, 22, 44, 45),
(45, '2024-08-25', 9500.00, 23, 45, 85),
(46, '2024-09-01', 5400.00, 23, 46, 65),
(47, '2024-09-05', 6100.00, 24, 47, 55),
(48, '2024-09-10', 3700.00, 24, 48, 50),
(49, '2024-09-15', 4300.00, 25, 49, 30),
(50, '2024-09-20', 5800.00, 25, 50, 40);


INSERT INTO Estoque (id, id_insumo, data_estoque, quantidade) VALUES
(1, 1, '2024-01-01', 50),
(2, 2, '2024-01-02', 20),
(3, 3, '2024-01-03', 30),
(4, 4, '2024-01-04', 40),
(5, 5, '2024-01-05', 50),
(6, 6, '2024-01-06', 60),
(7, 7, '2024-01-07', 70),
(8, 8, '2024-01-08', 80),
(9, 9, '2024-01-09', 90),
(10, 10, '2024-01-10', 100),
(11, 11, '2024-01-11', 110),
(12, 12, '2024-01-12', 120),
(13, 13, '2024-01-13', 130),
(14, 14, '2024-01-14', 140),
(15, 15, '2024-01-15', 150),
(16, 16, '2024-01-16', 160),
(17, 17, '2024-01-17', 170),
(18, 18, '2024-01-18', 180),
(19, 19, '2024-01-19', 190),
(20, 20, '2024-01-20', 200),
(21, 21, '2024-01-21', 210),
(22, 22, '2024-01-22', 220),
(23, 23, '2024-01-23', 230),
(24, 24, '2024-01-24', 240),
(25, 25, '2024-01-25', 250),
(26, 26, '2024-01-26', 260),
(27, 27, '2024-01-27', 270),
(28, 28, '2024-01-28', 280),
(29, 29, '2024-01-29', 290),
(30, 30, '2024-01-30', 300),
(31, 31, '2024-01-31', 310),
(32, 32, '2024-02-01', 320),
(33, 33, '2024-02-02', 330),
(34, 34, '2024-02-03', 340),
(35, 35, '2024-02-04', 350),
(36, 36, '2024-02-05', 360),
(37, 37, '2024-02-06', 370),
(38, 38, '2024-02-07', 380),
(39, 39, '2024-02-08', 390),
(40, 40, '2024-02-09', 400),
(41, 41, '2024-02-10', 410),
(42, 42, '2024-02-11', 420),
(43, 43, '2024-02-12', 430),
(44, 44, '2024-02-13', 440),
(45, 45, '2024-02-14', 450),
(46, 46, '2024-02-15', 460),
(47, 47, '2024-02-16', 470),
(48, 48, '2024-02-17', 480),
(49, 49, '2024-02-18', 490),
(50, 50, '2024-02-19', 500);


INSERT INTO RelatoriosProducao (id, quantidade_colhida, data_relatorio, observacoes) VALUES
(1, 1000, '2024-01-01', 'Colheita boa.'),
(2, 1500, '2024-01-02', 'Problemas com pragas.'),
(3, 800, '2024-01-03', 'Colheita satisfatória.'),
(4, 950, '2024-01-04', 'Colheita excelente.'),
(5, 1200, '2024-01-05', 'Colheita regular.'),
(6, 1100, '2024-01-06', 'Colheita boa.'),
(7, 1300, '2024-01-07', 'Problemas com chuvas.'),
(8, 900, '2024-01-08', 'Colheita satisfatória.'),
(9, 1400, '2024-01-09', 'Colheita excelente.'),
(10, 1600, '2024-01-10', 'Colheita boa.'),
(11, 1750, '2024-01-11', 'Colheita regular.'),
(12, 1450, '2024-01-12', 'Problemas com pragas.'),
(13, 1350, '2024-01-13', 'Colheita boa.'),
(14, 1250, '2024-01-14', 'Colheita excelente.'),
(15, 1550, '2024-01-15', 'Colheita regular.'),
(16, 1650, '2024-01-16', 'Colheita boa.'),
(17, 1700, '2024-01-17', 'Problemas com chuvas.'),
(18, 1800, '2024-01-18', 'Colheita satisfatória.'),
(19, 1900, '2024-01-19', 'Colheita excelente.'),
(20, 2000, '2024-01-20', 'Colheita boa.'),
(21, 2100, '2024-01-21', 'Problemas com pragas.'),
(22, 2200, '2024-01-22', 'Colheita satisfatória.'),
(23, 2300, '2024-01-23', 'Colheita regular.'),
(24, 2400, '2024-01-24', 'Colheita boa.'),
(25, 2500, '2024-01-25', 'Colheita excelente.'),
(26, 2600, '2024-01-26', 'Problemas com chuvas.'),
(27, 2700, '2024-01-27', 'Colheita satisfatória.'),
(28, 2800, '2024-01-28', 'Colheita boa.'),
(29, 2900, '2024-01-29', 'Colheita regular.'),
(30, 3000, '2024-01-30', 'Colheita excelente.'),
(31, 3100, '2024-01-31', 'Problemas com pragas.'),
(32, 3200, '2024-02-01', 'Colheita boa.'),
(33, 3300, '2024-02-02', 'Colheita satisfatória.'),
(34, 3400, '2024-02-03', 'Colheita regular.'),
(35, 3500, '2024-02-04', 'Colheita excelente.'),
(36, 3600, '2024-02-05', 'Problemas com chuvas.'),
(37, 3700, '2024-02-06', 'Colheita boa.'),
(38, 3800, '2024-02-07', 'Colheita satisfatória.'),
(39, 3900, '2024-02-08', 'Colheita regular.'),
(40, 4000, '2024-02-09', 'Colheita excelente.'),
(41, 4100, '2024-02-10', 'Problemas com pragas.'),
(42, 4200, '2024-02-11', 'Colheita boa.'),
(43, 4300, '2024-02-12', 'Colheita satisfatória.'),
(44, 4400, '2024-02-13', 'Colheita regular.'),
(45, 4500, '2024-02-14', 'Colheita excelente.'),
(46, 4600, '2024-02-15', 'Problemas com chuvas.'),
(47, 4700, '2024-02-16', 'Colheita boa.'),
(48, 4800, '2024-02-17', 'Colheita satisfatória.'),
(49, 4900, '2024-02-18', 'Colheita regular.'),
(50, 5000, '2024-02-19', 'Colheita excelente.');

#  Movimentação de Estoque

SELECT e.data_estoque, i.nome AS Insumo, e.quantidade
FROM Estoque e
JOIN Insumos i ON e.id_insumo = i.id
ORDER BY e.data_estoque DESC;

#  Vendas por Período

SELECT v.data_vendas, p.nome AS Produtor, c.nome AS Cultura, v.quantidade, v.valor_total
FROM Vendas v
JOIN Produtores p ON v.id_produtor = p.id
JOIN Culturas c ON v.id_cultura = c.id
WHERE v.data_vendas BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY v.data_vendas;

#  Total de Vendas por Produtor

SELECT p.nome AS Produtor, SUM(v.valor_total) AS Total_Vendas
FROM Vendas v
JOIN Produtores p ON v.id_produtor = p.id
GROUP BY p.nome
ORDER BY Total_Vendas DESC;

#  Estoque Atual de Insumos

SELECT 
    I.nome AS insumo,
    I.tipo AS tipo,
    E.quantidade AS quantidade
FROM 
    Estoque E
JOIN 
    Insumos I ON E.id_insumo = I.id;


#  Vendas por Cultura

SELECT c.nome AS Cultura, SUM(v.quantidade) AS Total_Vendido, SUM(v.valor_total) AS Total_Vendas
FROM Vendas v
JOIN Culturas c ON v.id_cultura = c.id
GROUP BY c.nome
ORDER BY Total_Vendas DESC;

