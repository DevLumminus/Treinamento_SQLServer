USE Empresa; --Seleciona o BD que vai usar

GO --Finaliza o bloco anterior e começa o proximo

IF OBJECT_ID('dbo.Funcionarios', 'U') IS NULL --Verifica se existe
BEGIN 
	CREATE TABLE dbo.Funcionarios(
		ID_Funcionario INT PRIMARY KEY IDENTITY(1,1),
		Nome VARCHAR(100) NOT NULL,
		Cargo VARCHAR(100) NOT NULL,
		Salario DECIMAL(10,2) NOT NULL,
		Data_Admissão DATE NOT NULL DEFAULT 
			CAST(GETDATE() AS DATE))
END;

GO --Finaliza tudo

-- Nunca use MONEY
-- Sempre use *GO* para o o SQL Server não misturar os trechos de codigo

--Mais proficional:

-- Sempre use as constraint separado:
	--ID_Funcionario INT IDENTITY(1,1) NOT NULL
	--	CONSTRAINT PK_Funcionarios PRIMARY KEY,


