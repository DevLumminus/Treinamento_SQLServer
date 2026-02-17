SELECT [ID_Funcionario]
      ,[Nome]
      ,[Cargo]
      ,[Salario]
      ,[Data_Admissão]
      ,[ID_Departamento]
  FROM [dbo].[Funcionarios]
  WHERE [Nome] LIKE '%Silva%'

GO

--RECOMENDADO PARA PRODUÇÃO

CREATE FULLTEXT CATALOG FT_CatalogoFuncionarios --Cria o Fulltext
AS DEFAULT;

CREATE FULLTEXT INDEX ON dbo.Funcionarios --Cria o indice Fulltext
(
    Nome LANGUAGE 1046
)
KEY INDEX PK_Funcionarios
WITH CHANGE_TRACKING AUTO;


  SELECT [ID_Funcionario]
      ,[Nome]
      ,[Cargo]
      ,[Salario]
      ,[Data_Admissão]
      ,[ID_Departamento]
  FROM [dbo].[Funcionarios]
  WHERE CONTAINS(Nome, 'Silva') --Busca melhor que o LIKE (usa * em vez de %)