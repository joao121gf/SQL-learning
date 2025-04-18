--departments, employees, project_assignments, projects

SELECT * FROM employees
SELECT * FROM departments


--Liste os nomes dos funcionários e o nome do departamento ao qual pertencem.
SELECT E.first_name, D.department_name AS department
FROM employees AS E
INNER JOIN departments as D ON D.department_id = E.department_id

--Conte quantos funcionários há por departamento.
SELECT D.department_name,COUNT(E.department_id) as contagem
FROM departments as D
INNER JOIN employees as E ON E.department_id = D.department_id
GROUP BY  D.department_name



--Encontre o funcionário com o maior salário.
SELECT * FROM employees
SELECT employee_id, first_name, ROUND(salary::numeric, 2)
FROM employees
ORDER BY salary DESC
LIMIT 1


--Liste os projetos com mais de 100 horas alocadas no total.

--Liste todos os funcionários que participaram de algum projeto.

--Liste todos os projetos e quantos funcionários estão alocados em cada um.

Liste os 5 funcionários com maior número total de horas alocadas em projetos.

Calcule o salário total por departamento.

