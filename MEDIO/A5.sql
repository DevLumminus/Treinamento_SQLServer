IF NOT EXISTS (
	SELECT 1
    FROM sys.tables t
    WHERE t.name = 'Multa'
      AND t.schema_id = SCHEMA_ID('dbo')
)--Verifica se existe
BEGIN 
	CREATE TABLE dbo.Multa(
		ID_Multa       INT IDENTITY(1,1) NOT NULL,
		ID_Emprestimo  INT               NOT NULL,
		Valor          DECIMAL(10,2)     NOT NULL,
		Data_Pagamento DATE              NULL,

		CONSTRAINT PK_Multa 
			PRIMARY KEY CLUSTERED (ID_Multa),

		CONSTRAINT FK_Emprestimo 
			FOREIGN KEY (ID_Emprestimo) REFERENCES Emprestimo (ID_Emprestimo),

		CONSTRAINT UQ_IDEmprestimo  
            UNIQUE (ID_Emprestimo),

		CONSTRAINT CK_Valor 
			CHECK (Valor > 0),
		)
		
END;