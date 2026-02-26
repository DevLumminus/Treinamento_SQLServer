/*
Quantos livros
Cada editora
Ordenado por editora
+ -> -
*/

SELECT e.[ID_Editora]
      ,e.[Nome] AS Editora
      ,COUNT(l.ID_Livro) AS Quantidade_de_Livros
  FROM [dbo].[Livro] l
  LEFT JOIN [dbo].[Editora] e
    ON l.[ID_Editora] = e.[ID_Editora] 
  GROUP BY 
    e.[ID_Editora]   
    , e.[Nome]
  ORDER BY 
    Quantidade_de_Livros DESC