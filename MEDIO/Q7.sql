/*
SELECT
Total de emprestimos
Agrupado por Usuario
Ultimo mes
*/

DECLARE @DataInicio DATE = DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 1, 0);
DECLARE @DataFim    DATE = DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0);

SELECT 
      e.ID_Usuario,
      u.Nome AS Usuario,
      COUNT(e.[ID_Emprestimo]) AS TotalEmprestimos
FROM dbo.Emprestimo e
INNER JOIN dbo.Usuario u
    ON u.ID_Usuario = e.ID_Usuario
WHERE e.Data_Emprestimo >= @DataInicio
  AND e.Data_Emprestimo <  @DataFim
GROUP BY 
      e.ID_Usuario,
      u.Nome;