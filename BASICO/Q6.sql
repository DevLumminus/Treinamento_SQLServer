SELECT 
	Cargo, 
	CAST(AVG(Salario) AS DECIMAL(10,2)) AS Media_Salarial
FROM dbo.Funcionarios
GROUP BY Cargo
