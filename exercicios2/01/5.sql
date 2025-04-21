--Liste todos os funcionários que ganham mais que o salário médio de todos os funcionários.
--Utilize uma subconsulta para calcular o salário médio.

--departments, employees, project_assignments, projects
SELECT * FROM employees

SELECT employee_id, first_name, salary, (SELECT AVG(salary) FROM employees) AS media_salarial
FROM employees
WHERE salary > (
	SELECT AVG(salary)
	FROM employees
)


--Liste os departamentos que têm um número de funcionários maior que a média de funcionários por departamento.
--Utilize uma subconsulta para calcular a média de funcionários por departamento.
SELECT * FROM departments
SELECT * FROM employees

SELECT D.department_name, AVG(E.employee_id)
FROM departments as D
INNER JOIN employees as E ON E.department_id = D.department_id
GROUP BY D.department_name


SELECT AVG(qtd_funcionarios) AS media_funcionarios_por_departamento
FROM (
    SELECT D.department_id, COUNT(E.employee_id) AS qtd_funcionarios
    FROM departments AS D
    LEFT JOIN employees AS E ON E.department_id = D.department_id
    GROUP BY D.department_id
) AS sub;

SELECT D.department_name, COUNT(E.employee_id) AS total_funcionarios
FROM departments AS D
JOIN employees AS E ON D.department_id = E.department_id
GROUP BY D.department_name
HAVING COUNT(E.employee_id) > (
    SELECT AVG(contagem)
    FROM (
        SELECT COUNT(employee_id) AS contagem
        FROM employees
        GROUP BY department_id
    ) AS sub
);
