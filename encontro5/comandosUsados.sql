
--TELA X
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Funcionarios.IDADE, 
Projetos.ProjetoID, Projetos.NomeProjeto, Projetos.FuncionarioID AS FUNCIDVIAPROJETO
FROM Funcionarios
INNER JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

--TELA Y
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Funcionarios.IDADE, 
Projetos.ProjetoID, Projetos.NomeProjeto, Projetos.FuncionarioID AS FUNCIDVIAPROJETO
FROM Funcionarios
LEFT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

--TELA Z
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Funcionarios.IDADE, 
Projetos.ProjetoID, Projetos.NomeProjeto, Projetos.FuncionarioID AS FUNCIDVIAPROJETO
FROM Funcionarios
LEFT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;


-- NECESSIDADE DE PASSAR EM TODAS AS FUNCIONALIDADES E TROCAR O COMANDO DA QUERY


SELECT * FROM Funcionarios


CREATE VIEW FUNCIONARIOSPROJETOS AS (
	SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Funcionarios.IDADE, 
	Projetos.ProjetoID, Projetos.NomeProjeto, Projetos.FuncionarioID AS FUNCIDVIAPROJETO
	FROM Funcionarios
	LEFT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID
);


DROP VIEW FUNCIONARIOSPROJETOS

CREATE VIEW FUNCIONARIOSPROJETOS AS (
	SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Funcionarios.IDADE, 
	Projetos.ProjetoID, Projetos.NomeProjeto, Projetos.FuncionarioID AS FUNCIDVIAPROJETO
	FROM Funcionarios
	INNER JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID

);

SELECT * FROM FUNCIONARIOSPROJETOS

DROP VIEW FUNCIONARIOSPROJETOS

CREATE VIEW FUNCIONARIOSPROJETOS AS (
	SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Funcionarios.IDADE, 
	Projetos.ProjetoID, Projetos.NomeProjeto, Projetos.FuncionarioID AS FUNCIDVIAPROJETO
	FROM Funcionarios
	inner JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID
	WHERE Nome LIKE '%a%' --refletiu de maneira geral.. para a view como um todo... 
	--não apenas para a funcionalidade Y

);

DROP VIEW FUNCIONARIOSPROJETOS

CREATE VIEW FUNCIONARIOSPROJETOS AS (
	SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Funcionarios.IDADE, 
	Projetos.ProjetoID, Projetos.NomeProjeto, Projetos.FuncionarioID AS FUNCIDVIAPROJETO
	FROM Funcionarios
	inner JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID	
);


--uma view geral... sem condições no where
--cada tela/funcionalidade vai fazer o ajuste e filtro que precisa

select * from FUNCIONARIOSPROJETOS where Nome like '%a%'

--funcionalidade/tela X
select * from FUNCIONARIOSPROJETOS  order by Nome desc

--funcionalidade/tela z
select * from FUNCIONARIOSPROJETOS  order by Nome asc

--gerou o custo de cpu e leitura.
select * from Funcionarios

--aqui gerou custo de cpu, leitura, escrita 
insert into Funcionarios values (10, 'comando novo agora', 29)