SELECT COUNT(*) AS Quantidade_de_Funcionarios
FROM dbo.Funcionarios
WHERE Salario > 4000

--Mais profissional

SELECT 
    SUM(CASE WHEN Salario > 4000 THEN 1 ELSE 0 END) AS AcimaDe4000,
    SUM(CASE WHEN Salario < 4000 THEN 1 ELSE 0 END) AS AbaixoDe4000
FROM dbo.Funcionarios;
