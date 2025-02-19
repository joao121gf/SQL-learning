SELECT TOP 10 LineTotal
FROM Sales.SalesOrderDetail

SELECT TOP 10 sum(LineTotal) AS 'soma'
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(Linetotal) AS 'MIN'
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(LineTotal) AS 'MEDIA'
FROM sales.SalesOrderDetail