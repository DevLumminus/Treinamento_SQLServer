IF NOT EXISTS (
	SELECT 1
    FROM sys.tables t
    WHERE t.name = 'Emprestimo'
      AND t.schema_id = SCHEMA_ID('dbo')
)--Verifica se existe
BEGIN 
	CREATE TABLE dbo.Emprestimo(
		ID_Emprestimo   INT IDENTITY(1,1)                    NOT NULL,
		ID_Livro        INT                                  NOT NULL,
		ID_Usuario      INT                                  NOT NULL,
		Data_Emprestimo DATE DEFAULT CAST(GETDATE() AS DATE) NOT NULL,
		Data_Devolucao  DATE DEFAULT CAST(GETDATE() AS DATE) NOT NULL,

		CONSTRAINT PK_Emprestimo 
			PRIMARY KEY CLUSTERED (ID_Emprestimo),

		CONSTRAINT FK_Livro 
            FOREIGN KEY (ID_Livro) REFERENCES dbo.Livro(ID_Livro),

		CONSTRAINT FK_Usuario 
            FOREIGN KEY (ID_Usuario) REFERENCES dbo.Usuario(ID_Usuario),

		CONSTRAINT CK_Data_Devolucao
			CHECK (Data_Devolucao >= Data_Emprestimo)
		)
		
END;