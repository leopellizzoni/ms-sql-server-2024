-- ***************************************************************
-- Exercício 1: Listar funcionários e seus respectivos projetos
-- ***************************************************************

-- Criação das tabelas
CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Projetos (
    ProjetoID INT PRIMARY KEY,
    FuncionarioID INT,
    NomeProjeto VARCHAR(100),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);

-- Inserção de dados
INSERT INTO Funcionarios (FuncionarioID, Nome) VALUES
(1, 'Carlos'),
(2, 'Mariana'),
(3, 'Pedro'),
(4, 'Fernanda');

INSERT INTO Projetos (ProjetoID, FuncionarioID, NomeProjeto) VALUES
(1, 1, 'Sistema de Vendas'),
(2, 3, 'Aplicativo Mobile'),
(3, NULL, 'Infraestrutura TI');

-- Resposta 1.1: INNER JOIN
SELECT Funcionarios.Nome, Projetos.NomeProjeto
FROM Funcionarios
INNER JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

-- Resposta 1.2: LEFT JOIN
SELECT Funcionarios.Nome, Projetos.NomeProjeto
FROM Funcionarios
LEFT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

-- Resposta 1.3: RIGHT JOIN
SELECT Funcionarios.Nome, Projetos.NomeProjeto
FROM Funcionarios
RIGHT JOIN Projetos ON Funcionarios.FuncionarioID = Projetos.FuncionarioID;

-- ***************************************************************
-- Exercício 2: Clientes e pedidos
-- ***************************************************************

-- Criação das tabelas
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Cidade VARCHAR(50)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    Valor DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserção de dados
INSERT INTO Clientes (ClienteID, Nome, Cidade) VALUES
(1, 'Ana', 'São Paulo'),
(2, 'João', 'Rio de Janeiro'),
(3, 'Maria', 'Belo Horizonte');

INSERT INTO Pedidos (PedidoID, ClienteID, Valor) VALUES
(1, 1, 500.00),
(2, 2, 150.00);

-- Resposta 2.1: INNER JOIN
SELECT Clientes.Nome, Pedidos.Valor
FROM Clientes
INNER JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

-- Resposta 2.2: LEFT JOIN
SELECT Clientes.Nome, Pedidos.Valor
FROM Clientes
LEFT JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

-- Resposta 2.3: RIGHT JOIN
SELECT Clientes.Nome, Pedidos.Valor
FROM Clientes
RIGHT JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

-- ***************************************************************
-- Exercício 3: Professores e disciplinas
-- ***************************************************************

-- Criação das tabelas
CREATE TABLE Professores (
    ProfessorID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Departamento VARCHAR(50)
);

CREATE TABLE Disciplinas (
    DisciplinaID INT PRIMARY KEY,
    ProfessorID INT,
    NomeDisciplina VARCHAR(50),
    FOREIGN KEY (ProfessorID) REFERENCES Professores(ProfessorID)
);

-- Inserção de dados
INSERT INTO Professores (ProfessorID, Nome, Departamento) VALUES
(1, 'Marcos', 'Matemática'),
(2, 'Ana', 'Física'),
(3, 'Joana', 'Química');

INSERT INTO Disciplinas (DisciplinaID, ProfessorID, NomeDisciplina) VALUES
(1, 1, 'Matemática'),
(2, 2, 'Física');

-- Resposta 3.1: INNER JOIN
SELECT Professores.Nome, Disciplinas.NomeDisciplina
FROM Professores
INNER JOIN Disciplinas ON Professores.ProfessorID = Disciplinas.ProfessorID;

-- Resposta 3.2: LEFT JOIN
SELECT Professores.Nome, Disciplinas.NomeDisciplina
FROM Professores
LEFT JOIN Disciplinas ON Professores.ProfessorID = Disciplinas.ProfessorID;

-- Resposta 3.3: RIGHT JOIN
SELECT Professores.Nome, Disciplinas.NomeDisciplina
FROM Professores
RIGHT JOIN Disciplinas ON Professores.ProfessorID = Disciplinas.ProfessorID;

-- ***************************************************************
-- Exercício 4: Alunos e matrículas
-- ***************************************************************

-- Criação das tabelas
CREATE TABLE Alunos (
    AlunoID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Curso VARCHAR(50)
);

CREATE TABLE Matriculas (
    MatriculaID INT PRIMARY KEY,
    AlunoID INT,
    Disciplina VARCHAR(50),
    FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID)
);

-- Inserção de dados
INSERT INTO Alunos (AlunoID, Nome, Curso) VALUES
(1, 'Lucas', 'Engenharia'),
(2, 'Maria', 'Computação'),
(3, 'João', 'Matemática');

INSERT INTO Matriculas (MatriculaID, AlunoID, Disciplina) VALUES
(1, 1, 'Programação'),
(2, 2, 'Redes');

-- Resposta 4.1: INNER JOIN
SELECT Alunos.Nome, Matriculas.Disciplina
FROM Alunos
INNER JOIN Matriculas ON Alunos.AlunoID = Matriculas.AlunoID;

-- Resposta 4.2: LEFT JOIN
SELECT Alunos.Nome, Matriculas.Disciplina
FROM Alunos
LEFT JOIN Matriculas ON Alunos.AlunoID = Matriculas.AlunoID;

-- Resposta 4.3: RIGHT JOIN
SELECT Alunos.Nome, Matriculas.Disciplina
FROM Alunos
RIGHT JOIN Matriculas ON Alunos.AlunoID = Matriculas.AlunoID;