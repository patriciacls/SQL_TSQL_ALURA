SELECT * FROM PRODUTOS ORDER BY [PRE�O DE LISTA]

SELECT * FROM PRODUTOS ORDER BY EMBALAGEM, [NOME DO PRODUTO]

SELECT * FROM PRODUTOS ORDER BY EMBALAGEM DESC, [NOME DO PRODUTO]

SELECT  DISTINCT [NOME DO PRODUTO],QUANTIDADE FROM ITEM_NF
JOIN PRODUTOS ON ITEM_NF.[CODIGO DO PRODUTO]=PRODUTOS.[CODIGO DO PRODUTO]
WHERE PRODUTOS.[NOME DO PRODUTO]='Linha Refrescante - 1 Litro - Morango/Lim�o' ORDER BY QUANTIDADE DESC

--GROUPBY
SUM
AVG
MAX
MIN

SELECT CIDADE,IDADE FROM CLIENTES ORDER BY CIDADE,IDADE

SELECT CIDADE, SUM([LIMITE DE CREDITO]) AS [SOMA CREDITO] FROM CLIENTES GROUP BY CIDADE;
SELECT CIDADE, AVG(IDADE) [MEDIA IDADE],SUM([LIMITE DE CREDITO]) AS [SOMA CREDITO] FROM CLIENTES GROUP BY CIDADE;

SELECT CIDADE, COUNT(*) AS [TOTAL CLIENTES] FROM CLIENTES GROUP BY CIDADE;

SELECT CPF, COUNT(*) FROM NF GROUP BY CPF
SELECT * FROM NF WHERE CPF='7771579779'

SELECT * FROM ITEM_NF WHERE QUANTIDADE=	'99' AND [CODIGO DO PRODUTO]='1101035'	
--OU
SELECT COUNT(*) FROM ITEM_NF WHERE QUANTIDADE=	'99' AND [CODIGO DO PRODUTO]='1101035'