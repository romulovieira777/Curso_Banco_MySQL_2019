/* Modelagem Básica */

/* Entidade = Tabela
   Campos = Atributos */


CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)


/* Processos de Modelagem */

/* Fase 01 e Fase 02 - Feito pelo Administrador de Dados */
Modelagem Conceitual - Rascunho
Modelagem Lógica - Qualquer Programa de Modelagem

/* Fase 03 - Fica a Critério do DAB, mas o AD pode fazer */
Modelagem Física - Scripts de Banco


/* Iniciando a Modelagem Física */

/* Criando um Banco de Dados */
CREATE DATABASE
	PROJETO;


/* Conectando-se ao Banco de Dados */
USE
	PROJETO;


/* Criando uma Tabela */
CREATE TABLE CLIENTE(
	NOME VARCHAR(20),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
);


/* Verificando as Tabelas do Banco */
SHOW TABLES;


/* Descobrindo como é a Estrutura de uma Tabela */
DESC
	CLIENTE;