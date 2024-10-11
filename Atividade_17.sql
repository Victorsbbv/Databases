CREATE DATABASE Faculdade;
USE Faculdade;

CREATE TABLE Alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    email VARCHAR(100) UNIQUE,
    data_nascimento DATE
);

CREATE TABLE Professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    email VARCHAR(100) UNIQUE,
    especialidade TEXT
);

CREATE TABLE Cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    carga_horaria INT,
    descricao TEXT
);

CREATE TABLE Turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    curso_id INT,
    ano INT,
    semestre INT,
    FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

CREATE TABLE Matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    turma_id INT,
    data_matricula DATE,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (turma_id) REFERENCES Turmas(id)
);

CREATE TABLE Aulas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    turma_id INT,
    data DATE,
    conteudo TEXT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id)
);

INSERT INTO Alunos (nome, telefone, email, data_nascimento) VALUES
('João da Silva', '11987654321', 'joao.silva@gmail.com', '2000-01-15'),
('Maria Oliveira', '11976543210', 'maria.oliveira@gmail.com', '1999-06-25'),
('Victor Vieira', '11912345678', 'victor.vieira@hotmail.com', '2000-02-10'),
('Nathan Tominaga', '11923456789', 'nathan.tominaga@hotmail.com', '1999-08-15'),
('Pedro Guilherme', '11934567890', 'pedro.guilherme@gmail.com', '1998-11-20'),
('Roberto Furini', '11945678901', 'roberto.furini@gmail.com', '1997-05-30');

INSERT INTO Professores (nome, telefone, email, especialidade) VALUES
('Dr. Carlos Santos', '11912345678', 'carlos.santos@gmail.com', 'Matemática'),
('Profa. Ana Lima', '11923456789', 'ana.lima@gmail.com', 'História'),
('Prof. João Mendes', '11987654321', 'joao.mendes@hotmail.com', 'Jogos Eletrônicos'),
('Profa. Laura Costa', '11998765432', 'laura.costa@gmail.com', 'Ciência da Computação'),
('Prof. Ricardo Silva', '11987654322', 'ricardo.silva@hotmail.com', 'Educação Física'),
('Profa. Ana Paula', '11987654323', 'ana.paula@hotmail.com', 'Arte e Criatividade');

INSERT INTO Cursos (nome, carga_horaria, descricao) VALUES
('Matemática', 240, 'Curso de Matemática com ênfase em Estatística.'),
('História', 180, 'Curso de História com foco na História do Brasil.'),
('Aulas de Left 4 Dead', 60, 'Curso sobre estratégias e táticas em Left 4 Dead.'),
('Aulas de CS', 60, 'Curso sobre fundamentos e estratégias em Counter-Strike.'),
('Aulas de League of Legends', 60, 'Curso de estratégias e habilidades em League of Legends.'),
('Aulas de Ovo', 60, 'Curso de culinária sobre como preparar ovos de diferentes maneiras.');

INSERT INTO Turmas (curso_id, ano, semestre) VALUES
(1, 2024, 1), 
(2, 2024, 2), 
(3, 2024, 1), 
(4, 2024, 1),
(5, 2024, 2),
(6, 2024, 2); 

INSERT INTO Matriculas (aluno_id, turma_id, data_matricula) VALUES
(1, 1, '2024-01-20'),
(2, 2, '2024-07-15'),
(3, 3, '2024-02-01'),
(4, 4, '2024-02-02'),
(5, 5, '2024-08-01'), 
(6, 6, '2024-08-02'); 

UPDATE Alunos
SET telefone = '11997389999'
WHERE id = 1;

UPDATE Cursos
SET descricao = 'Curso de Matemática com ênfase em Cálculo.'
WHERE id = 1;

DELETE FROM Matriculas
WHERE id = 1;

DELETE FROM Professores
WHERE id = 2;

SELECT * FROM Alunos;

SELECT DISTINCT descricao FROM Cursos;

SELECT * FROM Cursos
ORDER BY carga_horaria DESC
LIMIT 5;

CREATE TABLE Alunos_Matriculados_Specificas AS
SELECT a.id, a.nome, t.id AS turma_id
FROM Alunos a
JOIN Matriculas m ON a.id = m.aluno_id
JOIN Turmas t ON m.turma_id = t.id
WHERE t.id IN (3, 4); 

SELECT * FROM Alunos_Matriculados_Specificas;