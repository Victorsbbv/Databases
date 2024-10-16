CREATE DATABASE empresa;
USE empresa;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    salario FLOAT(10, 2)
);

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT
);

INSERT INTO funcionarios (nome, salario) VALUES
('Victor', 3500.00),
('Pedro Guilherme', 2800.00),
('Nathan', 4200.00),
('Pedro William', 3200.00),
('Victor Vieira', 5000.00),
('Thiago Vieira', 3600.00),
('Agatha Menezes', 3100.00),
('Nicolas de Souza', 2700.00),
('Roberto Furini', 2900.00),
('Lucas Gabriel', 2600.00),
('Nathan Tominaga', 3300.00),
('Leo Klutz', 4000.00),
('Altair Alahad', 4700.00),
('Ezio Auditore', 3500.00),
('Haytham Kenway', 3800.00),
('Connor Kenway', 3400.00),
('Aveline Grandpe', 3700.00),
('Edward Kenway', 4300.00),
('Adewale', 2900.00),
('Shay Kormac', 3200.00),
('Arno Dorian', 3100.00),
('Evie Fryie', 3000.00),
('Jacob Fryie', 2800.00),
('Bayek de Siwa', 4600.00),
('Aya de Siwa', 3900.00),
('Kassandra Mysthos', 4400.00),
('Eivor Wolfkissed', 4200.00),
('Basim Alahad', 3500.00),
('Naoe Kimura', 3200.00),
('Dave Gahan', 4700.00),
('Martin Gore', 4300.00),
('Alan Wilder', 3500.00),
('Vince Clarke', 2800.00),
('Andy Bell', 2700.00),
('Bono', 5000.00),
('Elvis Presley', 3900.00),
('Andrew Fletcher', 3600.00),
('Lucas Silva', 3100.00),
('Bruno Oliveira', 3400.00),
('João Cardoso', 3000.00),
('Mateus Andrade', 3700.00),
('Daniel Rodrigues', 2800.00),
('Fernanda Costa', 3300.00),
('Juliana Barros', 3500.00),
('Patricia Souza', 3100.00),
('Larissa Carvalho', 4000.00),
('Claudia Ribeiro', 3900.00),
('Ana Clara Santos', 3000.00),
('Paula Almeida', 3400.00);

INSERT INTO departamentos (nome) VALUES
('Recursos Humanos'),
('TI'),
('Marketing'),
('Financeiro'),
('Vendas');

# Todos os funcionarios
SELECT * FROM funcionarios;

# Todos os departamentos
SELECT * FROM departamentos;

# Salários dos funcionários cujo salário é maior que 3000
SELECT nome, salario FROM funcionarios WHERE salario > 3000;

# Atualizar funcionario
UPDATE funcionarios SET salario = 3700 WHERE nome = 'Pedro Guilherme';

DELETE FROM funcionarios WHERE nome = 'Lucas Gabriel';

# Contar o número total de funcionários
SELECT COUNT(*) AS total_funcionarios FROM funcionarios;

# Salário médio dos funcionários
SELECT AVG(salario) AS salario_medio FROM funcionarios;

# Adicionar uma coluna de departamento_id à tabela funcionarios FOREIGN KEY
ALTER TABLE funcionarios ADD departamento_id INT;

ALTER TABLE funcionarios ADD CONSTRAINT fk_departamento
FOREIGN KEY (departamento_id) REFERENCES departamentos(id);

# Atualizar a coluna departamento_id para alguns funcionários
UPDATE funcionarios SET departamento_id = 1 WHERE nome = 'Victor';
UPDATE funcionarios SET departamento_id = 2 WHERE nome = 'Pedro Guilherme';
UPDATE funcionarios SET departamento_id = 3 WHERE nome = 'Nathan';

-# Listar o nome do funcionário e o nome do departamento
SELECT f.nome AS funcionario, d.nome AS departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id;
