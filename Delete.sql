/* Utilizando o UPDATE para Atualizar Valores  */
UPDATE
	CLIENTE
SET
	EMAIL = 'JOAO@IG.COM.BR'
WHERE
	NOME = 'JOAO';


UPDATE
	CLIENTE
SET
	EMAIL = 'JORGE@IG.COM.BR'
WHERE
	NOME = JORGE;


/* Deletando Registros com a Clausula DELETE */
DELETE FROM
	CLIENTE
WHERE
	NOME = 'ANA';


DELETE FROM
	CLIENTE
WHERE
	NOME = 'CARLA'
OR
	EMAIL = 'LILIAN@HOTMAIL.COM';


DELETE FROM
	CLIENTE
WHERE
	NOME = 'CARLA'
AND
	EMAIL = 'LILIAN@HOTMAIL.COM';


/* Primeira Forma Normal para Modelagem de Dados */

/*

1 - Todo Campo Vetorizado se Tornará Outra Tabela.

[Amarelo, Azul, Laranja, Verde] -> Cores
[KA, Fiesta, Uno, Civic] -> Carros

2 - Todo Campo Multivalorado se Tornará Outra Tabela.
Quando o Campo for Divisível.

3 - Toda Tabela Necessita de Pelo Menos um Campo que Identifique todo Registro como sendo Único.
Isso é o que Chamamos de Chave Primária ou Primary Key.

*/