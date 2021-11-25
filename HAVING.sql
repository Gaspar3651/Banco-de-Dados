USE AdventureWorks2017;

-- ########## HAVING ##########
-- Muito usado com o "GROUP BY" para filtrar resultados de um agrupamento.
-- �, basicamente, um "WHERE" para dados agrupados.

-- ########## DIFEREN�A ENTRE "HAVING" E "WHERE" ##########
-- HAVING � aplicado depois que os dados foram agrupados
-- WHERE � aplicado antes dos dados serem agrupados


-- Quais nomes no sistema tem uma ocorrencia maior que 10 vezes

SELECT FirstName,
	COUNT(FirstName) AS "Quantidade" 
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;


-- ########## USANDO "WHERE" E "HAVING" AO MESMO TEMPO ###########
-- Quais nomes no sistema tem uma ocorrencia maior que 10 vezes, por�m somente onde o t�tulo � "Mr."

SELECT FirstName,
	COUNT(FirstName) AS "Quantidade de ocorrencias"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;


-- Quais produtos  que no total de vendas est�o entre 162k e 500k
SELECT ProductID, 
	SUM(LineTotal) AS "soma total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;





-- ########## DESAFIOS ##########

-- 1- Estamos querendo indentificar as provincias(stateProvinceId) com o maior
-- n�mero de cadastros no nosso sistema, ent�o � preciso encontrar quais prov�ncias
-- (stateProvinceId) est�o registradas no banco de dados mais que 1000 vezes.

SELECT StateProvinceID,
	COUNT (stateProvinceId) AS "Quantidade de registros"
FROM Person.Address
GROUP BY stateProvinceId
HAVING COUNT(stateProvinceId) > 1000;


-- 2- Sendo que se trata de uma multinacional, os gerentes querem saber quais 
-- produtos(productId) n�o est�o trazendo em m�dia, no m�nimo, 1 milh�o em total
-- de vendas(lineTotal)

SELECT ProductID,
	SUM (LineTotal) AS "M�dia"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) >= 1000000;