BEGIN TRAN
    IF NOT EXISTS (
        SELECT 1
        FROM sys.tables t
        WHERE t.name = 'Livro'
          AND t.schema_id = SCHEMA_ID('dbo')
    )
    BEGIN
        CREATE TABLE dbo.Livro(
            ID_Livro        INT IDENTITY(1,1) NOT NULL,
            Titulo          VARCHAR(200)      NOT NULL,
            Autor           VARCHAR(100)      NOT NULL,
            Ano_Publicacao  INT               NULL,
            ID_Editora      INT               NOT NULL,
            Disponivel      BIT DEFAULT (1)   NOT NULL,

            CONSTRAINT PK_Livro 
                PRIMARY KEY CLUSTERED (ID_Livro),

            CONSTRAINT BE_Ano_Publicacao 
                CHECK (Ano_Publicacao BETWEEN 1500 AND 2025),

            CONSTRAINT FK_ID_Editora 
                FOREIGN KEY (ID_Editora) REFERENCES dbo.Editora(ID_Editora)
        )
    END;
COMMIT;