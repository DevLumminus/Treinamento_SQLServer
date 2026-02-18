UPDATE [dbo].[Funcionarios]
   SET [ID_Departamento] = 2
 WHERE Cargo = 'ANALISTA'
GO


SELECT f.[Nome] AS Funcionario
      ,d.Nome AS Departamento
  FROM [dbo].[Funcionarios] f
  INNER JOIN dbo.Departamentos d --Se a coluna não tiver obrigação de ter
  --um departamento use LEFT JOIN
    ON d.ID_Departamento = f.ID_Departamento

GO