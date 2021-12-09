USE AdventureWorks2017;
-- ########## INNER JOIN ##########

-- BusinessEntityId, FirstName, LastName, EmailAddress

SELECT *
FROM Person.Person;

SELECT *
FROM Person.EmailAddress;

SELECT TOP 10
	PP.BusinessEntityID,
	PP.FirstName,
	PP.LastName,
	PE.EmailAddress
FROM Person.Person "PP"
INNER JOIN Person.EmailAddress "PE"
ON PP.BusinessEntityID = PE.BusinessEntityID;


-- Queremos os nomes dos produtos e as informações de suas subcategorias.
-- ListPrice, Nome do Produto e Nome da Subcategoria

SELECT * 
FROM Production.Product;

SELECT * 
FROM Production.ProductSubcategory;

SELECT
	PP.ListPrice AS "Lista de preço",
	PP.Name AS "Nome do produto",
	PS.Name AS "Subcategoria"
FROM Production.Product "PP"
INNER JOIN Production.ProductSubcategory "PS"
ON PP.ProductSubcategoryID = PS.ProductSubcategoryID;



-- ########## DESAFIOS ##########
-- 1- Mostrar (BusinessEntityId, Name, PhoneNumberTypeId, PhneNumber)

SELECT TOP 10
	PP.BusinessEntityID,
	PNT.Name,
	PP.PhoneNumberTypeID,
	PP.PhoneNumber
FROM Person.PhoneNumberType "PNT"
JOIN Person.PersonPhone "PP"
ON PNT.PhoneNumberTypeID = PP.PhoneNumberTypeID;

-- 2- Mostrar (AddressId, city, stateprovinceid, nome do estado)

SELECT 
	PA.AddressID,
	PA.City,
	PS.StateProvinceID,
	PS.Name
FROM Person.StateProvince PS
JOIN Person.Address PA
ON PS.StateProvinceID = PA.StateProvinceID;







-- ########## OUTER JOIN ##########
-- Quais pessoas tem um cartão de crédito registrado
SELECT * 
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID;