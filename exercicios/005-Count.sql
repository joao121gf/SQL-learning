SELECT *
FROM Person.Person
ORDER BY FirstName asc, LastName desc


SELECT *
FROM Person.Person
ORDER BY FirstName desc

SELECT FirstName
FROM person.Person
ORDER BY MiddleName asc

--Product ID dos 10 itens mais caros listando do mais caro ao mais barato

SELECT TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice desc
