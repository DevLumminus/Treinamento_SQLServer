DECLARE @DataAtual DATE = CAST(GETDATE() AS DATE);

SELECT e.[ID_Emprestimo]
      ,Dias_de_atraso = DATEDIFF(DAY, e.Data_Devolucao, @DataAtual)
  FROM [dbo].[Emprestimo] e
  WHERE 
    Devolvido = 0 
    AND Data_Devolucao < @DataAtual

GO


