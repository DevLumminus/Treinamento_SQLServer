SELECT MAX(Salario) AS Maior_Salario
  FROM [dbo].[Funcionarios]

GO

--MAIS PROFISSIONAL

SELECT TOP (1) WITH TIES
       F.Salario,
       F.Nome,
       F.Cargo
FROM dbo.Funcionarios AS F
ORDER BY F.Salario DESC;

