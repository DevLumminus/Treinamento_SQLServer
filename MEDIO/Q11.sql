SELECT [ID_Livro]
      ,[Titulo]
      ,[Autor]
      ,[Ano_Publicacao]
      ,[ID_Editora]
      ,[Disponivel]
  FROM [dbo].[Livro]
  WHERE Titulo LIKE '%banco%'