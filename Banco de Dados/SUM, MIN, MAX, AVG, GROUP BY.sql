USE AdventureWorks2017;
-- FUNÇÕES DE AGREGAÇÃO, BASICAMENTE AGREGAM OU COMBINAM DADOS DE UMA TABELA EM UM RESULTADO APENAS

-- ########## "SUM" RETORNA A SOMA DE TODOS OS REGISTROS DA COLUNA ESPECIFICADA ##########
SELECT TOP 10 *
FROM Sales.SalesOrderDetail;

SELECT TOP 10 SUM(LineTotal) AS "Soma"
FROM Sales.SalesOrderDetail;

-- ########## "MIN" RETORNA O VALOR MINIMO DA COLUNA ESPECIFIADA ##########
SELECT TOP 10 MIN(LineTotal) AS "Minimo"
FROM Sales.SalesOrderDetail;

-- ########## "MAX" RETORNA O VALOR MÁXIMO DA COLUNA ESPECIFICADA ##########
SELECT TOP 10 MAX(LineTotal) AS "Maximo"
FROM Sales.SalesOrderDetail;

-- ########## "AVG" RETORNA A MÉDIA GERAL DA COLUNA ESPECIFICADA ##########
SELECT TOP 10 AVG(LineTotal) AS "Media"
FROM Sales.SalesOrderDetail;




-- ########## "GROUP BY" DIVIDE O RESULTADO DA PESQUISA EM GRUPOS ##########
SELECT *
FROM Sales.SalesOrderDetail;

SELECT ProductID, COUNT(ProductID) AS "Contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;


SELECT FirstName, COUNT(FirstName) AS "Quantidade de pessoas com o mesmo nome"
FROM Person.Person
GROUP BY FirstName;

-- Na tabela production.product, quero saber a média de preço para os produtos que são pratas(silver)
SELECT AVG(ListPrice)
FROM Production.Product
WHERE Color = 'silver';

-- Na tabela production.product, quero saber a média de preço por cor
SELECT Color, AVG(ListPrice) AS "Média de preços"
FROM Production.Product
GROUP BY Color;


-- ########## DESAFIOS ###########

-- 1- Preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName

SELECT MiddleName, COUNT(FirstName) AS "Quantidade de pessoas com o mesmo MeddleName"
FROM Person.Person
GROUP BY MiddleName;

-- 2- Preciso saber a média da quantidade(quantity) que cada produto é vendido na loja
SELECT *
FROM Sales.SalesOrderDetail;

SELECT ProductID, AVG(OrderQty) AS "Média de vendas"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- 3- Quais foram as 10 vendas que no total tiveram os maiores valores de venda(line total) por produto do maior valor para o menor
SELECT *
FROM Sales.SalesOrderDetail;

SELECT TOP (10) ProductID, SUM(LineTotal) AS "Soma"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;

-- 4- Quantos produtos e quala quantidade media de produtos temos cadastrados nas nossas ordem de serviço(WorkOrder), agrupados por ProductId
SELECT *
FROM Production.WorkOrder;

SELECT COUNT(ProductId) AS "Quantidade de produtos",
AVG (OrderQty) AS "Quantidade média de produtos" 
FROM Production.WorkOrder
GROUP BY ProductID;