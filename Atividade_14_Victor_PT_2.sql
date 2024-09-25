CREATE TABLE departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome_departamento VARCHAR(255)
);

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    id_departamento INT,
    data_admissao DATE,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

CREATE TABLE projetos (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    nome_projeto VARCHAR(255),
    data_inicio DATE,
    status VARCHAR(50),
    CONSTRAINT check_status CHECK (status IN ('ativo', 'inativo', 'concluído'))
);

ALTER TABLE funcionarios DROP COLUMN data_admissao;

CREATE INDEX idx_email ON funcionarios(email);

ALTER TABLE funcionarios ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE funcionarios ADD CONSTRAINT check_id_departamento CHECK (id_departamento > 0);

ALTER TABLE funcionarios RENAME TO empregados;

DROP TABLE empregados;
DROP TABLE departamentos;

INSERT INTO projetos (nome_projeto, data_inicio, status) VALUES  
('Projeto Wesker', '2024-02-02', 'inativo'),
('Projeto Nemesis', '2023-05-12', 'inativo'),
('Projeto Dark Knight', '2023-07-10', 'ativo'),
('Projeto Wonder', '2023-02-11', 'ativo'),
('Projeto Super', '2023-01-09', 'ativo'),
('Projeto Lantern', '2023-12-02', 'ativo'),
('Projeto Speedster', '2023-12-05', 'ativo'),
('Projeto Hawk', '2023-15-01', 'ativo'),
('Projeto Martian', '2023-11-01', 'inativo'),
('Projeto Arrow', '2023-10-01', 'ativo'),
('Projeto Canary', '2023-11-01', 'ativo'),
('Projeto Magic', '2023-12-12', 'ativo'),
('Projeto Alpha', '2024-02-11', 'inativo'),
('Projeto Beta', '2024-03-09', 'concluído'),
('Projeto Sigma', '2024-04-06', 'concluído'),
('Projeto Omega', '2024-05-07', 'inativo'),
('Projeto Delta', '2024-06-08', 'inativo'),
('Projeto S&S', '1981-07-01', 'concluído'),
('Projeto ABF', '1982-08-01', 'concluído'),
('Projeto CTA', '1983-09-01', 'concluído'),
('Projeto SGR', '1984-10-01', 'concluído'),
('Projeto BC', '1986-12-01', 'concluído'),
('Projeto MFTM', '1987-09-01', 'concluído'),
('Projeto V', '1990-03-01', 'concluído'),
('Projeto SOFAD', '1993-04-01', 'concluído'),
('Projeto U', '1997-01-01', 'concluído'),
('Projeto E', '2001-01-01', 'concluído'),
('Projeto PTA', '2005-07-01', 'concluído'),
('Projeto SOTU', '2009-08-01', 'concluído'),
('Projeto DM', '2013-07-01', 'concluído'),
('Projeto S', '2017-09-01', 'concluído'),
('Projeto MM', '2023-10-01', 'concluído'),
('Projeto Ice', '2025-12-01', 'ativo'),
('Projeto Fire', '2025-11-01', 'inativo'),
('Projeto Radiation', '2025-11-01', 'concluído'),
('Projeto Water', '2024-12-01', 'concluído'),
('Projeto Nature', '2026-01-01', 'inativo'),
('Projeto Earth', '2026-02-01', 'ativo'),
('Projeto Wind', '2026-03-01', 'inativo'),
('Projeto Blue', '2023-04-01', 'concluído'),
('Projeto Red', '2026-05-01', 'inativo'),
('Projeto Purple', '2023-06-01', 'concluído'),
('Projeto Yellow', '2026-07-01', 'inativo'),
('Projeto Green', '2022-08-01', 'concluído'),
('Projeto Brown', '2026-09-01', 'ativo'),
('Projeto Black', '2021-10-01', 'ativo'),
('Projeto White', '2020-11-01', 'inativo'),
('Projeto Yes', '2022-12-01', 'concluído'), 
('Projeto No', '2027-01-01', 'inativo'),
('Projeto Final', '2027-02-01', 'ativo');

SELECT * FROM projetos;