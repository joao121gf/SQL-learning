--SELECT NOME_COLUNA
--FROM TABELA A, TABELA B
--WHERE CONDICAO




SELECT A.ContactName,A.Region, B.ContactName,  b.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region



--Eu quero encontrar (nome e data de contratacao)
-- todos os funcionários que foram contratados no mesmo ano

SELECT * FROM Employees


SELECT a.FirstName, a.HireDate,b.FirstName, b.HireDate
FROM Employees AS a, Employees AS B
WHERE DATEPART(YEAR,a.hiredate) = DATEPART(YEAR,b.hiredate)

--EU QUERO SABER NA TABELA DETALHE DO PEDIDO 
--QUAIS PRODUTOS TEM O MESMO PORCENTUAL DE DESCONTO

SELECT * FROM [Order Details]
SELECT a.productID, a.Discount, b.productID, b.Discount
FROM [Order Details] A, [Order Details] B
WHERE a.Discount = b.Discount and a.Discount <> 0