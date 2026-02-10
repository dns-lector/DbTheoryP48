-- Вивести дані про всі товари: назва виробника -- назва товару
SELECT PP.Name, P.Name AS ProductName FROM Products AS P INNER JOIN Producers AS PP ON P.ProducerId = PP.Id;

-- Вивести дані про всі товари: назва товару -- товарна група
SELECT P.Name, PG.Name GroupName FROM Products P JOIN ProductGroups PG ON P.GroupId = PG.Id;

-- Вивести дані про всі товари: назва товару -- товарна група -- батьківська товарна група
SELECT
	P.Name, 
	PG.Name GroupName,
	PrntG.Name GroupParent
FROM
	Products P
	JOIN ProductGroups PG ON P.GroupId = PG.Id
	JOIN ProductGroups PrntG ON PG.ParentId = PrntG.Id;

-- Вивести дані про всі товари: назва товару -- товарна група -- батьківська товарна група  -- надбатьківська група
SELECT
	P.Name, 
	PG.Name GroupName,
	PrntG.Name GroupParent,
	SupPrnt.Name SupGroupParent
FROM
	Products P
	JOIN ProductGroups PG ON P.GroupId = PG.Id
	JOIN ProductGroups PrntG ON PG.ParentId = PrntG.Id
	LEFT JOIN ProductGroups SupPrnt ON PrntG.ParentId = SupPrnt.Id;  -- LEFT оскільки не всі мають надгрупи


-- вивести дані про товарні групи: назва групи -- кількість товарів у ній -- найдорожчий товар у групі
SELECT
	PG.Name,
	(SELECT COUNT(*)   FROM Products WHERE GroupId = PG.Id) AS Cnt,   -- підзапит - запит у запиті
	(SELECT MAX(Price) FROM Products WHERE GroupId = PG.Id) AS Expensive   -- підзапит - запит у запиті
FROM 
	ProductGroups PG

