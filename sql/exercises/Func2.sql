-- Табличні функції
CREATE FUNCTION FirmProducts()
RETURNS TABLE
AS
	RETURN SELECT 
		P.ProducerId,
		COUNT(P.Id) AS Cnt
	FROM
		Products P
	GROUP BY
		P.ProducerId
