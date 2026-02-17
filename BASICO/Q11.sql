SELECT *
	FROM dbo.Departamentos

GO

INSERT INTO [dbo].[Departamentos]
           ([Nome]
           ,[Localizacao])
     VALUES
           ('VENDAS', 'RIO DE JANEIRO')

GO

UPDATE [dbo].[Departamentos]
  SET [Localizacao] = 'SAO PAULO'
  WHERE Nome = 'VENDAS'

--EM PRODUÇÃO

CREATE OR ALTER PROCEDURE dbo.AtualizarLocalDepartamento
    @NomeDepartamento VARCHAR(100),
    @NovaLocalizacao VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON; -- boa prática em produção

    BEGIN TRY
        BEGIN TRAN;

        UPDATE dbo.Departamentos
        SET Localizacao = @NovaLocalizacao
        WHERE Nome = @NomeDepartamento;

        IF @@ROWCOUNT = 0
        BEGIN
            THROW 50001, 'Departamento não encontrado.', 1;
        END

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;

        THROW; -- mantém erro original
    END CATCH
END;
