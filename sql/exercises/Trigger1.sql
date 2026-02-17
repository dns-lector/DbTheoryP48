-- CREATE 
ALTER TRIGGER AccSalesTrigger
ON Sales
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
	SET NOCOUNT ON   -- вимкнення лічильника рядків, оскільки може спотворити роботу
	DECLARE @cnt INT
	-- у тригерах існують спец. таблиці inserted та deleted, їх структура -
	-- як у таблиці, до якої належить тригер (ON Sales)
	-- inserted - рядки, що додаються до таблиці, deleted - що видаляються
	SET @cnt = (SELECT COUNT(*) FROM inserted) - (SELECT COUNT(*) FROM deleted)
	UPDATE AccSales SET 
		TotalSales += @cnt,
		TotalQuantity += ( (SELECT COALESCE(SUM(Quantity),0) FROM inserted) - 
			(SELECT COALESCE(SUM(Quantity),0) FROM deleted) ),
		TotalPrice += ( (SELECT COALESCE(SUM(Price),0) FROM inserted) - 
			(SELECT COALESCE(SUM(Price),0) FROM deleted) )
	WHERE Line = 1
END

/*
Тригери (у БД) - різновид збережених процедур, які
автоматично запускаються при надходженні певних подій
у СУБД. Розрізняють DDL- та DML-тригери
Аналог - обробники подій

DML-тригери дозволяють вести таблиці-акумулятори
на кшталт загальних сум продажів, іншої статистики

Створити таблицю-акумулятор зі статистикою по товарах
- загальна кількість
* середня ціна товару
Створити тригер на таблицю товарів, який буде оновлювати статистику
*/