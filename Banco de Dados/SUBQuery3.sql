USE AdventureWorks2017;

-- ########## SUBQUERY ##########

-- Montar um relatório de todos os produtos cadastrados que tem preço de venda acima da média
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

-- Mostrar o nome dos funcionários que tem cargo de "design engineer"
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