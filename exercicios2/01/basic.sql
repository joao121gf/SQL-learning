--Intermediário
--departments, employees, project_assignments, projects.


--Liste os nomes dos funcionários e o nome do departamento ao qual pertencem.
SELECT E.first_name, D.department_name
FROM employees AS E
INNER JOIN departments AS D ON E.department_id = D.department_id




--Conte quantos funcionários há por departamento.SELECT D.department_name, COUNT(E.employee_id) AS total_func
FROM employees AS E
INNER JOIN departments AS D ON E.department_id = D.department_id
GROUP BY D.department_name




--Encontre o funcionário com o maior salário.
SELECT employee_id,first_name, ROUND(salary::numeric, 2)
FROM employees
ORDER BY salary DESC
LIMIT 1


--Liste os projetos com mais de 100 horas alocadas no total.
SELECT * FROM project_assignments
WHERE hours_allocated > 100
ORDER BY hours_allocated ASC

--Liste todos os funcionários que participaram de algum projeto.
SELECT DISTINCT e.*
FROM employees e
INNER JOIN project_assignments pa ON e.employee_id = pa.employee_id;



--Liste todos os projetos e quantos funcionários estão alocados em cada um.
SELECT P.project_name, COUNT(A.project_id) as contagem
FROM projects as P
INNER JOIN project_assignments AS A ON A.project_id = P.project_id
GROUP BY project_name


--Liste os 5 funcionários com maior número total de horas alocadas em projetos.
SELECT A.employee_id, E.first_name, SUM(hours_allocated) AS hour
FROM project_assignments as A
INNER JOIN employees as E ON E.employee_id = A.employee_id
GROUP BY E.first_name, A.employee_id
ORDER BY hour DESC
LIMIT 5

--Calcule o salário total por departamento.

SELECT D.department_name, SUM(ROUND(E.salary::numeric, 2)) as soma
FROM departments AS D
INNER JOIN employees AS E ON E.department_id =  D.department_id 
GROUP BY D.department_name
ORDER BY soma DESC