USE Empresa;
GO

SELECT 
	Nome, 
	Cargo 
FROM dbo.Funcionarios 
WHERE Salario > 3000;