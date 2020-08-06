/* Relatório Geral de Todos os Clientes (Telefone e Endereço) */
SELECT
	C.IDCLIENTE,
	C.NOME,
	C.SEXO,
	C.EMAIL,
	C.CPF,
	E.RUA,
	E.BAIROO,
	E.CIDADE,
	E.ESTADO,
	T.TIPO,
	T.NUMERO
FROM
	CLIENTE C
INNER JOIN
	ENDERECO E
ON
	C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN
	TELEFONE T
ON
	C.IDCLIENTE = T.ID_CLIENTE;


/* Relatório de Homens */
SELECT
	C.IDCLIENTE,
	C.NOME,
	C.SEXO,
	C.EMAIL,
	C.CPF,
	E.RUA
	E.BAIRRO,
	E.CIDADE,
	E.ESTADO,
	T.TIPO,
	T.NUMERO
FROM
	CLIENTE C
INNER JOIN
	ENDERECO E
ON
	C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN
	TELEFONE T
ON
	C.IDCLIENTE = T.ID_CLIENTE
WHERE
	SEXO = 'M';


/* Relatório de Mulheres */
SELECT
	C.IDCLIENTE,
	C.NOME,
	C.SEXO,
	C.EMAIL
	C.CPF,
	E.RUA,
	E.BAIRRO,
	E.CIDADE,
	E.ESTADO,
	T.TIPO,
	T.NUMERO
FROM
	CLIENTE C
INNER JOIN
	ENDERECO E
ON
	C.ID_CLIENTE = E.ID_CLIENTE
INNER JOIN
	TELEFONE T
ON
	C.ID_CLIENTE = T.ID_CLIENTE
WHERE
	SEXO = 'F';


/* Quantidade de Homens e Mulheres */
SELECT
	COUNT(*) AS QUANTIDADE,
	SEXO
FROM
	CLIENTE
GROUP BY
	SEXO;


/* Ids e Email das Mulheres que Morem no Centro do Rio de Janeiro e não Tenham Celular */
SELECT
	C.IDCLIENTE,
	C.EMAIL,
	C.NOME,
	C.SEXO,
	E.BAIRRO,
	E.CIDADE,
	T.TIPO
FROM
	CLIENTE C
INNER JOIN
	ENDERECO E
ON
	C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN
	TELEFONE T
ON
	C.IDCLIENTE = T.ID_CLIENTE
WHERE
	SEXO = 'F'
AND
	BAIRRO = 'CENTRO'
AND
	CIDADE = 'RIO DE JANEIRO'
AND
	TIPO IN('RES','COM');


/* Para uma Campanha de Marketing, o Setor Solicitou um Relatório com o Nome, Email, e Telefone Celular,
dos Clientes que Moram no Estado do Rio de Janeiro Você terá que passar a Query para Gerar o Relatório para o
Programador */
SELECT
	C.NOME,
	C.EMAIL,
	T.NUMERO AS CELULAR
FROM
	CLIENTE C
INNER JOIN
	ENDERECO E
ON
	C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN
	TELEFONE T
ON
	C.IDCLIENTE = T.ID_CLIENTE
WHERE
	TIPO = 'CEL'
AND
	ESTADO = 'RJ';


/* Para uma Campanha de Produtos de Beleza, o Comercial Solicitou um Relatório com o Nome, Email, Telefone Celular
das Mulheres que Moram no Estado de São Paulo Você terá que passar a Query para Gerar o Relatório para o programador */
SELECT
	C.NOME,
	C.EMAIL,
	T.NUMERO AS CELULAR
FROM
	CLIENTE C
INNER JOIN
	ENDERECO E
ON
	C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN
	TELEFONE T
ON
	C.IDCLIENTE = T.ID_CLIENTE
WHERE
	SEXO = 'F'
AND
	ESTADO = 'SP';