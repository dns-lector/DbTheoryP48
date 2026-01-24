CREATE TABLE Producers (
    [Id]           UNIQUEIDENTIFIER   NOT NULL   PRIMARY KEY,
    [ParentId]     UNIQUEIDENTIFIER       NULL,
    [Name]         NVARCHAR(128)      NOT NULL,   -- 'N' means Unicode
    [Description]  NVARCHAR(512)      NOT NULL,
    [Slug]         NVARCHAR(64)       NOT NULL   UNIQUE,
    [ImageUrl]     NVARCHAR(256)      NOT NULL,
    [DeletedAt]    DATETIME2              NULL
)