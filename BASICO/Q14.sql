SELECT d.Nome AS Departamento,
	COUNT(*) AS Pessoal_por_Departamento 
		FROM dbo.Funcionarios AS f
		INNER JOIN dbo.Departamentos AS d
			ON f.ID_Departamento = d.ID_Departamento
		GROUP BY d.Nome