-- CHECK CONSTRAINT
--RESTRICOES DE VALORES QUE PODEM SER INSERIDAS NAS 
--COLUNAS QUANDO VC ESTA CRIANDO UMA TABELA NOVA




CREATE TABLE carteiraMotorista(
	id int NOT NULL,
	nome varchar(150) NOT NULL,
	Idade INT CHECK (idade >= 18)  -- vai checar se a idade é maior que 18, se nao da erro

)


SELECT * FROM carteiraMotorista

INSERT INTO carteiraMotorista(id, nome, Idade)
VALUES(3, 'josao', 16)
