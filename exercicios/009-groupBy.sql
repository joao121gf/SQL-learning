--Quanto de cada produto foi vendido até hoje?
SELECT * FROM SALES.SalesOrderDetail
SELECT ProductID, COUNT(ProductID) AS 'CONTAGEM'
FROM Sales.SalesOrderDetail
GROUP BY ProductID


--Quantos nomes de cada nome temos cadastrados
SELECT * FROM Person.Person
SELECT FirstName, COUNT(FirstName) AS 'Quantidade'
FROM Person.Person
GROUP BY FirstName
ORDER BY Quantidade DESC


-- Qual a media de preço dos produtos que sao pratas
SELECT * FROM Production.Product
WHERE Color = 'silver'

SELECT Name, AVG(ListPrice) AS 'Media'
FROM Production.Product
GROUP BY Name
ORDER BY Media DESC


SELECT Color, AVG(ListPrice) AS 'Média'
FROM Production.Product
GROUP BY Color
ORDER BY Média DESC

-- Quantas pessoas tem o mesmo middle name, agrupadas pelo nome e quantidade
SELECT MiddleName, COUNT(MiddleName) AS 'Contagem'
FROM Person.Person
GROUP BY MiddleName
ORDER BY Contagem DESC

--Saber em média a quantidade que cada produto é vendido na loja
SELECT ProductId, AVG(OrderQty) AS 'MÉDIA'
FROM Sales.SalesOrderDetail
GROUP BY ProductID


--Qual foram as 10 vendas que no total tiveram os maiores valores de venda por produto do maior valor para o menor
SELECT * FROM Sales.SalesOrderDetail

SELECT TOP 10 SalesOrderID, MIN(LineTotal) AS 'Valor'
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
ORDER BY Valor DESC

SELECT TOP 10 ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(linetotal) DESC

--Quantos produtos e qual a qtd media de produtos cadastrados no WorkOrder, agrupados por id
SELECT * FROM Production.WorkOrder

SELECT ProductId, COUNT(ProductID) AS 'Contagem', AVG(OrderQty) AS 'media'
FROM Production.WorkOrder
GROUP BY ProductID