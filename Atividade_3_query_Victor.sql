CREATE TABLE `CLIENTES`(
`CODIGO` INT (11),
`NOME` VARCHAR (70),
`DATA_NASCIMENTO` DATE,
`PROFISSAO` VARCHAR (70),
PRIMARY KEY (`CODIGO`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO CLIENTES (CODIGO, NOME, DATA_NASCIMENTO, PROFISSAO) VALUES
(1, 'João da Silva Pereira', '2000-02-18', 'Pedreiro'),
(2, 'Pedro William', '2001-03-22', 'Geógrafo'),
(3, 'Maria Madalena', '1997-10-01', 'Administradora'),
(4, 'Lucas Belmont', '1999-03-15', 'Empresário');

DELIMITER $$

CREATE PROCEDURE Selecionar_Cliente(IN quantidade INT)
BEGIN
    SELECT * FROM CLIENTES
    LIMIT quantidade;
END $$

DELIMITER ;

CALL Selecionar_Cliente(2);



