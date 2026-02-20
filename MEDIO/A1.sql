IF NOT EXISTS (
	SELECT 1
    FROM sys.tables t
    WHERE t.name = 'Editora'
      AND t.schema_id = SCHEMA_ID('dbo')
)--Verifica se existe
BEGIN 
	CREATE TABLE dbo.Editora(
		ID_Editora INT IDENTITY(1,1) NOT NULL,
		Nome       VARCHAR(100)      NOT NULL,
		Cidade     VARCHAR(50)       NOT NULL,

		CONSTRAINT PK_Editora 
			PRIMARY KEY CLUSTERED (ID_Editora),

		CONSTRAINT UQ_Editora_Nome 
            UNIQUE (Nome)
		)
		
END;