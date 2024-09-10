# EXERCÍCIO 1 --------------------------
CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Professor (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Curso (
    id_curso INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Matricula (
    id_aluno INT,
    id_curso INT,
    PRIMARY KEY (id_aluno, id_curso),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Leciona (
    id_professor INT,
    id_curso INT,
    PRIMARY KEY (id_professor, id_curso),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

INSERT INTO Aluno (id_aluno, nome) VALUES
(1, 'Pedro William'),
(2, 'João Pastre'),
(3, 'Nicolas de Souza');

INSERT INTO Professor (id_professor, nome) VALUES
(1, 'Dr. Lucas Gabriel'),
(2, 'Profa. Amélia Costa');

INSERT INTO Curso (id_curso, nome) VALUES
(1, 'Matemática'),
(2, 'Física'),
(3, 'Biologia');

INSERT INTO Matricula (id_aluno, id_curso) VALUES
(1, 1),
(2, 2),
(3, 1);

INSERT INTO Leciona (id_professor, id_curso) VALUES
(1, 1),
(1, 2),
(2, 3);

SELECT * FROM Aluno;
SELECT * FROM Professor;
SELECT * FROM Curso;

SELECT A.nome AS Aluno, C.nome AS Curso
FROM Matricula M
JOIN Aluno A ON M.id_aluno = A.id_aluno
JOIN Curso C ON M.id_curso = C.id_curso;

SELECT P.nome AS Professor, C.nome AS Curso
FROM Leciona L
JOIN Professor P ON L.id_professor = P.id_professor
JOIN Curso C ON L.id_curso = C.id_curso;


# EXERCÍCIO 2 --------------------------
CREATE TABLE Livro (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100)
);

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Escreve (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

-- Inserindo dados nas tabelas do EXERCÍCIO 2
INSERT INTO Livro (id_livro, titulo) VALUES
(1, 'Harry Potter'),
(2, 'Como Treinar O Seu Dragão'),
(3, 'Alice no País das Maravilhas');

INSERT INTO Autor (id_autor, nome) VALUES
(1, 'J.K. Rowling'),
(2, 'Cressida Cowell'),
(3, 'Adam Specter');

INSERT INTO Escreve (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3);

SELECT * FROM Livro;
SELECT * FROM Autor;

SELECT L.titulo AS Livro, A.nome AS Autor
FROM Escreve E
JOIN Livro L ON E.id_livro = L.id_livro
JOIN Autor A ON E.id_autor = A.id_autor;


# EXERCÍCIO 3 --------------------------
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
);

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Detalhe_Pedido (
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

INSERT INTO Produto (id_produto, nome, preco) VALUES
(1, 'Notebook Acer Nitro 5', 3500.00),
(2, 'Smartphone Samsung Galaxy A51', 1500.00),
(3, 'Monitor Samsung Galaxy Odyssey', 800.00);

INSERT INTO Cliente (id_cliente, nome) VALUES
(1, 'Victor Vieira'),
(2, 'Thiago Vieira'),
(3, 'Pedro Guilherme');

INSERT INTO Pedido (id_pedido, id_cliente, data_pedido) VALUES
(1, 1, '2024-03-02'),
(2, 2, '2024-10-12'),
(3, 3, '2024-12-25');

INSERT INTO Detalhe_Pedido (id_pedido, id_produto, quantidade) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 1, 1);

SELECT * FROM Produto;
SELECT * FROM Cliente;

SELECT P.id_pedido, C.nome AS Cliente, P.data_pedido
FROM Pedido P
JOIN Cliente C ON P.id_cliente = C.id_cliente;

SELECT DP.id_pedido, Prod.nome AS Produto, DP.quantidade
FROM Detalhe_Pedido DP
JOIN Produto Prod ON DP.id_produto = Prod.id_produto;