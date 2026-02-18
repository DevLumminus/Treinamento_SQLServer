USE [Empresa]
GO

INSERT INTO [dbo].[Departamentos]
           ([Nome]
           ,[Localizacao])
     VALUES
           ('NOVO', 'ESPIRITO SANTO')
GO

SELECT d.Nome AS Departamento
    FROM dbo.Departamentos d
    LEFT JOIN dbo.Funcionarios f
        ON f.ID_Departamento = d.ID_Departamento
    GROUP BY d.Nome
    HAVING COUNT(f.ID_Funcionario) = 0

GO

SELECT
    d.Nome AS Departamento
FROM dbo.Departamentos AS d
LEFT JOIN dbo.Funcionarios AS f
    ON f.ID_Departamento = d.ID_Departamento
WHERE f.ID_Funcionario IS NULL;
GO

SELECT
    d.Nome AS Departamento
FROM dbo.Departamentos AS d
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.Funcionarios AS f
    WHERE f.ID_Departamento = d.ID_Departamento
);
GO