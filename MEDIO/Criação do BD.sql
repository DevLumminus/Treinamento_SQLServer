IF DB_ID('Biblioteca') IS NULL
	CREATE DATABASE Biblioteca;

-- VERSÃO PROFISSIONAL

/*
    Script: Criação do Banco Biblioteca
    Ambiente: Produção
    Autor: DBA
    Data: 2026-02-19
*/

CREATE DATABASE Biblioteca
ON PRIMARY --Onde guarda o banco
(
    NAME = N'Biblioteca_Data', --Nome logico
    FILENAME = N'D:\SQLData\Biblioteca_Data.mdf', --Onde será guardade
    SIZE = 30MB, --Tamanho inicial
    FILEGROWTH = 10MB --Quanto ele cresce automaticamente
)
LOG ON --Onde guarda os logs
(
    NAME = N'Biblioteca_Log',
    FILENAME = N'L:\SQLLogs\Biblioteca_Log.ldf',
    SIZE = 15MB,
    FILEGROWTH = 5MB
);
GO

--------------------------------------------------
-- Configurações Pós-Criação
--------------------------------------------------

ALTER DATABASE Biblioteca SET RECOVERY SIMPLE; --Quando são maiores usam FULL (faz registro das transações)
GO

ALTER DATABASE Biblioteca SET AUTO_SHRINK OFF; --Fragmenta o indice
GO

ALTER DATABASE Biblioteca SET AUTO_CLOSE OFF; 
GO

ALTER DATABASE Biblioteca SET READ_COMMITTED_SNAPSHOT ON;--Evita locks
GO

ALTER DATABASE Biblioteca SET PAGE_VERIFY CHECKSUM; --Evita corrupção
GO
