USE Empresa;

GO

IF OBJECT_ID('dbo.Departamentos', 'U') IS NULL
	BEGIN
		CREATE TABLE dbo.Departamentos (
			ID_Departamento INT IDENTITY(1,1) NOT NULL
				CONSTRAINT PK_Departamentos PRIMARY KEY(ID_Departamento),

			Nome VARCHAR(50) NOT NULL
				CONSTRAINT UQ_Departamentos_Nome UNIQUE,

			Localizacao VARCHAR(50) NULL
		);
	END;

GO

GO

INSERT INTO dbo.Departamentos (
	Nome, 
	Localizacao
) VALUES 
	('PADRÃO', 'CENTRAL');

GO