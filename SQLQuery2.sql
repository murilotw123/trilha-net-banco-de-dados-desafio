--1
SELECT Nome,Ano
FROM Filmes

--2

SELECT Nome,Ano
FROM Filmes
ORDER BY Ano desc

--3

SELECT Nome,Ano, Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--4

SELECT * FROM Filmes
WHERE Ano = 1997

--5

SELECT * FROM Filmes
WHERE Duracao between 100 and 150
ORDER BY Duracao asc

--6

SELECT
    Ano,
    COUNT(*) AS quantidade_filmes,
    AVG(duracao) AS duracao_media
FROM
    filmes
GROUP BY
    Ano
ORDER BY
    duracao_media DESC;

--7


SELECT * FROM Atores
WHERE Genero = 'M'

--8

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


--9

SELECT Nome, Genero FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id

--10

SELECT Nome, Genero FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Genero = 'Mistério'

--11

SELECT Nome, PrimeiroNome, UltimoNome, Papel   FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON filmes.Id = ElencoFilme.id