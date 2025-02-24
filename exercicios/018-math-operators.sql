--FUNCOES MATEMÁTICAS
SELECT * FROM Sales.SalesOrderDetail

SELECT UnitPrice + LineTotal
FROM Sales.SalesOrderDetail


SELECT AVG (UnitPrice + LineTotal)
FROM Sales.SalesOrderDetail


SELECT ROUND(LineTotal, 0), LineTotal -- arredondamento
FROM Sales.SalesOrderDetail

