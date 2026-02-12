SELECT 
	P.Name,
	COALESCE(F.Cnt, 0) AS Cnt
FROM 
	dbo.FirmProducts() F  -- виклик функції як таблиця
	RIGHT JOIN Producers P ON F.ProducerId = P.Id