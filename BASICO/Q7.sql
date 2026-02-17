BEGIN TRY
	BEGIN TRAN
		INSERT INTO [dbo].[Funcionarios]
           ([Nome]
           ,[Cargo]
           ,[Salario]
           ,[ID_Departamento])
     VALUES
           ('João Silva', 'Analista', 5000, 1)
	COMMIT
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
    ROLLBACK

    --Só usada dentro do CATCH
    IF ERROR_NUMBER() IN (2601, 2627)
    BEGIN
        THROW 50001, 'Já existe esse funcionario', 1; --O 1 é o State
        --O 50001 é o ID
    END

END CATCH

ALTER TABLE dbo.Funcionarios
ADD CONSTRAINT UQ_Funcionarios_Nome_Cargo
UNIQUE (Nome, Cargo);

SELECT * FROM dbo.Funcionarios

SELECT 
    message_id,
    language_id,
    severity,
    is_event_logged,
    text
FROM sys.messages
WHERE language_id = 1046 -- PROTUGUÊS
ORDER BY message_id;
