CREATE DATABASE empresa;
USE empresa;
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    data_admissao DATE
);
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100)
);
INSERT INTO funcionarios (nome, cargo, salario, data_admissao) VALUES
('Ana Silva', 'Gerente', 5000.00, '2022-01-15'),
('Carlos Souza', 'Analista', 3000.00, '2023-03-22'),
('Mariana Oliveira', 'Assistente', 2500.00, '2024-06-10');
INSERT INTO departamentos (nome, localizacao) VALUES
('Recursos Humanos', 'São Paulo'),
('Financeiro', 'Rio de Janeiro'),
('TI', 'Curitiba');
SELECT * FROM funcionarios;
SELECT * FROM departamentos;
SELECT nome, salario FROM funcionarios WHERE salario > 3000;
UPDATE funcionarios SET salario = 5500.00 WHERE nome = 'Ana Silva';
DELETE FROM funcionarios WHERE nome = 'Mariana Oliveira';
SELECT COUNT(*) AS total_funcionarios FROM funcionarios;
SELECT AVG(salario) AS salario_medio FROM funcionarios;
ALTER TABLE funcionarios
ADD COLUMN departamento_id INT,
ADD FOREIGN KEY (departamento_id) REFERENCES departamentos(id);
UPDATE funcionarios SET departamento_id = 1 WHERE nome = 'Ana Silva';
UPDATE funcionarios SET departamento_id = 2 WHERE nome = 'Carlos Souza';
SELECT f.nome AS nome_funcionario, d.nome AS nome_departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id;
