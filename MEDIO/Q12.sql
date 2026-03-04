SELECT [Autor]
      ,COUNT(1) AS LivrosEmAcervo
  FROM [dbo].[Livro]
  GROUP BY [Autor]
  HAVING COUNT(1) > 3
