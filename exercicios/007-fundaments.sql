-- QUANTO PRODUTOS CADASTRADOS NO SISTEMA CUSTAM MAIS DE 1500 DOLARES === 39 ?
SELECT count(*) FROM Production.Product WHERE ListPrice >= 1500

-- QUANTAS PESSOAS TEMOS COM SOBRENOME QUE INICIA COM P === 1187
SELECT count(LastName) FROM Person.Person WHERE LastName LIKE ('p%')
SELECT LastName FROM person.Person WHERE LastName LIKE ('p%')

--EM QUANTAS CIDADE UNICAS ESTAO CADASTRADOS EM NOSSO SISTEMA = 238
SELECT count(DISTINCT name) FROM Person.CountryRegion
SELECT  name FROM Person.CountryRegion

--QUAIS SAO AS CIDADE UNICAS ESTAO CADASTRADOS NOSSO SISTEMA =  
SELECT DISTINCT City FROM Person.Address


-- QUANTOS PRODUTOS VERMELHOS TEM PRECO ENTRE 500 A 1000 DOLARES === 11?

SELECT * FROM Production.Product
SELECT count(color) FROM Production.Product WHERE color = 'red' and ListPrice BETWEEN 500 and 1000


--Quantos produtos cadastrados Tem a palavra road no nome deles === 103
SELECT count(name) FROM Production.Product
WHERE name LIKE '%road%'