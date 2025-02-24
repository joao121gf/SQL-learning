/* O OPERADOR UNION COMBINA DOIS OU MAIS RESULTADOS DE UM 
SELECT EM UM RESULTADO APENAS


SELECT coluna1, coluna2
FROM tabela 1
UNION
SELECT coluna1, coluna2
FROM tabela2  

O UNION alem de juntar as informacoes ele vai exluir resultados duplicados
a nao ser que vc use o UNION ALL pra juntar duplicados



*/


SELECT * FROM Person.Person
SELECT * FROM Person.Address


SELECT FirstName, Title
FROM Person.Person
WHERE Title IS NOT NULL
UNION
SELECT City, AddressLine1
FROM Person.Address
WHERE City = 'Miami'