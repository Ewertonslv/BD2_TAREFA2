create table cliente (
	codigo INT,
	nome VARCHAR(100),
	endereco VARCHAR(100),
	PRIMARY KEY(codigo)
);

create table piloto (
	codigo INT,
	nome VARCHAR(100),
	num_voos INT,
	PRIMARY KEY(codigo)
);

create table voo (
	codigo INT,
	tipo VARCHAR(100),
    cod_piloto INT,
	num_passageiros INT,
	distancia DOUBLE,
  	FOREIGN KEY (cod_piloto)
    REFERENCES piloto(codigo)
    ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY(codigo)
);

create table milhas (
	cod_cliente INT,
	quantidade INT,
	FOREIGN KEY (cod_cliente) 
	REFERENCES cliente (codigo)
	ON UPDATE CASCADE ON DELETE RESTRICT,
	PRIMARY KEY(cod_cliente)
);

CREATE TABLE cliente_voo (
	cod_cliente INT NOT NULL, 
	cod_voo INT NOT NULL,
    classe VARCHAR(100),
    FOREIGN KEY (cod_cliente)
    REFERENCES cliente(codigo)
    ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (cod_voo)
    REFERENCES voo(codigo)
    ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY(cod_cliente, cod_voo)
);





