/*
Теорія баз даних

База даних (БД) - форма (спосіб) організації даних за якого окрім самих 
даних також зберігаються зв'язки між ними (реляції)

СУБД (DBMS) - програмне забезпечення, що реалізує взаємодію користувачів з БД,
у т.ч. обробку реляцій. В залежності від типів реляцій СУБД також поділяються
на різні типи.
СУБД працюють в режимі серверів (приймають запити та дають на них відповіді)

SQL (Structured Query Language) - мова взаємодії з СУБД (запитів до сервера СУБД)
 - DDL (Data Definition Lang) - мова "розмітки" - створення таблиць та інших елементів
 - DML (Data Manipulation Lang) - мова "даних" - створення, вибірки даних
 - DCL (Data Control Lang) - мова "доступу" - управління користувачами, паролями
 - TCL (Transaction Control Lang) - мова управління транзакціями (наборами дій)

DDL
Структура - таблична, мова DDL задає назви, типи даних та обмеження для 
колонок таблиць. (На схемах колонки подаються рядками - не плутати)
---------------------------------------------------------------------------
Типи даних     MS SQL               MySQL            Пояснення
---------------------------------------------------------------------------
рядковий       CHAR                 CHAR             рядок фіксованого розміру
               VARCHAR              VARCHAR          рядок змінного розміру
               NCHAR                                 варіації для Unicode - двобайтові символи
               NVARCHAR          
---------------------------------------------------------------------------
числові        INT                  INT
               FLOAT                FLOAT
----------------------------------------------------------------------------
UUID           UNIQUEIDENTIFIER     -- [CHAR(36)]


Команди:
MS SQL:
CREATE TABLE ProductGroups (
    [Id]           UNIQUEIDENTIFIER   NOT NULL   PRIMARY KEY,
    [ParentId]     UNIQUEIDENTIFIER       NULL,
    [Name]         NVARCHAR(128)      NOT NULL,   -- 'N' means Unicode
    [Description]  NVARCHAR(512)      NOT NULL,
    [Slug]         NVARCHAR(64)       NOT NULL   UNIQUE,
    [ImageUrl]     NVARCHAR(256)      NOT NULL,
    [DeletedAt]    DATETIME2              NULL
)

MySQL:
CREATE TABLE ProductGroups (
    `Id`           CHAR(36)        NOT NULL   PRIMARY KEY,
    `ParentId`     CHAR(36)            NULL,
    `Name`         VARCHAR(128)    NOT NULL,
    `Description`  VARCHAR(512)    NOT NULL,
    `Slug`         VARCHAR(64)     NOT NULL,
    `ImageUrl`     VARCHAR(256)    NOT NULL,
    `DeletedAt`    DATETIME            NULL,

    UNIQUE(`Slug`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;  -- Unicode by CHARSET
 */