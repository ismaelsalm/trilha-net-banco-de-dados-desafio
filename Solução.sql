--1
select Nome, Ano from Filmes
--2
select Nome, Ano from Filmes order by Ano
--3
select Nome, Ano, Duracao from Filmes where Nome like 'De Volta para o Futuro'
--4
select Nome, Ano, Duracao from Filmes where Ano = 1997
--5
select Nome, Ano, Duracao from Filmes where Ano > 2000
--6
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao
--7
select Ano, count(Ano) as Quantidade from Filmes group by Ano order by Quantidade desc
--8
select PrimeiroNome, UltimoNome from Atores where Genero = 'M'
--9
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome
--10
select 
	F.Nome, 
	G.Genero 
from Filmes F
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on G.Id = FG.IdGenero
--11
select 
	F.Nome, 
	G.Genero 
from Filmes F
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on G.Id = FG.IdGenero
where G.Genero = 'Mistério'
--12
select 
	F.Nome as Filme, 
	A.PrimeiroNome, 
	A.UltimoNome, 
	E.Papel 
from Filmes F
inner join ElencoFilme E on E.IdFilme = F.Id
inner join Atores A on A.Id = E.IdAtor
