-- функції (UDF - User Defined Functions)
CREATE FUNCTION Random()
RETURNS INT  -- Скалярна функція - з одиночним результатом (не табличним)
AS
BEGIN
	RETURN CHECKSUM(CURRENT_TIMESTAMP)
END
-- Відмінності функцій та процедур:
-- Процедури викликаються EXEC і не можуть входити у інші запити як частина
-- Функції повертають значення, які повинні бути частиною інших запитів