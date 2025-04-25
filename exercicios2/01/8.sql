--departamentos, funcionarios, projetos, funcionarios_projetos
SELECT * FROM funcionarios_projetos

--Liste o nome dos funcionários e o nome do departamento onde trabalham.
SELECT F.nome, D.nome
FROM funcionarios as F
INNER JOIN departamentos as D ON D.id = F.departamento_id


--Mostre o total de funcionários por departamento.
SELECT D.nome, COUNT(F.id)
FROM departamentos as D
INNER JOIN funcionarios as F ON F.departamento_id = D.id
GROUP BY D.nome

--Liste todos os projetos com os nomes dos funcionários que participam deles.
SELECT P.nome AS departamento, F.nome
FROM projetos as P
INNER JOIN funcionarios as F ON F.departamento_id = P.departamento_id


--Mostre os nomes dos funcionários que participam de mais de um projeto.
SELECT F.nome, COUNT(FP.funcionario_id) as cont
FROM funcionarios as F
INNER JOIN funcionarios_projetos as FP ON FP.funcionario_id = F.id
GROUP BY F.nome
HAVING COUNT(FP.funcionario_id) > 1

--Encontre o funcionário com o maior salário em cada departamento.
SELECT D.nome, MAX(F.salario)
FROM departamentos as D
INNER JOIN funcionarios as F ON F.departamento_id = D.id
GROUP BY D.nome


--Liste os funcionários que não estão atribuídos a nenhum projeto.
SELECT F.nome, COUNT(FP.funcionario_id)
FROM funcionarios as F
INNER JOIN funcionarios_projetos as FP ON FP.funcionario_id = F.id
GROUP BY F.nome

--Calcule a média salarial por departamento.
SELECT D.nome, ROUND(AVG(F.salario::numeric), 2)
FROM departamentos as D
INNER JOIN funcionarios as F ON F.id = D.id
GROUP BY D.nome

--Liste os projetos que envolvem funcionários de mais de um departamento.
SELECT * FROM departamentos
SELECT * FROM funcionarios_projetos
SELECT * FROM funcionarios



