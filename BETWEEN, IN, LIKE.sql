USE AdventureWorks2017;

-- ########## "BETWEEN" MOSTRA O QUE EST� ENTRE DOIS VALORES ##########
SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500
ORDER BY ListPrice;


-- ########## "IN" L�GICA PARECIDA COM "OR" ##########
SELECT * 
FROM Person.Person
WHERE BusinessEntityID IN (2 , 7, 13, 55);


-- ########## "LIKE" PROCURA ALGO PARECIDO ##########
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ess%';


-- ########## DESAFIOS SOBRE AS LOGIAS ACIMA ##########

-- 1- Quantos produtos temos cadastrados no sistema que custam mais que 1500 d�lares?

SELECT * 
FROM Production.Product;

SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;



-- 2- Quantas pessoas temos com o sobrenome que inicia com a letra "P"?

SELECT * 
FROM Person.Person;

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'


-- 3- Em quantas cidades �nicas est�o casdastrados nossos clientes?

SELECT *
FROM Person.Address;

SELECT COUNT (DISTINCT City)
FROM Person.Address;


-- 4- Quais s�o as cidades �nicas que temos cadastrados em nosso sistema?

SELECT *
FROM Person.Address;
 
SELECT DISTINCT City
FROM Person.Address
ORDER BY City;

-- 5- Quantos produtos vermelhos tem pre�o entre 500 e 1000 dolares

SELECT *
FROM Production.Product;

SELECT COUNT(Color)
FROM Production.Product
WHERE Color = 'Red' 
AND ListPrice BETWEEN 500 AND 1000;


-- 6- Quantos produtos cadastrados tem a palavra "road" no nome deles?

SELECT *
FROM Production.Product;

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE'%road%';