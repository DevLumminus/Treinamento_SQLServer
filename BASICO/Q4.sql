BEGIN TRAN

IF NOT EXISTS (SELECT 1 
FROM dbo.Funcionarios
WHERE Data_Admissão < '2020-01-01'
)

BEGIN
	RAISERROR ('Não existe funcionarios admitidos em 2020', 16, 1);
	ROLLBACK;
	RETURN;
END

DELETE
	FROM dbo.Funcionarios
	WHERE Data_Admissão < '2020-01-01'

COMMIT

GO

SELECT * FROM dbo.Funcionarios

INSERT INTO dbo.Funcionarios(
	Nome,
	Cargo,
	Salario,
	Data_Admissão
) VALUES 
('LUIZA', 'APRENDIZ', 1000, '2019-05-19');