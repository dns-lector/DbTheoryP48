CREATE TABLE Products (
    [Id]           UNIQUEIDENTIFIER   NOT NULL   PRIMARY KEY,
    [GroupId]      UNIQUEIDENTIFIER   NOT NULL,
    [ProducerId]   UNIQUEIDENTIFIER   NOT NULL,
    [Name]         NVARCHAR(128)      NOT NULL,   -- 'N' means Unicode
    [Description]  NVARCHAR(512)          NULL,
    [Slug]         NVARCHAR(64)           NULL   UNIQUE,
    [ImageUrl]     NVARCHAR(256)          NULL,
    [Price]        DECIMAL(12,2)      NOT NULL,
    [Stock]        INT                NOT NULL   DEFAULT 0,
    [DeletedAt]    DATETIME2              NULL
)