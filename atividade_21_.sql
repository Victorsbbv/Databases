CREATE DATABASE AçougueDB;
USE AçougueDB;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    preco FLOAT(10, 2) NOT NULL,
    categoria TEXT
);

CREATE TABLE Fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE NOT NULL,
    total_venda FLOAT(10, 2) DEFAULT 0.00
);

CREATE TABLE ItensVenda (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario FLOAT(10, 2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

CREATE TABLE Funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    cargo TEXT,
    salario FLOAT(10, 2)
);

INSERT INTO Clientes (nome, telefone, endereco) VALUES
('Pedro Guilherme', '41995432101', 'Av. Paulista, 1578'),
('Pedro Santos', '41995432102', 'Rua das Flores, 1245'),
('Ana de Armas', '41995432103', 'Rua Augusta, 678'),
('Lucas Gabriel', '41995432104', 'Rua Alameda Santos, 250'),
('Agatha Menezes', '41995432105', 'Av. Brigadeiro Faria Lima, 4321'),
('Carlos Souza', '41995432106', 'Rua dos Jacarandás, 789'),
('Fernanda Lima', '41995432107', 'Av. Rebouças, 1230'),
('Victor Vieira', '41995432108', 'Rua dos Ipês, 850'),
('Luana Rocha', '41995432109', 'Rua Borges de Medeiros, 1590'),
('Gustavo Martins', '41995432110', 'Av. Cidade Jardim, 1120'),
('Sofia Mendes', '41995432111', 'Rua Bela Cintra, 403'),
('Marcos Lima', '41995432112', 'Rua Pedroso Alvarenga, 980'),
('Nathan Tominaga', '41995432113', 'Rua Oscar Freire, 1420'),
('Felipe Ribeiro', '41995432114', 'Av. Angélica, 560'),
('Bianca Gonçalves', '41995432115', 'Rua Maranhão, 210'),
('Thiago Vieira', '41995432116', 'Rua Vergueiro, 3021'),
('Raquel Barros', '41995432117', 'Rua Domingos de Morais, 1678'),
('Diego Tavares', '41995432118', 'Rua Barão de Itapetininga, 580'),
('Camila Dias', '41995432119', 'Av. Pacaembu, 3120'),
('Vitor Hugo', '41995432120', 'Av. Lins de Vasconcelos, 1930'),
('Aline Martins', '41995432121', 'Rua 13 de Maio, 2490'),
('Mariana Costa', '41995432122', 'Rua Abílio Soares, 780'),
('Danilo Silva', '41995432123', 'Av. Pompeia, 1409'),
('Tatiane Almeida', '41995432124', 'Rua da Consolação, 870'),
('Ronaldo Santos', '41995432125', 'Rua Guaianases, 452'),
('Patrícia Sousa', '41995432126', 'Rua Haddock Lobo, 570'),
('Fabio Lima', '41995432127', 'Rua Amaral Gurgel, 200'),
('Nicole Fernandes', '41995432128', 'Rua Alvarenga, 1290'),
('Isabelly Gomes', '41995432129', 'Rua João Moura, 980'),
('Samuel Ferreira', '41995432130', 'Rua do Arouche, 115'),
('Eduardo Martins', '41995432131', 'Rua General Jardim, 987'),
('Cristina Rocha', '41995432132', 'Rua Caetano Pinto, 342'),
('Gustavo Almeida', '41995432133', 'Rua Cardoso de Almeida, 769'),
('Mariana Nunes', '41995432134', 'Av. Liberdade, 560'),
('Tiago Carvalho', '41995432135', 'Rua Riachuelo, 112'),
('Bruno Araújo', '41995432136', 'Rua Clélia, 432'),
('Jéssica Lima', '41995432137', 'Rua Tito, 298'),
('Roberto Pereira', '41995432138', 'Av. Santa Catarina, 1345'),
('Eduarda Barros', '41995432139', 'Rua Ministro Rocha Azevedo, 1012'),
('Leonardo Dias', '41995432140', 'Rua Heitor Penteado, 234'),
('Gabriela Martins', '41995432141', 'Rua Coriolano, 678'),
('Vinícius Silva', '41995432142', 'Rua Cardeal Arcoverde, 123'),
('Sara Santos', '41995432143', 'Rua Dr. Arnaldo, 345'),
('Marcelo Lima', '41995432144', 'Av. Paulista, 2200'),
('André Gomes', '41995432145', 'Rua Turiassu, 670'),
('Isadora Almeida', '41995432146', 'Rua Clodomiro Amazonas, 432'),
('Lucas Ferreira', '41995432147', 'Rua dos Três Irmãos, 178'),
('Jessica Lima', '41995432148', 'Rua Dona Veridiana, 401'),
('Antonio Mendes', '41995432149', 'Rua Apinajés, 345'),
('Adewale', '41995432150', 'Av. Ipiranga, 1567');


INSERT INTO Produtos (nome, preco, categoria) VALUES
('Picanha', 49.90, 'Carnes'),
('Alcatra', 39.90, 'Carnes'),
('Fraldinha', 34.90, 'Carnes'),
('Coxão Duro', 29.90, 'Carnes'),
('Filé Mignon', 69.90, 'Carnes'),
('Costela', 39.90, 'Carnes'),
('Linguiça', 22.90, 'Carnes'),
('Peito de Frango', 24.90, 'Carnes'),
('Carne Moída', 27.90, 'Carnes'),
('Bife de Contra Filé', 39.90, 'Carnes');

INSERT INTO Fornecedores (nome, telefone, endereco) VALUES
('Fornecedor Bem Bom', '41999330051', 'Rua Augusto, 287'),
('Fornecedor Summoners', '41999990052', 'Rua Demacia, 199'),
('Fornecedor Rift', '41999990053', 'Rua Howling, 298'),
('Fornecedor ARAM', '41999990054', 'Rua Abyss, 381'),
('Fornecedor Coração', '41999990055', 'Rua Heart, 101');

INSERT INTO Funcionarios (nome, cargo, salario) VALUES
('Roberto Silva', 'Gerente', 2000.00),
('Ana Paula', 'Atendente', 1500.00),
('Marcos Souza', 'Mecânico', 1600.00),
('Juliana Lima', 'Atendente', 1500.00),
('Ricardo Almeida', 'Caixa', 1400.00),
('Fernanda Costa', 'Vendedor', 1700.00),
('Lucas Ferreira', 'Auxiliar', 1300.00),
('Paula Mendes', 'Gerente', 2000.00),
('Bruno Martins', 'Atendente', 1500.00),
('Tatiane Ribeiro', 'Caixa', 1400.00),
('Diego Oliveira', 'Vendedor', 1700.00),
('Mariana Nunes', 'Auxiliar', 1300.00),
('Fábio Santos', 'Gerente', 2000.00),
('Renata Lima', 'Atendente', 1500.00),
('Gustavo Almeida', 'Mecânico', 1600.00),
('Isabela Tavares', 'Atendente', 1500.00),
('Thiago Gomes', 'Caixa', 1400.00),
('Larissa Sousa', 'Vendedor', 1700.00),
('Samuel Lima', 'Auxiliar', 1300.00),
('Claudia Oliveira', 'Gerente', 2000.00),
('Felipe Nascimento', 'Atendente', 1500.00);

INSERT INTO Vendas (data_venda, total_venda) VALUES
('2024-10-01', 510.00),
('2024-10-05', 480.00),
('2024-10-10', 590.00),
('2024-10-15', 620.00),
('2024-10-20', 750.00),
('2024-10-21', 800.00),
('2024-10-22', 520.00),
('2024-10-25', 410.00),
('2024-10-30', 300.00),
('2024-10-31', 400.00);

INSERT INTO ItensVenda (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 5, 49.90),
(1, 2, 3, 39.90),
(2, 3, 2, 34.90),
(2, 4, 1, 29.90),
(3, 5, 2, 69.90),
(3, 6, 3, 39.90),
(4, 7, 4, 22.90),
(4, 8, 2, 24.90),
(5, 9, 3, 27.90),
(5, 10, 1, 39.90),
(6, 1, 2, 49.90),
(6, 2, 5, 39.90),
(7, 3, 4, 34.90),
(7, 4, 1, 29.90),
(8, 5, 2, 69.90),
(8, 6, 3, 39.90),
(9, 7, 5, 22.90),
(9, 8, 2, 24.90),
(10, 9, 1, 27.90),
(10, 10, 1, 39.90);


SELECT * FROM Clientes;

SELECT * FROM Produtos;

SELECT * FROM Fornecedores;

SELECT v.*, SUM(iv.quantidade * iv.preco_unitario) AS total_venda
FROM Vendas v
JOIN ItensVenda iv ON v.id_venda = iv.id_venda
GROUP BY v.id_venda;

# Venda específica
SELECT iv.*, p.nome AS nome_produto
FROM ItensVenda iv
JOIN Produtos p ON iv.id_produto = p.id_produto
WHERE iv.id_venda = 1;

SELECT * FROM Funcionarios;


UPDATE Vendas v
SET total_venda = (
    SELECT SUM(iv.quantidade * iv.preco_unitario)
    FROM ItensVenda iv
    WHERE iv.id_venda = v.id_venda
);
