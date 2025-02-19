SELECT * FROM Person.Person
SELECT FirstName, count(FirstName) AS 'Contagem'
FROM Person.Person
GROUP BY FirstName
HAVING count(FirstName) > 10

SELECT * FROM Sales.SalesOrderDetail

SELECT ProductID, SUM(LineTotal) AS 'Total'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

SELECT * FROM Person.Person
SELECT FirstName, count(FirstName) AS 'Contagem'
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING count(FirstName) > 10


--Identifique as provincias ( stateProvincedId) com o maior numero de cadastros no nosso sistema,
--entao é preciso encontrar quais provincias estao registradas no banco mais que 1000x

SELECT * FROM Person.Address
SELECT StateProvinceID, Count(StateProvinceID) AS 'Contagem'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

/* Quais produtos nao estao trazendo em media no minimo 1 milhao em total 
de vendas*/

SELECT ProductID, AVG(LineTotal) as 'MédiaTotal'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000 
ORDER BY MédiaTotal ASC


