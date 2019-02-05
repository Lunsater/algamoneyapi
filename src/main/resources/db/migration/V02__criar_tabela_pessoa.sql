CREATE TABLE pessoa (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	logradouro VARCHAR(100),
	numero VARCHAR(6),
	complemento VARCHAR(100),
	bairro VARCHAR(50),
	cep VARCHAR(8),
	cidade VARCHAR(50),
	estado VARCHAR(2),
	ativo BOOLEAN NOT NULL
);

INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Daenerys Targaryen', 'Rua dos Dragões', '3', NULL, 'Bafo Quente', '11111222', 'Essos', 'GT', 't'); 
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Jon Snow', 'Rua da Muralha', '15', 'Castle Black', 'Muralha', '22222333', 'Winterfell', 'GT', 't'); 
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Cersei Baratheon', 'Rua do Castelo', '6', NULL, 'King', '33333444', 'Kings Landing', 'GT', 't');
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Sansa Stark', 'Rua do Gelo', '8', NULL, 'North', '44444555', 'Winterfell', 'GT', 't');
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Oberyn Martell', 'Rua do Vingador', '5', NULL, 'East', '55555666', 'Dorne', 'GT', 'f');	
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Jaime Lannister', 'Rua do Traidor', '999', NULL, 'North', '66666777', 'Kings Landing', 'GT', 't');
 
	 

	