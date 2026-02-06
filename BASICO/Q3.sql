USE Empresa
GO

UPDATE dbo.Funcionarios
	SET Salario = 3500
	WHERE Cargo = 'Vendedor'