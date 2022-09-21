CREATE DATABASE IF NOT EXISTS Locacao;
CREATE TABLE clientes (
	cliente_cod INT NOT NULL,
	cliente_nome VARCHAR(60) NOT NULL,
	cliente_email VARCHAR(40) NOT NULL,
	cliente_cpf VARCHAR(18) NOT NULL,
	cliente_endereco VARCHAR(100) NOT NULL,
	cliente_numero TINYINT NOT NULL,
	cliente_complemento VARCHAR(20) NULL,
	cliente_cidade VARCHAR(50) NOT NULL,
	cliente_estado VARCHAR(50) NOT NULL,
	dt_cadastro DATETIME NOT NULL,
	CONSTRAINT PK_clientes PRIMARY KEY (cliente_cod),
	CONSTRAINT UN_clientes UNIQUE KEY (cliente_cpf)
);

CREATE TABLE marca (
	marca_cod INT NOT NULL,
	marca_desc VARCHAR(200) NOT NULL,
	CONSTRAINT PK_marca PRIMARY KEY (marca_cod)
);

CREATE TABLE modelo (
	modelo_cod INT NOT NULL,
	modelo_desc VARCHAR(200) NOT NULL,
	CONSTRAINT PK_modelo PRIMARY KEY (modelo_cod)
);

CREATE TABLE automovel (
	auto_cod INT NOT NULL,
	marca_cod INT NOT NULL,
	modelo_cod INT NOT NULL,
	auto_nome VARCHAR(40) NOT NULL,
	CONSTRAINT PK_automovel PRIMARY KEY (auto_cod),
	CONSTRAINT  FK_automovel_marca_cod FOREIGN  KEY (marca_cod)
   	REFERENCES  marca(marca_cod),
   	CONSTRAINT  FK_automovel_modelo_cod FOREIGN  KEY (modelo_cod)
   	REFERENCES  modelo(modelo_cod)
);

CREATE TABLE locacao (
	locacao_cod INT NOT NULL,
	auto_cod INT NOT NULL,
	cliente_cod INT NOT NULL,
	locacao_km INT NOT NULL,
	dt_cadastro DATETIME NOT NULL,
	CONSTRAINT PK_locacao PRIMARY KEY (locacao_cod),
	CONSTRAINT  FK_locacao_auto_cod FOREIGN  KEY (auto_cod)
   	REFERENCES  automovel(auto_cod)
);




