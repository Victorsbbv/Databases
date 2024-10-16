CREATE DATABASE oficina_motos;
USE oficina_motos;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE motos (
    id_moto INT AUTO_INCREMENT PRIMARY KEY,
    modelo TEXT,
    ano INT NOT NULL,
    placa VARCHAR(10) UNIQUE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT,
    preco FLOAT(10, 2) NOT NULL
);

CREATE TABLE mecanicos (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    especialidade TEXT
);

CREATE TABLE agendamentos (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    data_agendamento DATE NOT NULL,
    id_cliente INT,
    id_moto INT,
    id_servico INT,
    id_mecanico INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_moto) REFERENCES motos(id_moto),
    FOREIGN KEY (id_servico) REFERENCES servicos(id_servico),
    FOREIGN KEY (id_mecanico) REFERENCES mecanicos(id_mecanico)
);

INSERT INTO clientes (nome, telefone, email) VALUES
('Maria Madalena', '17284932', 'maria@gmail.com'),
('Pedro Guilherme', '18192845', 'pedro.lol@gmail.com'),
('Ana de Aramas', '19219212', 'ana.aramas@gmail.com'),
('Pedro William', '33343125', 'pedro.aram@gmail.com'),
('Victor Vieira', '91829109', 'victor.vieira.l4d@gmail.com'),
('Thiago Vieira', '91742817', 'thiago.vieira@gmail.com'),
('Agatha Menezes', '82716573', 'agatha.lol@gmail.com'),
('Nicolas de Souza', '17829421', 'nicolas.souza.bot@gmail.com'),
('Roberto Furini', '98218281', 'roberto.furini.ovo@gmail.com'),
('Lucas Gabriel', '30195842', 'lucas.gabriel.coronel@gmail.com');

INSERT INTO motos (modelo, ano, placa, id_cliente) VALUES
('Honda CB 500X', 2020, 'AIP1234', 1),
('Yamaha Fazer 250', 2018, 'XYZ5678', 2),
('Suzuki GSX-R1000', 2021, 'DEF1234', 3),
('Kawasaki Ninja ZX-10R', 2022, 'GHI5678', 4),
('BMW S1000RR', 2019, 'JDM9101', 5),
('Ducati Panigale V4', 2020, 'MNO1122', 6),
('Harley-Davidson Fat Boy', 2021, 'TRR3344', 7),
('Triumph Street Triple', 2023, 'STU5566', 8),
('Honda CBR 1000RR', 2019, 'VLP7788', 9),
('KTM Duke 790', 2022, 'YZB9900', 10);

INSERT INTO servicos (descricao, preco) VALUES
('Troca de óleo', 150.00),
('Revisão completa', 600.00),
('Alinhamento de direção', 200.00),
('Substituição de pastilhas de freio', 300.00),
('Ajuste de suspensão', 250.00),
('Balanceamento de pneus', 180.00),
('Troca de corrente', 220.00);

INSERT INTO mecanicos (nome, especialidade) VALUES
('João da Silva', 'Motor'),
('Pedro Santos', 'Suspensão'),
('Carlos Almeida', 'Freios'),
('Ricardo Oliveira', 'Direção'),
('Paulo Souza', 'Elétrica'),
('Marcos Pereira', 'Pneus'),
('Rafael Lima', 'Transmissão');

INSERT INTO agendamentos (data_agendamento, id_cliente, id_moto, id_servico, id_mecanico) VALUES
('2024-10-20', 1, 1, 1, 1),
('2024-10-22', 2, 2, 2, 2),
('2024-10-25', 3, 3, 3, 3),
('2024-10-27', 4, 4, 4, 4),
('2024-10-29', 5, 5, 5, 5),
('2024-11-01', 6, 6, 6, 6),
('2024-11-03', 7, 7, 7, 7),
('2024-11-05', 8, 8, 1, 1),
('2024-11-07', 9, 9, 3, 3),
('2024-11-10', 10, 10, 5, 5);


SELECT * FROM clientes;

SELECT * FROM motos;

SELECT * FROM servicos;

SELECT * FROM mecanicos;

# Agendamento com detalhes
SELECT a.id_agendamento, a.data_agendamento, c.nome AS cliente, m.modelo AS moto, s.descricao AS servico, me.nome AS mecanico
FROM agendamentos a
JOIN clientes c ON a.id_cliente = c.id_cliente
JOIN motos m ON a.id_moto = m.id_moto
JOIN servicos s ON a.id_servico = s.id_servico
JOIN mecanicos me ON a.id_mecanico = me.id_mecanico;
