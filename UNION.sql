USE AdventureWorks2017;

-- ########## UNION ##########
-- Combina dois ou mais resultados de um select em apenas um resultado
-- as colunas tem que ser do mesmo tipo

SELECT
	ProductID,
	Name,
	ProductNumber
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION
SELECT
	ProductID,
	Name,
	ProductNumber
FROM Production.Product
WHERE Name LIKE '%Decal%';


SELECT 
	FirstName,
	Title
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT
	FirstName,
	Title
FROM Person.Person
WHERE MiddleName = 'A';