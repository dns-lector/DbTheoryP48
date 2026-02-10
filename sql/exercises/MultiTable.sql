SELECT 
	Child.Name AS [Group],
	COALESCE(Parent.Name, N'---') AS [Parent Group]
FROM
	ProductGroups Child
	LEFT JOIN ProductGroups Parent ON Child.ParentId = Parent.Id
ORDER BY
	2;   -- 2 - це номер поля у вибірці ([Parent Group])

-- Задача: вивести назви груп та кількість їх підгруп
SELECT
	Parent.Name,
	COUNT(Child.Id) AS [Children]
FROM
	ProductGroups Child
	RIGHT JOIN ProductGroups Parent ON Child.ParentId = Parent.Id
GROUP BY
	Parent.Name
ORDER BY
	2 DESC,
	1 ASC;

-- Покращений варіант, який розрізняє групи з потенційно однаковою назвою
SELECT
	MAX(Parent.Name),   -- Оскільки групування за ID, треба ставити агрегатор навіть якщо всі дані однакові
	COUNT(Child.Id) AS [Children]
FROM
	ProductGroups Child
	RIGHT JOIN ProductGroups Parent ON Child.ParentId = Parent.Id
GROUP BY
	Parent.Id   -- Групуємо за ID, це правильніше та швидше
ORDER BY
	2 DESC,
	1 ASC;

-- Задача: вивести назви груп та кількість їх підгруп тільки для тих, що мають підгрупи, окрім десктопів
SELECT
	Parent.Name,
	COUNT(Child.Id) AS [Children]
FROM
	ProductGroups Child
	RIGHT JOIN ProductGroups Parent ON Child.ParentId = Parent.Id
WHERE                            -- Умови на основні поля задаються
	Parent.Name <> N'Десктопи'   -- до групування оператором WHERE
GROUP BY
	Parent.Name
HAVING                           -- Умови на агреговані поля задаються
	COUNT(Child.Id) > 0          -- після GROUP BY оператором HAVING
ORDER BY
	2 DESC,
	1 ASC;
	

/*
Багатотабличні БД. Поєднання таблиць.
Поєднання - утворення зв'язків через які дані з різних (або однакових) таблиць
 утворюють одну підсумкову таблицю
Види поєднань:
 - Повне поєднання (OUTER JOIN, Декартовий добуток, кожен-до-кожного)
    SQL: таблиці через кому -- ... FROM ProductGroups p1, ProductGroups p2
 - Внутрішнє поєднання (INNER JOIN)
   SQL: 
	ProductGroups Child
	JOIN ProductGroups Parent ON Child.ParentId = Parent.Id
   Створюється таблиця з усіх полів поєднуваних таблиць
     першою іде та таблиця, що перша у запиті (Child), потім рядок доповнюється
	 полями другої таблиці, за умовою ON Child.ParentId = Parent.Id
	 Якщо у другій таблиці жоден рядок не задовільняє умову, то
	 весь підсумковий рядок зникає (не формуєтья)
	 Особливість: пропускаються рядки з NULL у зв'язкових полях (ParentId)
 - Пріоритетні поєднання (LEFT JOIN, RIGHT JOIN)
     ... першою іде та таблиця, що перша у запиті (Child), потім рядок доповнюється
	 полями другої таблиці, за умовою ON Child.ParentId = Parent.Id
	 Якщо у другій таблиці жоден рядок не задовільняє умову, то
	 в усі поля, призначені для неї, записується NULL
	 LEFT або RIGHT визначають пріоритетну таблицю з відповідного боку оператора JOIN
	 Часто вживається оператор коалесценції COALESCE   (аналог C# -- x ?? 10)
-----------------------------------
Групування - поєднання даних, що мають однакове значення
Формується проміжна "таблиця", до якої вноситься унікальне значення,
 та всі інші поля як масив:
   Клавіатури -- [Офісні клавіатури, Ігрові клавіатури, Дизайнерські клавіатури]
   Десктопи -- [Моноблоки, Системні блоки, Монітори]
Оскільки у таблиці не може бути масивів, для таких полів потрібні агрегатори - 
 оператори, які обирають одне значення з масиву:
   MIN
   MAX
   COUNT
   AVG - діє для тих, що мають операції "+" та "/"
   SUM - діє для тих, що мають операцію "+"
*/