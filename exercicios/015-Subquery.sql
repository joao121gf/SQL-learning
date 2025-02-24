--SUBQUERY == SUBSELECT QUE É UM SELECT DENTRO DE OUTRO SELECT


--monte um relatorio de todos produtos que tem o preço de venda acimda da media

SELECT * 
FROM Production.Product

SELECT * FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)


--eu quero saber o nome dos meus funcionarios que tem o cargo de design engineer
SELECT TOP 3* FROM PERSON.Person
SELECT TOP 3* FROM HumanResources.Employee

SELECT p.FirstName, h.JobTitle
FROM Person.Person AS p
INNER JOIN HumanResources.Employee AS h on p.BusinessEntityID = h.BusinessEntityID
WHERE h.JobTitle = 'Design Engineer'

SELECT FirstName From  Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer')

--QUERO QUE ENCONTRE TODOS OS ENDEREÇOS QUE ESTAO NO ESTADO DE 'ALBERTA'
--Person.address e Person.StateProvince
SELECT Top 3 * FROM Person.Address
SELECT Top 3 * FROM Person.StateProvince

SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID FROM Person.StateProvince
WHERE name = 'Alberta'
)