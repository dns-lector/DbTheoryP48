-- Передача параметрів до процедур
-- Задача: вивести виробник -- кількість товарів з вказуванням
-- мінімальної та максимальної кількості
ALTER PROC ProductsCountByProducerLimits
	@min INT,
	@max INT
AS
BEGIN
	SELECT
		MAX(P.Name)  AS [Producer],
		COUNT(PP.Id) AS [ProductsCount]
	FROM
		Producers P
		LEFT JOIN Products PP ON P.Id = PP.ProducerId
	GROUP BY 
		P.Id
	HAVING
		COUNT(PP.Id) BETWEEN COALESCE(@min, 0) AND COALESCE(@max, 2000000000)
END