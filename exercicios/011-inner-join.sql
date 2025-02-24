--BusinessEntityID, FirstName,LastNmae,EmailAdress
SELECT TOP 10 * FROM PERSON.PERSON
SELECT BusinessEntityId, FirstName AS 'FirstName', LastName AS 'LastName', INNER JOIN EmailAdressID
FROM Person.Person

SELECT TOP 10 * FROM PERSON.EmailAddress
SELECT p.BusinessEntityId, p.firstname, p.lastname, pe.emailaddress
FROM PERSON.Person as P
INNER JOIN person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID


--Queremos os nomes dos produtos e as informacoes de suas subcategorias e o pre�o de cada um

SELECT TOP 10 * FROM Production.Product

SELECT prod.Name, prodCat.Name, prod.ListPrice
FROM Production.Product AS prod
INNER JOIN Production.ProductSubcategory prodCat on 
prod.ProductSubcategoryID = prodCat.ProductSubcategoryID

SELECT TOP 10 * FROM Person.BusinessEntityAddress
SELECT TOP 10 * FROM Person.Address


SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID


--BUSINESSENTITYID, NAME, PHONENUMBERTYPEID, PHONENUMBER

SELECT TOP 10 *
FROM Person.PhoneNumberType
SELECT TOP 10 *
FROM Person.PersonPhone


SELECT PersonPhone.BusinessEntityID, PersonNumber.Name, PersonNumber.PhoneNumberTypeID, PersonPhone.PhoneNumber
FROM Person.PhoneNumberType AS PersonNumber
INNER JOIN Person.PersonPhone AS PersonPhone on
PersonPhone.PhoneNumberTypeID = PersonNumber.PhoneNumberTypeID

--Tabela person.stateprovince e person.adress
-- AdressID, City, StateProvidencID, Nome do estado
SELECT * FROM Person.StateProvince
SELECT * FROM Person.Address


SELECT a.AddressID, a.City, a.StateProvinceID, s.Name
FROM Person.Address AS a
INNER JOIN Person.StateProvince AS s on a.StateProvinceID = s.StateProvinceID