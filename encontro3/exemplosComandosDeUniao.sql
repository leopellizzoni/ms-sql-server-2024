CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Projetos (
    ProjetoID INT PRIMARY KEY,
    FuncionarioID INT,
    NomeProjeto VARCHAR(50),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);

INSERT INTO Funcionarios (FuncionarioID, Nome) VALUES
(1, 'Carlos'),
(2, 'Mariana'),
(3, 'Pedro'),
(4, 'Fernanda');


INSERT INTO Projetos (ProjetoID, FuncionarioID, NomeProjeto) VALUES
(101, 1, 'Sistema de Vendas'),
(102, 3, 'Aplicativo Mobile'),
(103, NULL, 'Infraestrutura TI');


SELECT Funcionarios.Nome, Projetos.NomeProjeto
FROM Funcionarios
INNER JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;


SELECT Funcionarios.Nome, Projetos.NomeProjeto
FROM Funcionarios
LEFT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

SELECT Funcionarios.Nome, Projetos.NomeProjeto
FROM Funcionarios
RIGHT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;
