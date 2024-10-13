CREATE DATABASE sistema_seguranca;
USE sistema_seguranca;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    email TEXT UNIQUE,
    senha TEXT
);

CREATE TABLE logs_acesso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    data_acesso DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

# MOSTRAR OS ACESSOS DOS USUÁRIOS SEM MOSTRAR A SENHA
CREATE VIEW visualizacao_acessos AS
SELECT u.nome, u.email, l.data_acesso
FROM usuarios u
JOIN logs_acesso l ON u.id = l.usuario_id;

# SENHA É HASHADA ANTERIORMENTE EM UM OUTRO APLICATIVO. O USUARIO DIGITA SUA SENHA NORMALMENTE, O APLICATIVO FAZ O HASH DESSA SENHA E AGORA SERÀ INSERIDO NO BANCO DE DADOS
INSERT INTO usuarios (nome, email, senha)
VALUES 
('João Silva', 'joao.silva@gmail.com', '$2y$12$VhYj5t9O...'),
('Maria Souza', 'maria.souza@gmail.com', '$2y$12$RkM89Z...');

# USUÀRIOS 
CREATE USER 'usuario_comum'@'localhost' IDENTIFIED BY 'senha_usuario';
GRANT SELECT ON sistema_seguranca.visualizacao_acessos TO 'usuario_comum'@'localhost';

CREATE USER 'administrador'@'localhost' IDENTIFIED BY 'senha_admin';
GRANT ALL PRIVILEGES ON sistema_seguranca.* TO 'administrador'@'localhost';

# DADOS CRIPTOGRAFADOS SALVOS COMO VARBINARY, QUE ARMAZENA OS DADOS BINÁRIOS DE COMPRIMENTO VARIÁVEL, COMO ALGO CRIPTOGRAFADO NESSE CASO (TELEFONE DE CARLOS)
ALTER TABLE usuarios ADD COLUMN telefone VARBINARY(255);
INSERT INTO usuarios (nome, email, senha, telefone)
VALUES ('Carlos Lima', 'carlos.lima@gmail.com', '$2y$12$U/1aR7...', AES_ENCRYPT('123456789', 'chave_secreta'));

# EXEMPLO SENHAS HASHADAS
INSERT INTO usuarios (nome, email, senha)
VALUES 
('Pedro Guilherme', 'pedro.guilherme@gmail.com', '$2y$12$6WQe1TYu...'),
('Victor Vieira', 'victor.vieira@gmail.com', '$2y$12$A7rB.5UR...');

INSERT INTO logs_acesso (usuario_id)
VALUES 
(1), 
(2),
(3),
(4),
(5);

# VERIFICA ACESSO SEM VER SENHA
SELECT * FROM visualizacao_acessos;
