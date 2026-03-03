CREATE VIEW dbo.vw_LivrosMaisPopulares
AS
SELECT
    l.ID_Livro,
    l.Titulo AS Livro,
    COUNT(e.ID_Emprestimo) AS TotalEmprestimos
FROM dbo.Livro l
INNER JOIN dbo.Emprestimo e
    ON e.ID_Livro = l.ID_Livro
GROUP BY 
    l.ID_Livro,
    l.Titulo;

	GO


--MAIS PROFISSIONAL

CREATE VIEW dbo.vw_LivrosMaisPopulares
AS
SELECT
    l.ID_Livro,
    l.Titulo AS Livro,
    COUNT(e.ID_Emprestimo) AS TotalEmprestimos,
    DENSE_RANK() OVER (ORDER BY COUNT(e.ID_Emprestimo) DESC) AS Ranking
    --Rankeia os registros por ordem
FROM dbo.Livro l
INNER JOIN dbo.Emprestimo e
    ON e.ID_Livro = l.ID_Livro
GROUP BY 
    l.ID_Livro,
    l.Titulo;