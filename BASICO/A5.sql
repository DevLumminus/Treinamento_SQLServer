USE Empresa;

GO

--Inseção de nova coluna

ALTER TABLE dbo.Funcionarios
	ADD ID_Departamento INT NULL

GO

--Inserção de FK

ALTER TABLE dbo.Funcionarios
	ADD CONSTRAINT FK_ID_Departamento
		FOREIGN KEY (ID_Departamento)
		REFERENCES dbo.Departamentos(ID_Departamento)

GO

--Criação do indice do FK
CREATE INDEX IX_Funcionarios_ID_Departamento
    ON dbo.Funcionarios (ID_Departamento);

GO

    BEGIN TRAN;

    -- Garante que o departamento exista
    IF NOT EXISTS (
        SELECT 1
        FROM dbo.Departamentos
        WHERE ID_Departamento = 1
    )
    BEGIN
        RAISERROR ('Departamento padrão não existe.', 16, 1);
        --Lança esse erro manual
    END

    -- Atualiza apenas se houver NULL
    UPDATE dbo.Funcionarios
    SET ID_Departamento = 1
    WHERE ID_Departamento IS NULL;

    COMMIT;

GO

-- Mais profissional

---- Início do bloco TRY
---- Tudo que estiver aqui será monitorado para erros
--BEGIN TRY

--    -- Inicia uma transação explícita
--    -- A partir daqui, nenhuma alteração é definitiva até o COMMIT
--    BEGIN TRAN;

--    -- Verifica se o departamento padrão existe
--    -- SELECT 1 é usado apenas para teste de existência (boa prática)
--    IF NOT EXISTS (
--        SELECT 1
--        FROM dbo.Departamentos
--        WHERE ID_Departamento = 1
--    )
--    BEGIN
--        -- Gera um erro manual de regra de negócio
--        -- Severidade 16 indica erro controlado pelo usuário
--        -- Isso interrompe o TRY e direciona o fluxo para o CATCH
--        RAISERROR ('Departamento padrão não existe.', 16, 1);
--    END

--    -- Atualiza apenas os funcionários que ainda não possuem departamento
--    -- Evita escrita desnecessária e reduz impacto em locks e log
--    UPDATE dbo.Funcionarios
--    SET ID_Departamento = 1
--    WHERE ID_Departamento IS NULL;

--    -- Confirma a transação
--    -- Neste ponto, todas as alterações são gravadas definitivamente
--    COMMIT;

---- Fim do bloco TRY
--END TRY

---- Início do bloco CATCH
---- Só será executado se algum erro ocorrer no TRY
--BEGIN CATCH

--    -- Verifica se ainda existe alguma transação aberta
--    -- Isso evita erro ao executar ROLLBACK sem BEGIN TRAN correspondente
--    IF @@TRANCOUNT > 0
--        -- Desfaz todas as alterações feitas desde o BEGIN TRAN
--        ROLLBACK;

--    -- Relança o erro original
--    -- Preserva mensagem, número, severidade e linha do erro
--    -- Permite que a aplicação ou job capture corretamente a falha
--    THROW;

---- Fim do bloco CATCH
--END CATCH;
