USE Empresa

GO

INSERT INTO dbo.Funcionarios(
	Nome,
	Cargo,
	Salario
) VALUES 
('ANDRÉ', 'PROGRAMADOR', 15000),
('HENRIQUE', 'ANALISTA', 13000),
('DAVI', 'MARKET', 10000),
('GUSTAVO', 'CHEFE TECNICO', 20000),
('MAURICIO', 'CHEFE ADMINISTRATIVO', 25000);

GO

-- Uso profissional

--BEGIN TRAN

--codigo...

--COMMIT;