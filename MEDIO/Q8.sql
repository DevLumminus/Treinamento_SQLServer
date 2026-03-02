USE [Biblioteca];
GO

INSERT INTO [dbo].[Multa] (ID_Emprestimo, Valor, Data_Pagamento)
VALUES 
(1, 15.50, NULL),
(3, 22.00, NULL),
(4, 10.75, NULL),
(5, 8.90, NULL),
(6, 18.30, NULL),
(12, 12.00, NULL),
(15, 25.00, NULL),
(2, 5.50, '2026-02-20'),
(7, 7.80, '2026-03-01'),
(8, 9.99, '2026-03-02');
GO

SELECT DISTINCT m.[ID_Multa]
      ,u.[ID_Usuario]
      ,u.[Nome] AS Usuario
      ,m.[Valor]
      ,m.[Data_Pagamento]
  FROM [dbo].[Multa] m
  INNER JOIN [dbo].[Emprestimo] e
    ON m.ID_Emprestimo = e.ID_Emprestimo
  INNER JOIN [dbo].[Usuario] u
    ON u.ID_Usuario = e.ID_Usuario
  WHERE m.Data_Pagamento IS NULL AND m.Valor > 0