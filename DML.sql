/*
DML - Data Manipulation Language
DDL - Data Definition Language
DCL - Data Control Language
TCL - Transaction Control Language
*/


/* Inserindo Dados Linguagem DML */
INSERT INTO
	CLIENTE
VALUES(
	NULL,
	'PAULA',
	'M',
	NULL,
	'77437493'
);


INSERT INTO
	ENDERECO
VALUES(
	NULL,
	'RUA JOAQUIM SILVA',
	'ALVORADA',
	'NITEROI',
	'RJ',
	7
);


/* Atualizar Registro */
UPDATE
	CLIENTE
SET
	SEXO = 'F'
WHERE
	IDCLIENTE = 7;


/* Apagando um Dado */
DELETE FROM
	CLIENTE
WHERE
	IDCLIENTE = 8;