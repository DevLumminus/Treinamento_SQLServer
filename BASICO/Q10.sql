SELECT [ID_Funcionario]
      ,[Nome]
      ,[Cargo]
      ,[Salario]
      ,[Data_Admissão]
      ,[ID_Departamento]
  FROM [dbo].[Funcionarios]
  WHERE Data_Admissão 
			BETWEEN '2023-01-01' AND '2023-12-31'

GO

--MAIS PROFISSIONAL
SELECT 
    ID_Funcionario,
    Nome,
    Cargo,
    Salario,
    Data_Admissão,
    ID_Departamento
FROM dbo.Funcionarios
WHERE Data_Admissão >= '20230101'
  AND Data_Admissão <  '20240101';

GO

  INSERT INTO [dbo].[Funcionarios]
           ([Nome]
           ,[Cargo]
           ,[Salario]
           ,[Data_Admissão]
           ,[ID_Departamento])
     VALUES
           ('LAVINHA', 'ASSISTENTE ADMINISTRATIVA', 8000, '2023-05-19', 1)