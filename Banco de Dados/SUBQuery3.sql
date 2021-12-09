USE AdventureWorks2017;

-- ########## SUBQUERY ##########

-- Montar um relat�rio de todos os produtos cadastrados que tem pre�o de venda acima da m�dia
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

-- Mostrar o nome dos funcion�rios que tem cargo de "design engineer"
-- USANDO SUBQUERY
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
	SELECT BusinessEntityID
	FROM HumanResources.Employee
	WHERE JobTitle = 'Design Engineer'
	);



-- USANDO JOIN
SELECT FirstName
FROM Person.Person PP
JOIN HumanResources.Employee HE
ON HE.BusinessEntityID = PP.BusinessEntityID
WHERE HE.JobTitle = 'Design Engineer';



-- ########## 