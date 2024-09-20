CREATE TABLE `estoque` (
  `CODIGO_PRODUTO_ESTOQUE` int(11) NOT NULL,
  `PRODUTO_ESTOQUE` varchar(100) DEFAULT NULL,
  `QUANTIDADE_ESTOQUE` decimal(10,2) DEFAULT NULL,
  `VALOR_ESTOQUE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CODIGO_PRODUTO_ESTOQUE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `funcionarios` (
  `ID_FUNCIONARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME_FUNCIONARIO` varchar(100) DEFAULT NULL,
  `CPF_FUNCIONARIO` varchar(14) DEFAULT NULL,
  `TELEFONE_FUNCIONARIO` varchar(15) DEFAULT NULL,
  `ENDERECO_FUNCIONARIO` varchar(255) DEFAULT NULL,
  `CARGO_FUNCIONARIO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_FUNCIONARIO`),
  UNIQUE KEY `CPF_FUNCIONARIO` (`CPF_FUNCIONARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `pedido` (
  `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT,
  `DATA_PEDIDO` date DEFAULT NULL,
  `TOTAL_PEDIDO` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_PEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `item_pedido` (
  `ID_ITEM` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PEDIDO` int(11) DEFAULT NULL,
  `CODIGO_PRODUTO_ESTOQUE` int(11) DEFAULT NULL,
  `PRODUTO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` decimal(10,2) DEFAULT NULL,
  `VALOR_UNITARIO` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_ITEM`),
  KEY `ID_PEDIDO` (`ID_PEDIDO`),
  KEY `CODIGO_PRODUTO_ESTOQUE` (`CODIGO_PRODUTO_ESTOQUE`),
  CONSTRAINT `item_pedido_ibfk_1` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`),
  CONSTRAINT `item_pedido_ibfk_2` FOREIGN KEY (`CODIGO_PRODUTO_ESTOQUE`) REFERENCES `estoque` (`CODIGO_PRODUTO_ESTOQUE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `pagamento` (
  `ID_PAGAMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PEDIDO` int(11) DEFAULT NULL,
  `DATA_PAGAMENTO` date DEFAULT NULL,
  `METODO_PAGAMENTO` varchar(50) DEFAULT NULL,
  `VALOR_PAGAMENTO` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_PAGAMENTO`),
  KEY `ID_PEDIDO` (`ID_PEDIDO`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `posto` (
  `ID_POSTO` int(11) NOT NULL AUTO_INCREMENT,
  `CNPJ_POSTO` varchar(14) DEFAULT NULL,
  `NOME_POSTO` varchar(100) DEFAULT NULL,
  `ENDERECO_POSTO` varchar(255) DEFAULT NULL,
  `RAZAO_SOCIAL_POSTO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_POSTO`),
  UNIQUE KEY `CNPJ_POSTO` (`CNPJ_POSTO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `sistema` (
  `ID_SISTEMA` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_SISTEMA` varchar(100) DEFAULT NULL,
  `SENHA_SISTEMA` varchar(100) DEFAULT NULL,
  `PERMISSAO_SISTEMA` varchar(50) DEFAULT NULL,
  `NOME_SISTEMA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_SISTEMA`),
  UNIQUE KEY `LOGIN_SISTEMA` (`LOGIN_SISTEMA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `cliente` (
  `CPF` varchar(15) NOT NULL,
  `NOME` varchar(70) DEFAULT NULL,
  `DT_NASC` date DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `patio` (
  `NUM` int(10) NOT NULL AUTO_INCREMENT,
  `ENDER` varchar(50) DEFAULT NULL,
  `CAPACIDADE` int(5) DEFAULT NULL,
  PRIMARY KEY (`NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `modelo` (
  `COD_MODELO` int(10) NOT NULL AUTO_INCREMENT,
  `MODELO` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`COD_MODELO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `veiculo` (
  `PLACA` varchar(8) NOT NULL,
  `COD_MODELO` int(10) DEFAULT NULL,
  `CLIENTE_CPF` varchar(15) DEFAULT NULL,
  `COR` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PLACA`),
  KEY `FK_CLIENTE` (`CLIENTE_CPF`),
  KEY `FK_MODELO` (`COD_MODELO`),
  CONSTRAINT `FK_CLIENTE` FOREIGN KEY (`CLIENTE_CPF`) REFERENCES `cliente` (`CPF`),
  CONSTRAINT `FK_MODELO` FOREIGN KEY (`COD_MODELO`) REFERENCES `modelo` (`COD_MODELO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `estaciona` (
  `COD` int(10) NOT NULL AUTO_INCREMENT,
  `PATIO_NUM` int(10) DEFAULT NULL,
  `VEICULO_PLACA` varchar(8) DEFAULT NULL,
  `DT_ENTRADA` date DEFAULT NULL,
  `DT_SAIDA` date DEFAULT NULL,
  `HS_ENTRADA` time DEFAULT NULL,
  `HS_SAIDA` time DEFAULT NULL,
  PRIMARY KEY (`COD`),
  KEY `FK_PATIO` (`PATIO_NUM`),
  KEY `FK_VEICULO` (`VEICULO_PLACA`),
  CONSTRAINT `FK_PATIO` FOREIGN KEY (`PATIO_NUM`) REFERENCES `patio` (`NUM`),
  CONSTRAINT `FK_VEICULO` FOREIGN KEY (`VEICULO_PLACA`) REFERENCES `veiculo` (`PLACA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `tanque` (
  `id_tanque` int(2) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(200) NOT NULL,
  `capacidade` int(6) DEFAULT '10000',
  `quantidade` int(8) DEFAULT '0',
  PRIMARY KEY (`id_tanque`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `cargo` (
  `ID_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo_cargo` varchar(100) DEFAULT NULL,
  `Nivel_cargo` varchar(50) DEFAULT NULL,
  `Salario_Base` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `departamento` (
  `COD_departamento` int(11) NOT NULL,
  `Nome_departamento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`COD_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `funcionario` (
  `ID_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `ID_cargo` int(11) DEFAULT NULL,
  `COD_departamento` int(11) DEFAULT NULL,
  `Datanascimento_funcionario` date DEFAULT NULL,
  `Status_funcionario` enum('ativo','inativo','suspenso','férias') DEFAULT NULL,
  `Nome_funcionario` varchar(100) DEFAULT NULL,
  `Email_funcionario` varchar(100) DEFAULT NULL,
  `Senha_funcionario` varchar(100) DEFAULT NULL,
  `CPF_funcionario` varchar(11) DEFAULT NULL,
  `Celular_funcionario` varchar(20) DEFAULT NULL,
  `Cargo` varchar(100) DEFAULT NULL,
  `Departamento` varchar(100) DEFAULT NULL,
  `Foto_Funcionario` blob,
  `ADM` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_funcionario`),
  KEY `ID_cargo` (`ID_cargo`),
  KEY `COD_departamento` (`COD_departamento`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`ID_cargo`) REFERENCES `cargo` (`ID_cargo`),
  CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`COD_departamento`) REFERENCES `departamento` (`COD_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `pagamento_2` (
  `ID_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `ID_funcionario` int(11) DEFAULT NULL,
  `Data_salario` date DEFAULT NULL,
  `Dados_bancarios` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `registrohoras` (
  `ID_registrohoras` int(11) NOT NULL AUTO_INCREMENT,
  `ID_funcionario` int(11) DEFAULT NULL,
  `Data_horas` date DEFAULT NULL,
  `Chegada_horas` time DEFAULT NULL,
  `Saida_horas` time DEFAULT NULL,
  `Horas_trabalhadas` time DEFAULT NULL,
  `Horas_extras` time DEFAULT NULL,
  `Carga_horariasemanal` int(11) DEFAULT NULL,
  `Ferias` int(11) DEFAULT NULL,
  `Licencas` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_registrohoras`),
  KEY `ID_funcionario` (`ID_funcionario`),
  CONSTRAINT `registrohoras_ibfk_1` FOREIGN KEY (`ID_funcionario`) REFERENCES `funcionario` (`ID_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `solicitacao` (
  `ID_solicitacao` int(11) NOT NULL AUTO_INCREMENT,
  `ID_funcionario` int(11) DEFAULT NULL,
  `Descricao_solicitacao` varchar(255) DEFAULT NULL,
  `Data_solicitacao` date DEFAULT NULL,
  `Hora_solicitacao` time DEFAULT NULL,
  `Status_solicitacao` varchar(50) DEFAULT NULL,
  `Arquivo_anexado` blob,
  PRIMARY KEY (`ID_solicitacao`),
  KEY `ID_funcionario` (`ID_funcionario`),
  CONSTRAINT `solicitacao_ibfk_1` FOREIGN KEY (`ID_funcionario`) REFERENCES `funcionario` (`ID_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `estoque` (`CODIGO_PRODUTO_ESTOQUE`, `PRODUTO_ESTOQUE`, `QUANTIDADE_ESTOQUE`, `VALOR_ESTOQUE`)
VALUES (1, 'Mouse Redragon', 50, 200.00), 
       (2, 'Headset Redragon', 30, 150.00);

INSERT INTO `funcionarios` (`ID_FUNCIONARIO`, `NOME_FUNCIONARIO`, `CPF_FUNCIONARIO`, `TELEFONE_FUNCIONARIO`, `ENDERECO_FUNCIONARIO`, `CARGO_FUNCIONARIO`)
VALUES (1, 'Pedro Guilherme', '123.456.789-00', '(11) 99999-9999', 'Rua Summoner, 523', 'Gerente'),
       (2, 'Nathan Tominaga', '987.654.321-00', '(11) 88328-1234', 'Rua CS, 456', 'Vendedor');

INSERT INTO `pedido` (`ID_PEDIDO`, `DATA_PEDIDO`, `TOTAL_PEDIDO`)
VALUES (1, '2024-04-12', 500.00),
       (2, '2024-03-20', 300.00);

INSERT INTO `item_pedido` (`ID_ITEM`, `ID_PEDIDO`, `CODIGO_PRODUTO_ESTOQUE`, `PRODUTO`, `QUANTIDADE`, `VALOR_UNITARIO`)
VALUES (1, 1, 1, 'Mouse Redragon', 2, 200.00),
       (2, 1, 2, 'Headset Redragon', 1, 150.00);

INSERT INTO `pagamento` (`ID_PAGAMENTO`, `ID_PEDIDO`, `DATA_PAGAMENTO`, `METODO_PAGAMENTO`, `VALOR_PAGAMENTO`)
VALUES (1, 1, '2024-04-12', 'Cartão', 200.00),
       (2, 2, '2024-03-20', 'Boleto', 150.00);

INSERT INTO `posto` (`ID_POSTO`, `CNPJ_POSTO`, `NOME_POSTO`, `ENDERECO_POSTO`, `RAZAO_SOCIAL_POSTO`)
VALUES (1, '53149978000100', 'Posto Central', 'Rua Camarões, 789', 'Posto Central LTDA');

INSERT INTO `sistema` (`ID_SISTEMA`, `LOGIN_SISTEMA`, `SENHA_SISTEMA`, `PERMISSAO_SISTEMA`, `NOME_SISTEMA`)
VALUES (1, 'admin', 'senha123', 'Administrador', 'Sistema OLÉO');

INSERT INTO `cliente` (`CPF`, `NOME`, `DT_NASC`)
VALUES ('153.531.221-00', 'Peter William', '1990-02-04');

INSERT INTO `patio` (`NUM`, `ENDER`, `CAPACIDADE`)
VALUES (1, 'Avenida Central, 100', 50);

INSERT INTO `modelo` (`COD_MODELO`, `MODELO`)
VALUES (1, 'Azera'),
       (2, 'HB20');

INSERT INTO `veiculo` (`PLACA`, `COD_MODELO`, `CLIENTE_CPF`, `COR`)
VALUES ('dms1010', 1, '153.531.221-00', 'Preto');


INSERT INTO `estaciona` (`COD`, `PATIO_NUM`, `VEICULO_PLACA`, `DT_ENTRADA`, `DT_SAIDA`, `HS_ENTRADA`, `HS_SAIDA`)
VALUES (1, 1, 'dms1010', '2024-09-12', '2024-09-12', '08:00', '18:00');

INSERT INTO `tanque` (`id_tanque`, `tipo`, `capacidade`, `quantidade`)
VALUES (1, 'Gasolina', 10000, 5000);

INSERT INTO `cargo` (`ID_cargo`, `Titulo_cargo`, `Nivel_cargo`, `Salario_Base`)
VALUES (1, 'Gerente', 'Sênior', 8000.00),
       (2, 'Vendedor', 'Pleno', 4000.00);

INSERT INTO `departamento` (`COD_departamento`, `Nome_departamento`)
VALUES (1, 'Vendas'),
       (2, 'RH');

INSERT INTO `funcionario` (`ID_funcionario`, `ID_cargo`, `COD_departamento`, `Datanascimento_funcionario`, `Status_funcionario`, `Nome_funcionario`, `Email_funcionario`, `Senha_funcionario`, `CPF_funcionario`, `Celular_funcionario`, `Cargo`, `Departamento`, `Foto_Funcionario`, `ADM`)
VALUES (1, 1, 1, '1980-05-01', 'ativo', 'Carlos Silva', 'carlos.silva@gmail.com', 'supersecreto2312', '8127489274', '(41) 924212432', 'Gerente', 'Vendas', NULL, 1);

INSERT INTO `pagamento_2` (`ID_pagamento`, `ID_funcionario`, `Data_salario`, `Dados_bancarios`)
VALUES (1, 1, '2024-09-12', 8000.00);

INSERT INTO `registrohoras` (`ID_registrohoras`, `ID_funcionario`, `Data_horas`, `Chegada_horas`, `Saida_horas`, `Horas_trabalhadas`, `Horas_extras`, `Carga_horariasemanal`, `Ferias`, `Licencas`)
VALUES (1, 1, '2024-09-12', '08:00', '17:00', '08:00', '00:00', 40, 0, 0);

INSERT INTO `solicitacao` (`ID_solicitacao`, `ID_funcionario`, `Descricao_solicitacao`, `Data_solicitacao`, `Hora_solicitacao`, `Status_solicitacao`, `Arquivo_anexado`)
VALUES (1, 1, 'Solicitação de férias', '2024-09-12', '09:00', 'Pendente', NULL);

SELECT * FROM estoque;

SELECT * FROM funcionarios;

SELECT * FROM pedido;

SELECT * FROM item_pedido;

SELECT * FROM pagamento;

SELECT * FROM posto;

SELECT * FROM sistema;

SELECT * FROM cliente;

SELECT * FROM patio;

SELECT * FROM modelo;

SELECT * FROM veiculo;

SELECT * FROM estaciona;

SELECT * FROM tanque;

SELECT * FROM cargo;

SELECT * FROM departamento;

SELECT * FROM funcionario;

SELECT * FROM pagamento_2;

SELECT * FROM registrohoras;

SELECT * FROM solicitacao;

