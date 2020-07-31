/* Inserindo Dados na Tabela */

/* Forma 01 - Omitindo as Colunas */
INSERT INTO
	CLIENTE
VALUES(
	'JOAO',
	'M',
	'JOAO@GMAIL.COM',
	988638273,
	'22923110',
	'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ'
);


INSERT INTO
	CLIENTE
VALUES(
	'CELIA',
	'F',
	'CELIA@GMAIL.COM',
	5415211456,
	'25078869',
	'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ'
);


INSERT INTO
	CLIENTE
VALUES(
	'JORGE',
	'M',
	NULL,
	885755896,
	'58748895',
	'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG'
);


/* Forma 02 - Colocando as Colunas */
INSERT INTO CLIENTE(
	NOME,
	SEXO,
	ENDERECO,
	TELEFONE,
	CPF
)
VALUES(
	'LILIAN',
	'F',
	'SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ',
	'947785696',
	887774856
);


/* Forma 03 - Insert Compacto - Somente MySQL */
INSERT INTO
	CLIENTE
VALUES(
	'ANA',
	'F',
	'ANA@GLOBO.COM',
	85548962,
	'548556985',
	'PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'
),
(
	'CARLA',
	'F',
	'CARLA@TERATI.COM.BR',
	7745828,
	'66587458',
	'SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG'
);


/* Comado Select */
SELECT NOW();


/* Alias de Colunas */
SELECT
	NOME AS CLIENTE,
	SEXO,
	EMAIL
FROM
	CLIENTE;


SELECT
	NOME AS CLIENTE,
	SEXO,
	EMIAL,
	ENDERECO
FROM
	CLIENTE;


SELECT
	EMAIL,
	SEXO,
	ENDERECO,
	NOME AS CLIENTE,
	NOW() AS DATA_HORA
FROM
	CLIENTE;


/* Filtrando Dados com Where e Like */
SELECT
	NOME,
	SEXO
FROM
	CLIENTE
WHERE
	SEXO = 'M';


SELECT
	NOME,
	ENDERECO
FROM
	CLIENTE
WHERE
	SEXO = 'F';


SELECT
	NOME,
	SEXO,
	ENDERECO
FROM
	CLIENTE
WHERE
	ENDERECO
LIKE
	'%RJ';


/* Resolvendo o Exercício */

/* Criando um Banco de Dados */
CREATE DATABASE
	LIVRARIA;


/* Criando Tabela */
CREATE TABLE LIVROS(
	LIVRO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO CHAR(1),
	PAGINAS INT(5),
	EDITORA VARCHAR(30),
	VALOR FLOAT(10,2),
	UF CHAR(2),
	ANO INT(4)
);


/* Inserindo Dados na Tabela */
INSERT INTO
	LIVROS
VALUES(
	'CAVALEIRO REAL',
	'ANA CLAUDIA',
	'F',
	465,
	'ATLAS',
	49.9,
	'RJ',
	2009
);


INSERT INTO
	LIVROS
VALUES(
	'SQL PARA LEIGOS',
	'JOAO NUNES',
	'M',
	450,
	'ADDISON',
	98,
	'SP',
	2018
);


INSERT INTO 
	LIVROS
VALUES(
	'RECEITAS CASEIRAS',
	'CELIA TAVARES',
	'F',
	210,
	'ATLAS',
	45,
	'RJ',
	2008
);


INSERT INTO 
	LIVROS
VALUES(
	'PESSOAS EFETIVAS',
	'EDUARDO SANTOS',
	'M',
	390,
	'BETA',
	78,
	'RJ',
	2018
);


INSERT INTO 
	LIVROS
VALUES(
	'HÁBITOS SAUDÁVEIS',
	'EDUARDO SANTOS',
	'M',
	630,
	'BETA',
	150,
	'RJ',
	2019
);


INSERT INTO 
	LIVROS
VALUES(
	'A CASA MARROM',
	'HERMES MACEDO',
	'M',
	250,
	'BUBBA',
	60,
	'MG',
	2016
);


INSERT INTO
	LIVROS
VALUES(
	'ESTACIO QUERIDO',
	'GERALDO FRANCISCO',
	'M',
	310,
	'INSIGNIA',
	100,
	'ES',
	2015
);


INSERT INTO 
	LIVROS
VALUES(
	'PRA SEMPRE AMIGAS',
	'LEDA SILVA',
	'F',
	510,
	'INSIGNIA',
	78,
	'ES',
	2011
);


INSERT INTO 
	LIVROS
VALUES(
	'COPAS INESQUECIVEIS',
	'MARCO ALCANTRA',
	'M',
	200,
	'LARSON',
	130,
	'RS',
	2018
);


INSERT INTO 
	LIVROS
VALUES(
	'O PODER DA MENTE',
	'CLARA MAFRA',
	'F',
	120,
	'CONTINENTAL',
	56,
	'SP',
	2017
);


/* Trazer Todos os Dados */
SELECT
	*
FROM
	LIVROS;


/* Trazer o Nome do Livro e o Nome da Editora */
SELECT
	LIVRO,
	EDITORA
FROM
	LIVROS;


/* Trazer o Nome do Livro e a UF dos Livros Publicados por Autores do Sexo Masculino */
SELECT
	LIVRO,
	UF
FROM
	LIVROS
WHERE
	SEXO = 'M';


/* Trazer o Nome do Livro e o Número de Páginas dos Livros Publicados por Autores so Sexo Feminino */
SELECT
	LIVRO,
	PAGINAS
FROM
	LIVROS
WHERE
	SEXO = 'F';


/* Trazer os Valores dos Livros das Editoras de São Paulo */
SELECT
	LIVRO,
	VALOR
FROM
	LIVROS
WHERE
	UF = 'SP';


/* Trazer os Dados dos Autores do Sexo Masculino que Tiveram Livros Publicados por São Paulo ou Rio de Janeiro */
SELECT
	AUTOR,
	SEXO,
	UF
FROM
	LIVROS
WHERE
	SEXO = 'M'
AND 
	(UF = 'SP'
OR 
	UF = 'RJ');