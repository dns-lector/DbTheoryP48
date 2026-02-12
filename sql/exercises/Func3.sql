-- Топ-N виробників за кількістю товарів (не враховуючи видалених)
ALTER FUNCTION TopProducers(@N INT)
RETURNS TABLE
AS 
RETURN SELECT
	P.*,
	COALESCE(F.Cnt, 0) AS Cnt
FROM 
	dbo.FirmProducts() F  -- виклик функції як таблиця
	RIGHT JOIN Producers P ON F.ProducerId = P.Id
ORDER BY
	Cnt DESC
OFFSET 0 ROWS FETCH NEXT @N ROWS ONLY