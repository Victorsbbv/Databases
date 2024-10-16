CREATE DATABASE Supermercado;
USE Supermercado;

CREATE TABLE Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria TEXT
);

CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto TEXT,
    preco FLOAT(10, 2) NOT NULL,
    id_categoria INT,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente TEXT
);

CREATE TABLE Fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_fornecedor TEXT
);

CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_venda DATE,
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Itens_Venda (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    id_produto INT,
    quantidade INT,
    CONSTRAINT fk_venda FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda),
    CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

INSERT INTO Categorias (nome_categoria) VALUES 
('Bebidas'), 
('Alimentos'), 
('Limpeza'), 
('Higiene Pessoal');

INSERT INTO Produtos (nome_produto, preco, id_categoria) VALUES
('Coca-Cola', 5.99, 1),
('Arroz', 22.50, 2),
('Sabão em Pó', 8.99, 3),
('Shampoo', 15.00, 4);

INSERT INTO Clientes (nome_cliente) VALUES 
('Maria Madalena'),
('Pedro Guilherme'),
('Ana de Aramas'),
('Pedro William'),
('Victor Vieira'),
('Thiago Vieira'),
('Agatha Menezes'),
('Nicolas de Souza'),
('Roberto Furini'),
('Lucas Gabriel'),
('Nathan Tominaga'),
('Leo Klutz'),
('Altair Alahad'),
('Ezio Auditore'),
('Haytham Kenway'),
('Connor Kenway'),
('Aveline Grandpe'),
('Edward Kenway'),
('Adewale'),
('Shay Kormac'),
('Arno Dorian'),
('Evie Fryie'),
('Jacob Fryie'),
('Bayek de Siwa'),
('Aya de Siwa'),
('Kassandra Mysthos'),
('Eivor Wolfkissed'),
('Basim Alahad'),
('Naoe Kimura'),
('Dave Gahan'),
('Martin Gore'),
('Alan Wilder'),
('Vince Clarke'),
('Andy Bell'),
('Bono'),
('Elvis Presley'),
('Andrew Fletcher'),
('Lucas Silva'),
('Bruno Oliveira'),
('João Cardoso'),
('Mateus Andrade'),
('Daniel Rodrigues'),
('Fernanda Costa'),
('Juliana Barros'),
('Patricia Souza'),
('Larissa Carvalho'),
('Claudia Ribeiro'),
('Ana Clara Santos'),
('Paula Almeida'),
('Rafael Moreira'),
('Tiago Lopes'),
('Carlos Ferreira'),
('Ricardo Teixeira'),
('Gabriela Lima'),
('Mariana Correia'),
('Beatriz Furtado'),
('Aline Macedo'),
('Felipe Albuquerque'),
('Amanda Martins'),
('Renato Sampaio'),
('Camila Assis'),
('Joana Prado'),
('André Gonçalves'),
('Vinicius Ramos'),
('Marcelo Araújo'),
('Rodrigo Machado'),
('Lucas Pereira'),
('Vitor Hugo'),
('Marcos Lima'),
('Leandro Silva'),
('Bruna Fernandes'),
('Isabela Melo'),
('Helena Tavares'),
('Samuel Freitas'),
('Pedro Monteiro'),
('Arthur Mendes'),
('Júlia Costa'),
('João Silva'),
('Carlos Eduardo'),
('Larissa Moura'),
('Beatriz Ramos'),
('Paulo Ricardo'),
('Vinícius Oliveira'),
('Raquel Borges'),
('Fernando Silva'),
('Luiz Gustavo'),
('Mariana Andrade'),
('Rafael Cardoso'),
('Felipe Santos'),
('Roberta Ferreira'),
('Letícia Soares'),
('Ana Beatriz'),
('Clara Costa'),
('Sophia Lima'),
('Miguel Souza'),
('Luana Santos'),
('Gustavo Henrique'),
('Matheus Ribeiro'),
('Victor Hugo'),
('Renata Oliveira'),
('Julio Cesar');

INSERT INTO Fornecedores (nome_fornecedor) VALUES 
('Fornecedor Aram'), 
('Fornecedor Summoners'), 
('Fornecedor TFT');

INSERT INTO Vendas (id_cliente, data_venda) VALUES
(1, '2024-10-01'), 
(2, '2024-10-02'), 
(3, '2024-10-03'); 

INSERT INTO Itens_Venda (id_venda, id_produto, quantidade) VALUES
(1, 1, 2),  
(1, 2, 1), 
(2, 3, 3), 
(2, 4, 1), 
(3, 1, 5),  
(3, 2, 2);


# Listar todos os produtos
SELECT * FROM Produtos;

# Listar todas as vendas com detalhes
SELECT V.id_venda, C.nome_cliente, V.data_venda 
FROM Vendas V 
JOIN Clientes C ON V.id_cliente = C.id_cliente;

# Listar itens de uma venda específica
SELECT IV.id_item, P.nome_produto, IV.quantidade
FROM Itens_Venda IV
JOIN Produtos P ON IV.id_produto = P.id_produto
WHERE IV.id_venda = 1;
