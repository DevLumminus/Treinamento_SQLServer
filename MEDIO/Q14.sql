SELECT U.[ID_Usuario]
      ,U.[Nome]
      ,U.[Email]
  FROM [dbo].[Usuario] U
  WHERE NOT EXISTS (
    SELECT 1
        FROM dbo.Emprestimo E
        WHERE E.ID_Usuario = U.ID_Usuario
  )
  GO
  SELECT U.[ID_Usuario]
      ,U.[Nome]
      ,U.[Email]
  FROM [dbo].[Usuario] U
  LEFT JOIN [dbo].[Emprestimo] E
    ON E.ID_Usuario = U.ID_Usuario
    GROUP BY U.[ID_Usuario],
             U.[Nome],
             U.[Email]
  HAVING COUNT(E.ID_Emprestimo) = 0