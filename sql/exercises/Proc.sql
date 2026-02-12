-- Процедури (збережені процедури)
-- Спосіб спростити роботу з популярними запитами
CREATE PROCEDURE ProductsCountByProducer
AS
BEGIN

	SELECT 
		P.Name,
		(SELECT COUNT(*) FROM Products WHERE ProducerId = P.Id) AS ProductCount
	FROM
		Producers P

END