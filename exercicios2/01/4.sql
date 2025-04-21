--Avançado
--departments, employees, project_assignments, projects
--Liste os funcionários que não estão alocados em nenhum projeto.


SELECT E.employee_id, E.first_name
FROM employees as E
LEFT JOIN project_assignments as PA ON PA.employee_id = E.employee_id
WHERE PA.employee_id IS NULL


--Encontre a média de horas por projeto, por funcionário.
SELECT E.employee_id, E.first_name, ROUND(AVG(PA.hours_allocated)::numeric, 2) as hours
FROM employees as E
INNER JOIN project_assignments AS PA ON PA.employee_id = E.employee_id
GROUP BY E.employee_id, E.first_name
ORDER BY hours DESC


--Liste os projetos que começaram em 2023 e ainda não terminaram.
SELECT project_id, start_date, end_date
FROM projects
WHERE EXTRACT (YEAR FROM start_date::date) = 2023

--Liste os departamentos que possuem mais de 10 funcionários com salário acima da média geral.
SELECT * FROM employees
SELECT * FROM departments
SELECT * FROM projects

SELECT D.department_id, D.department_name, COUNT(E.employee_id) as funcionarios, AVG(E.salary) as avg
FROM departments as D
INNER JOIN employees as E ON E.department_id = D.department_id
GROUP BY D.department_id, D.department_name
HAVING COUNT(E.employee_id) > 10 AND AVG(E.salary) > 0

SELECT * FROM employees
SELECT D.department_name, ROUND(AVG(E.salary)::numeric, 2) as media_salario
FROM departments as D
INNER JOIN employees as E ON E.department_id = D.department_id
GROUP BY D.department_name



SELECT D.department_name, COUNT(E.employee_id) AS total_employees
FROM departments AS D
INNER JOIN employees AS E ON E.department_id = D.department_id
WHERE E.salary > (
    SELECT ROUND(AVG(E2.salary)::numeric, 2)
    FROM employees AS E2
    WHERE E2.department_id = D.department_id
)
GROUP BY D.department_name
HAVING COUNT(E.employee_id) > 6;


--Crie uma view que mostra: nome do funcionário, nome do projeto, horas alocadas e nome do departamento.