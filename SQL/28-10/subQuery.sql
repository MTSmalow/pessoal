CREATE TABLE Alunos (
idAluno INT PRIMARY KEY,
nome VARCHAR(50),
idade INT
);

CREATE TABLE Notas (
idNota INT PRIMARY KEY,
idAluno INT,
nota DECIMAL(3,1),
FOREIGN KEY (idAluno) REFERENCES Alunos(idAluno)
);

INSERT INTO Alunos VALUES
(1, 'Ana', 17),
(2, 'Bruno', 18),
(3, 'Camila', 19),
(4, 'Daniel', 17),
(5, 'Eduarda', 18),
(6, 'Felipe', 19),
(7, 'Gabriela', 17),
(8, 'Henrique', 18),
(10, 'Vicaria 2', 23);

INSERT INTO Notas VALUES
(1, 1, 8.5),
(2, 2, 7.0),
(3, 3, 9.0),
(4, 4, 7.5),
(5, 5, 9.5),
(6, 6, 6.0),
(7, 7, 8.0),
(8, 8, 7.2),
(10,10, 6);

--Exercício 1: Listar o nome dos alunos que têm nota maior que 8 usando subconsulta.
SELECT nome
FROM Alunos
WHERE idAluno IN (
    SELECT idAluno
    FROM Notas
    WHERE nota > 8
);

-- Exercício 2: Exibir o nome do aluno que possui a maior nota.
SELECT nome
FROM Alunos
WHERE idAluno IN (
    SELECT idAluno
    FROM Notas
    WHERE nota = (SELECT MAX(nota) FROM Notas)
);

-- Exercício 3: Listar os alunos cuja idade é maior que a média de idade dos alunos.
SELECT nome
FROM Alunos
WHERE idade > (
    SELECT AVG(idade)
    FROM Alunos
);


-- 4. Mostrar os alunos que não têm nota registrada.
SELECT A.nome
FROM Alunos A
LEFT JOIN Notas N ON A.idAluno = N.idAluno
WHERE N.Nota IS NULL;

-- 5. Exibir o nome e a nota dos alunos que possuem nota igual à menor nota registrada.
SELECT A.nome, N.nota
FROM Alunos A
JOIN Notas N ON A.idAluno = N.idAluno
WHERE N.nota = (SELECT MIN(nota) FROM Notas);