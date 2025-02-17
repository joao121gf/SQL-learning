--Between 
SELECT *
FROM Person.Person
WHERE BusinessEntityID BETWEEN 10  AND 20

SELECT * FROM Production.Product WHERE ListPrice NOT BETWEEN 1000 AND 1500

SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate

SELECT * FROM Person.Person
WHERE FirstName NOT IN ('Rob', 'Roberto')

SELECT * FROM Person.Person
WHERE FirstName like ('Rob%')

SELECT * FROM Person.Person
WHERE FirstName LIKE ('%dro')

SELECT * FROM Person.Person
WHERE FirstName Like ('%essa%')