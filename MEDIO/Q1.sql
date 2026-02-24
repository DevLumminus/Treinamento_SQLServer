SELECT
     l.[Titulo]
    ,l.[Autor]
    ,e.[Nome] AS Editora
FROM [dbo].[Livro] AS l
LEFT JOIN [dbo].[Editora] AS e
    ON l.[ID_Editora] = e.[ID_Editora];