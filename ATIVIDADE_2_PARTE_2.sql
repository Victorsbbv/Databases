CREATE TABLE Cart_Credito
(
NUM_Cliente INT PRIMARY KEY AUTO_INCREMENT,
AgenciaCodigo INT,
ContaNumero VARCHAR(100),
ClienteCodigo INT,
CartaoCodigo VARCHAR(100),
CartaoLimite FLOAT,
CartaoExpira DATE,
CartaoCodigoSeguranca INT
);

INSERT INTO Cart_Credito (AgenciaCodigo, ContaNumero, ClienteCodigo,
CartaoCodigo, CartaoLimite, CartaoExpira, CartaoCodigoSeguranca)
VALUES (1, '562296-2', '25', '1001-2002-3003-4004', 3500.00, '2020-10-10', 123),
(3, '341292-2', '25', '1001-2002-3003-4004', 2342.00, '2024-02-11', 789),
(4, '321796-3', '25', '2312-2343-3123-4987', 3333.00, '2024-03-12', 231),
(2, '562421-6', '25', '1111-2222-3333-4444', 9872.00, '2024-01-01', 221),
(7, '563333-9', '25', '1231-4002-3323-7854', 8763.00, '2024-05-05', 353);

SELECT * FROM Cart_Credito;
