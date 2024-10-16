CREATE DATABASE mercadinho;
USE mercadinho;


CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    categoria TEXT,
    preco FLOAT(10, 2)
);

INSERT INTO produtos (nome, categoria, preco) VALUES
('Refrigerante Cola', 'Bebidas', 4.50),
('Requeijão', 'Alimentos', 6.30),
('Arroz', 'Alimentos', 10.00),
('Feijão', 'Alimentos', 7.50),
('Suco de Laranja', 'Bebidas', 3.80),
('Cerveja Lager', 'Bebidas', 5.90),
('Batata Frita', 'Alimentos', 8.00),
('Chocolate', 'Alimentos', 3.50),
('Mesa', 'Móveis', 3.50),
('Repolho', 'Alimentos', 2.20),
('Água Mineral', 'Bebidas', 1.50),
('Taco', 'Alimentos', 3.50),
('Armário', 'Móveis', 3.50),
('Escrivaninha', 'Móveis', 3.50),
('Leite Integral', 'Alimentos', 4.20),
('Pão de Forma', 'Alimentos', 5.00),
('Manteiga', 'Alimentos', 7.00),
('Café', 'Alimentos', 9.00),
('Açúcar', 'Alimentos', 3.50),
('Farinha de Trigo', 'Alimentos', 4.80),
('Macarrão Espaguete', 'Alimentos', 3.20),
('Sal', 'Alimentos', 1.50),
('Óleo de Soja', 'Alimentos', 8.00),
('Molho de Tomate', 'Alimentos', 2.70),
('Biscoito de Chocolate', 'Alimentos', 4.00),
('Cereal Matinal', 'Alimentos', 6.50),
('Queijo Mussarela', 'Alimentos', 14.00),
('Hambúrguer', 'Alimentos', 11.50),
('Maionese', 'Alimentos', 3.30),
('Iogurte Natural', 'Alimentos', 4.80),
('Azeite de Oliva', 'Alimentos', 15.90),
('Frango Congelado', 'Alimentos', 12.50),
('Linguiça', 'Alimentos', 10.00),
('Salsicha', 'Alimentos', 6.90),
('Shampoo', 'Higiene', 8.50),
('Sabonete', 'Higiene', 2.00),
('Papel Higiênico', 'Higiene', 12.00),
('Creme Dental', 'Higiene', 3.50),
('Desodorante', 'Higiene', 9.00),
('Detergente', 'Limpeza', 2.30),
('Sabão em Pó', 'Limpeza', 9.50),
('Amaciante', 'Limpeza', 7.00),
('Desinfetante', 'Limpeza', 4.20),
('Esponja de Aço', 'Limpeza', 1.90),
('Vassoura', 'Limpeza', 10.00),
('Rodo', 'Limpeza', 7.50),
('Pá de Lixo', 'Limpeza', 3.80),
('Panela', 'Utensílios', 25.00),
('Faqueiro', 'Utensílios', 40.00),
('Copo de Vidro', 'Utensílios', 6.00);


# Usando IN 
SELECT * FROM produtos 
WHERE categoria IN ('Alimentos', 'Bebidas');

# Usando LIKE

# Buscar produtos cujo nome começa com 'Re'
SELECT * FROM produtos 
WHERE nome LIKE 'Re%';

# Buscar produtos cujo nome contém a letra 'a'
SELECT * FROM produtos 
WHERE nome LIKE '%a%';

# Buscar produtos cujo nome tem exatamente 4 caracteres
SELECT * FROM produtos 
WHERE nome LIKE '____';

# Buscar produtos que são "Alimentos" e cujo nome contém 'a'
SELECT * FROM produtos 
WHERE categoria = 'Alimentos' AND nome LIKE '%a%';
