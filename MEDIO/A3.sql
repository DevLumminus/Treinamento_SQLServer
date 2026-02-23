IF NOT EXISTS (
	SELECT 1
    FROM sys.tables t
    WHERE t.name = 'Usuario'
      AND t.schema_id = SCHEMA_ID('dbo')
)--Verifica se existe
BEGIN 
	CREATE TABLE dbo.Usuario(
		ID_Usuario    INT IDENTITY(1,1) NOT NULL,
		Nome          VARCHAR(100)      NOT NULL,
		Email         VARCHAR(100)      NOT NULL,
		Data_Cadastro DATE              NOT NULL 
			DEFAULT CAST(GETDATE() AS DATE),
		Tipo          VARCHAR(20)       NOT NULL

		CONSTRAINT PK_Usuario 
			PRIMARY KEY CLUSTERED (ID_Usuario),

		CONSTRAINT [UQ_Email] UNIQUE (Email),

		CONSTRAINT CK_Tipo
            CHECK (Tipo IN ('Estudante', 'Professor', 'Comunidade'))
		)
		
END;