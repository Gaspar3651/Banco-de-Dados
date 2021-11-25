USE AdventureWorks2017;

-- ########## HAVING ##########
-- Muito usado com o "GROUP BY" para filtrar resultados de um agrupamento.
-- É, basicamente, um "WHERE" para dados agrupados.

-- ########## DIFERENÇA ENTRE "HAVING" E "WHERE" ##########
-- HAVING é aplicado depois que os dados foram agrupados
-- WHERE é aplicado antes dos dados serem agrupados


-- Quais nomes no sistema tem uma ocorrencia maior que 10 vezes

SELECT FirstName,
	COUNT(FirstName) AS "Quantidade" 
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;


-- ########## USANDO "WHERE" E "HAVING" AO MESMO TEMPO ###########
-- Quais nomes no sistema tem uma ocorrencia maior que 10 vezes, porém somente onde o título é "Mr."

SELECT FirstName,
	COUNT(FirstName) AS "Quantidade de ocorrencias"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;


-- Quais produtos  que no total de vendas estão entre 162k e 500k
SELECT ProductID, 
	SUM(LineTotal) AS "soma total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;





-- ########## DESAFIOS ##########

-- 1- Estamos querendo indentificar as provincias(stateProvinceId) com o maior
-- número de cadastros no nosso sistema, então é preciso encontrar quais províncias
-- (stateProvinceId) estão registradas no banco de dados mais que 1000 vezes.

SELECT StateProvinceID,
	COUNT (stateProvinceId) AS "Quantidade de registros"
FROM Person.Address
GROUP BY stateProvinceId
HAVING COUNT(stateProvinceId) > 1000;


-- 2- Sendo que se trata de uma multinacional, os gerentes querem saber quais 
-- produtos(productId) não estão trazendo em média, no mínimo, 1 milhão em total
-- de vendas(lineTotal)

SELECT ProductID,
	SUM (LineTotal) AS "Média"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) >= 1000000;