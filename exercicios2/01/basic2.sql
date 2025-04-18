--Básico
--Selecione todos os dados da tabela employees.
SELECT * FROM employees

--Liste os nomes e salários dos funcionários.
SELECT first_name AS Primeiro_nome, salary AS salario
FROM employees

--Encontre todos os funcionários que ganham mais de R$ 10.000.
SELECT first_name AS Primeiro_nome,ROUND(salary::numeric, 2) AS salario
FROM employees
WHERE salary > 10000
ORDER BY salary DESC



--Liste os funcionários contratados após 1º de janeiro de 2020.
SELECT * FROM employees
WHERE EXTRACT (MONTH FROM hire_date::DATE) = 2


--Conte quantos funcionários existem no total.
SELECT count(employee_id) as total_employess
FROM employees

--Liste os departamentos distintos existentes.
SELECT department_name FROM departments


--Encontre o salário médio dos funcionários.
SELECT TO_CHAR(AVG(ROUND(salary::numeric, 2)),'FM999999999.00') as Salario_medio
FROM employees
