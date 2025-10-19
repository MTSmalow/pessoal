CREATE TABLE TipoLugar (
    Id INT IDENTITY PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL
);

INSERT INTO TipoLugar(Nome)
VALUES 
	('Sala'),
	('Laboratório'),
	('Quadra'),
	('Auditório');

CREATE TABLE Lugar (
    Id INT IDENTITY PRIMARY KEY,
    Descricao VARCHAR(100) NOT NULL,
    Andar INT NOT NULL,
    Restricao VARCHAR(50),
    Numero INT,
    TipoLugarId INT NOT NULL,
    CONSTRAINT FK_Lugar_TipoLugar FOREIGN KEY (TipoLugarId) REFERENCES TipoLugar(Id)
);

INSERT INTO Lugar(Descricao, Andar, Restricao, Numero, TipoLugarId)
VALUES
	('Informática', 0, '', 1, 2),
	('Informática', 0, '', 2, 2),
	('Informática', 0, '', 3, 2),
	('Informática', 1, '', 6, 2),
	('Servidor', 1, 'Acesso Restrito', 1, 2),
	('Sala de Aula', 1, '', 1, 1),
	('Sala de Aula', 1, '', 2, 1),
	('Sala de Aula', 1, '', 3, 1),
	('Sala de Aula', 1, '', 4, 1),
	('Sala de Aula', 1, '', 5, 1),
	('Refeitório', 0, '', 1, 1),
	('Enfermagem', 0, '', 1, 2),
	('Química', 0, '', 1, 2),
	('Biblioteca', 0, '', 1, 1);

CREATE TABLE Chave (
    Id INT IDENTITY PRIMARY KEY,
    LugarId INT NOT NULL,
    CONSTRAINT FK_Chave_Lugar FOREIGN KEY (LugarId) REFERENCES Lugar(Id)
);

INSERT INTO Chave(LugarId)
VALUES 
	(1),
	(1),
	(2),
	(2),
	(3),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10),
	(11),
	(12),
	(13),
	(14);

CREATE TABLE Cargo (
    Id INT IDENTITY PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2)
);

-- Inserir os cargos: Segurança, Professor, Coordenador, Diretor e Auxiliar Docente

CREATE TABLE Turno (
    Id INT IDENTITY PRIMARY KEY,
    Descricao VARCHAR(50) NOT NULL,
    Inicio TIME NOT NULL,
    Fim TIME NOT NULL
);

-- Inserir os turnos: manhã, tarde, noite e madrugada

CREATE TABLE Funcionario (
    Id INT IDENTITY PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    RG VARCHAR(15) NOT NULL,
    CPF CHAR(11) NOT NULL,
    CargoId INT NOT NULL,
	CONSTRAINT UQ_Funcionario_RG UNIQUE (RG),
    CONSTRAINT UQ_Funcionario_CPF UNIQUE (CPF),
    CONSTRAINT FK_Funcionario_Cargo FOREIGN KEY (CargoId) REFERENCES Cargo(Id)
);

-- Inserir os funcionários: 
-- Gusthavo Santos (Auxiliar Docente),
-- Adriano Martins (Segurança),
-- Kaio Silva (Segurança),
-- Lorena Menezes (Segurança),
-- Lucas Teixeira (Professor),
-- Rafael Batista (Professor),
-- Victor Silva (Professor),
-- Ana Silva (Professor),
-- Camila Teruya (Coordenador),
-- Fábio Paixao (Diretor)

CREATE TABLE TurnoFuncionario (
    Id INT IDENTITY PRIMARY KEY,
    FuncionarioId INT NOT NULL,
    TurnoId INT NOT NULL,
    CONSTRAINT FK_TurnoFuncionario_Funcionario FOREIGN KEY (FuncionarioId) REFERENCES Funcionario(Id),
    CONSTRAINT FK_TurnoFuncionario_Turno FOREIGN KEY (TurnoId) REFERENCES Turno(Id)
);

-- Inserir os turnos de TODOS os funcionários

CREATE TABLE Usuario (
    Id INT IDENTITY PRIMARY KEY,
    FuncionarioId INT NOT NULL,
    Senha VARCHAR(10) NOT NULL, 
    CONSTRAINT FK_Usuario_Funcionario FOREIGN KEY (FuncionarioId) REFERENCES Funcionario(Id)
);

-- Inserir os funcionários que serão usuários (cargo de segurança)

CREATE TABLE ControleChave (
    Id INT IDENTITY PRIMARY KEY,
    Retirada DATETIME NOT NULL DEFAULT GETDATE(),
    Devolucao DATETIME NULL,
    UsuarioId INT NOT NULL,
    FuncionarioId INT NOT NULL,
    ChaveId INT NOT NULL,
    CONSTRAINT FK_ControleChave_Usuario FOREIGN KEY (UsuarioId) REFERENCES Usuario(Id),
    CONSTRAINT FK_ControleChave_Funcionario FOREIGN KEY (FuncionarioId) REFERENCES Funcionario(Id),
    CONSTRAINT FK_ControleChave_Chave FOREIGN KEY (ChaveId) REFERENCES Chave(Id)
);

-- Inserindo os cargos
INSERT INTO Cargo (Titulo, Salario)
VALUES
    ('Segurança', 2500.00),
    ('Professor', 4000.00),
    ('Coordenador', 6000.00),
    ('Diretor', 8000.00),
    ('Auxiliar Docente', 2000.00);

-- Inserindo os turnos
INSERT INTO Turno (Descricao, Inicio, Fim)
VALUES
    ('Manhã', '06:00:00', '12:00:00'),
    ('Tarde', '12:00:00', '18:00:00'),
    ('Noite', '18:00:00', '00:00:00'),
    ('Madrugada', '00:00:00', '06:00:00');

-- Inserindo os funcionários
INSERT INTO Funcionario (Nome, RG, CPF, CargoId)
VALUES
    ('Gusthavo Santos', '123456789', '11111111111', 5), -- Auxiliar Docente
    ('Adriano Martins', '223456789', '22222222222', 1), -- Segurança
    ('Kaio Silva', '323456789', '33333333333', 1), -- Segurança
    ('Lorena Menezes', '423456789', '44444444444', 1), -- Segurança
    ('Lucas Teixeira', '523456789', '55555555555', 2), -- Professor
    ('Rafael Batista', '623456789', '66666666666', 2), -- Professor
    ('Victor Silva', '723456789', '77777777777', 2), -- Professor
    ('Ana Silva', '823456789', '88888888888', 2), -- Professor
    ('Camila Teruya', '923456789', '99999999999', 3), -- Coordenador
    ('Fábio Paixao', '133456789', '10101010101', 4); -- Diretor

-- Inserindo os turnos de todos os funcionários (exemplo: todos trabalham de manhã e tarde)
INSERT INTO TurnoFuncionario (FuncionarioId, TurnoId)
VALUES
    (1, 1), (1, 2),
    (2, 1), (2, 2),
    (3, 2), (3, 3),
    (4, 3), (4, 4),
    (5, 1), (5, 2),
    (6, 2), (6, 3),
    (7, 1), (7, 3),
    (8, 2), (8, 3),
    (9, 1), (9, 2),
    (10, 1), (10, 2);

-- Inserindo usuários (somente os funcionários com cargo de segurança)
INSERT INTO Usuario (FuncionarioId, Senha)
VALUES
    (2, 'seg123'),
    (3, 'seg456'),
    (4, 'seg789');