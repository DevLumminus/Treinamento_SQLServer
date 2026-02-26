/*
Emprestimos não devolvidos
Nome e titulo do livro
*/

SELECT e.[ID_Emprestimo]
      ,l.[Titulo]
      ,l.[ID_Livro]
      ,u.[Nome] AS Usuario
      ,e.[Data_Devolucao]
  FROM [dbo].[Emprestimo] e
  INNER JOIN [dbo].[Livro] l
    ON e.[ID_Livro] = l.[ID_Livro]
  INNER JOIN [dbo].[Usuario] u
    ON e.[ID_Usuario] = u.[ID_Usuario]
  WHERE [Data_Devolucao] > '2026-02-26'