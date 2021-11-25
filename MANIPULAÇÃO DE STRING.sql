USE AdventureWorks2017;

-- ########## MANIPULAÇÃO DE STRING ##########

SELECT CONCAT(FirstName, ' ', LastName) -- CONCATENAÇÃO
FROM Person.Person;


SELECT 
	UPPER(FirstName), -- DEIXAR STRING MAIUSCULA
	LOWER(FirstName) -- DEIXAR STRING MINUSCULA
FROM Person.Person;

SELECT 
	FirstName, 
	LEN(FirstName) -- QUANTIDADE DE CARACTERES
FROM Person.Person;


SELECT REPLACE(ProductNumber, '-', '...') -- SUBSTITUI CARACTERES
FROM Production.Product