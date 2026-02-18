INSERT INTO [dbo].[Funcionarios]
           ([Nome]
           ,[Cargo]
           ,[Salario]
           ,[Data_Admissão]
           ,[ID_Departamento])
     VALUES
           ('ANDERSON', 'ANALISTA', 9000, GETDATE(), 1)
GO

SELECT DISTINCT [Cargo]
  FROM [dbo].[Funcionarios]
  ORDER BY [Cargo]

GO