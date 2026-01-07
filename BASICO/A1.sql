IF NOT EXISTS ( -- Verifica se existe
 -- Se não pula para o BEGIN
	SELECT 1
	FROM sys.databases -- Onde fica todos DB
	WHERE name = 'Empresa'
)
BEGIN -- Função do SQL
	CREATE DATABASE Empresa;
END;

-- O 1 é inutil e pode ser qualquer numero

--Pode ser esse (mais profissional):

--IF DB_ID('Empresa') IS NULL
--    CREATE DATABASE Empresa;
