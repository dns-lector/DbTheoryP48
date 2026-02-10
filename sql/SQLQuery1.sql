SELECT 
	P.*
FROM 
	Producers P
WHERE 
	P.[Name] <> N'ASUS'
	AND NOT (P.[Name] = N'' OR P.[Name] = N' ')
	AND p.ParentId IS NOT NULL;

UPDATE Producers SET Description = N'ASUS LLC' WHERE Name = N'ASUS';