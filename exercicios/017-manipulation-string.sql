--Manipulaçao em string
 -- https://learn.microsoft.com/en-us/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver16
 SELECT CONCAT(FirstName, ' ' , LastName) AS NomeCompleto
 FROM Person.Person


 SELECT UPPER(FirstName)
 FROM Person.Person


 SELECT LOWER(FirstName)
 FROM Person.Person

 
 SELECT LEN(FirstName), FirstName
 FROM Person.Person

  
 SELECT SUBSTRING(FirstName, 1, 3), FirstName -- começa do indice 1 e extrai 3 letras
 FROM Person.Person


 SELECT REPLACE(ProductNumber, '-', '$asd') , ProductNumber
 FROM Production.Product

