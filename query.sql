SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna'

SELECT *
FROM Production.Product
WHERE Name = 'blade' or color = 'black'

SELECT *
FROM Production.product
WHERE ListPrice >= 2500 and ListPrice < 5000

SELECT *
FROM Production.Product
WHERE Color <> 'red'


/*A equipe de producao precisa do nome de todas as pecas que pesam mais que 500kg, mas nao mais que 700kg para inspecao */
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight < 700;

/*Foi pedido um relacao de todos os empregadores que sao casados, e sao asalariados */
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

/* Um usuário chamado Peter Krebs está devendo um pagamento, consiga o email dele para que possamos
enviar uma cobrança!*/
SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' and lastName = 'Krebs';

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26
