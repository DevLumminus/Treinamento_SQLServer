USE [Biblioteca]
GO

BEGIN TRAN
	UPDATE l
		SET l.Disponivel = 0
			FROM dbo.Livro AS l
				INNER JOIN dbo.Emprestimo AS e
					ON e.ID_Livro = l.ID_Livro
			WHERE e.Devolvido = 0;

COMMIT