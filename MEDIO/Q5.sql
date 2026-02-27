INSERT INTO [dbo].[Editora]
           ([Nome]
           ,[Cidade])
     VALUES
           ('FTD' ,'SÃO PAULO')
GO

INSERT INTO [dbo].[Livro]
           ([Titulo]
           ,[Autor]
           ,[Ano_Publicacao]
           ,[ID_Editora]
           ,[Disponivel])
     VALUES
           ('MATEMATICA APLICADA'
           ,'ANDRÉ'
           ,2020
           ,11
           ,1),
           ('SACROSANTUM'
           ,'PAPA SÃO JOÃO PAULO II'
           ,1950
           ,11
           ,1)
GO
