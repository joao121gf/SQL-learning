--Quero descobrir quais pessoas tem um cartao de credito registrado
SELECT * FROM Person.Person
SELECT * FROM Sales.PersonCreditCard

SELECT p.BusinessEntityID, p.FirstName, cc.CreditCardID
FROM Sales.PersonCreditCard AS cc
RIGHT JOIN Person.Person AS p on p.BusinessEntityID = cc.BusinessEntityID
WHERE CC.BusinessEntityID IS NULL