--departments, employees, project_assignments, projects
--Liste o salário médio de todos os funcionários.

SELECT * FROM employees
SELECT ROUND(AVG(salary)::numeric, 2) as media_salarial
FROM employees


--Mostre os nomes dos funcionários que ganham mais que o salário médio geral.
--Dica: use uma subconsulta para pegar o salário médio.

SELECT first_name, salary, (SELECT ROUND(AVG(salary)::numeric, 2) as media_todos FROM employees)
FROM employees
WHERE salary > (
	SELECT AVG(salary)
	FROM employees
)

--Mostre os nomes dos departamentos e a quantidade de funcionários em cada um.
SELECT D.department_name, COUNT(E.employee_id)
FROM departments as D
INNER JOIN employees AS E ON E.department_id = D.department_id
GROUP BY D.department_name



--Mostre apenas os departamentos com mais de 5 funcionários.
SELECT D.department_name, COUNT(E.employee_id) as funcionarios
FROM departments as D
INNER JOIN employees as E ON E.department_id = D.department_id
GROUP BY D.department_name
HAVING COUNT(E.employee_id) > 5

--Liste o nome e salário dos funcionários que têm o maior salário da empresa.
SELECT first_name, ROUND(salary::numeric, 2)
FROM employees
WHERE salary = (SELECT MAX(salary)FROM employees)



--Mostre os nomes dos departamentos que têm pelo menos um funcionário
--com salário acima de R$ 10.000.
SELECT D.department_name, COUNT(E.employee_id) as contagem
FROM departments as D
INNER JOIN employees as E ON E.department_id = D.department_id
WHERE E.salary > 10000
GROUP BY D.department_name


--Liste os nomes dos funcionários que trabalham no mesmo departamento do funcionário "João".
--Use uma subconsulta para descobrir o department_id do João.
SELECT * FROM employees

SELECT E.first_name, D.department_name
FROM employees as E
INNER JOIN departments as D ON D.department_id = E.department_id
WHERE E.department_id = (
SELECT department_id
FROM employees
WHERE first_name = 'Patricia'
LIMIT 1
)



--Mostre os funcionários cujo salário está entre o menor e o maior salário da empresa.
--Use subconsultas para encontrar MIN(salary) e MAX(salary).

SELECT * FROM employees
WHERE salary > and 

