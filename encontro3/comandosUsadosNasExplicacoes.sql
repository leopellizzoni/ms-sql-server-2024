select * from Funcionarios
select * from projetos

SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Funcionarios
INNER JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Funcionarios
LEFT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

--Continua com o left join mas trocou as tabelas de lugar
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Projetos
LEFT JOIN Funcionarios ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Funcionarios
RIGHT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

--continua com o right join mas trocou as tabelas de lugar
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Funcionarios
RIGHT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

--UNIÃO DE TUDO COM TUDO (TODOS FUNCIONARIOS E TODOS OS PROJETOS)
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Funcionarios
FULL JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID

--INVERTE O JOIN, TROUXE OS FUNCIONÁRIOS QUE NÃO PARTICIPAM DE NENHUM PROJETO E OS PROJETOS QUE NÃO TEM NENHUM FUNCIONARIO COMO RESPONSÁVEL
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Funcionarios
FULL JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID
WHERE Funcionarios.FuncionarioID IS  NULL OR Projetos.ProjetoID IS NULL

--UNINDO AS 2 TABELAS E MOSTRANDO APENAS OS FUNCIONARIOS QUE NÃO TENHAM NENHUM PROJETO.
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Funcionarios
LEFT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID
WHERE Projetos.ProjetoID IS NULL

--FAZ  O MESMO DO ANTERIOR VIA SUBQUERIE NO WHERE
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome
FROM Funcionarios
WHERE FuncionarioID NOT IN (SELECT FuncionarioID FROM PROJETOS WHERE FuncionarioID IS NOT NULL)

--BUSCA OS PROJETOS QUE NÃO POSSUEM UM RESPONSÁVEL VINCULADO
SELECT Funcionarios.FuncionarioID, Funcionarios.Nome, Projetos.ProjetoID, Projetos.NomeProjeto
FROM Funcionarios
RIGHT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID
WHERE Funcionarios.FuncionarioID IS NULL

--EXECUTA O MESMO QUE O ANTERIOR SEM O JOIN PORQUE TEM A RELAÇÃO FK COM FUNCIONARIOS
SELECT Projetos.ProjetoID, Projetos.NomeProjeto
FROM Projetos
WHERE FuncionarioID IS NULL