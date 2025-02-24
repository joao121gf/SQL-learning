SELECT * FROM SALES.SalesOrderHeader
-- SABER O MES QUE FOI FEITO O PEDIDO E O SalersOrderID
SELECT SalesOrderID, DATEPART (MONTH, OrderDate) AS Month, OrderDate
FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue) AS Media, DATEPART(MONTH, OrderDate) AS month
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY MONTH

SELECT * FROM PERSON.Person
SELECT ModifiedDate, DATEPART(YEAR,ModifiedDate) AS Year
, DATEPART(MONTH,ModifiedDate) AS Month
FROM PERSON.Person