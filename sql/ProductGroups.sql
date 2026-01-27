CREATE TABLE ProductGroups (
    [Id]           UNIQUEIDENTIFIER   NOT NULL   PRIMARY KEY,
    [ParentId]     UNIQUEIDENTIFIER       NULL,
    [Name]         NVARCHAR(128)      NOT NULL,   -- 'N' means Unicode
    [Description]  NVARCHAR(512)      NOT NULL,
    [Slug]         NVARCHAR(64)       NOT NULL   UNIQUE,
    [ImageUrl]     NVARCHAR(256)      NOT NULL,
    [DeletedAt]    DATETIME2              NULL
)
/*
Комп'ютери
    Ноутбуки
    Десктопи
        Моноблоки
        Системні блоки
        Монітори

Маніпулятори
    Комп'ютерні миші
        Офісні миші
        Дизайнерські миші
        Ігрові миші
    Клавіатури
        Офісні клавіатури
        Дизайнерські клавіатури
        Ігрові клавіатури
    Джойстики

Комп'ютерні комплектуючі
    Відеокарти
    Оперативна пам'ять
    Накопичувачі
        SSD
        HDD
    Процесори
*/