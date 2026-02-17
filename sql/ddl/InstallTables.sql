DROP TABLE IF EXISTS Producers;
CREATE TABLE Producers (
    [Id]           UNIQUEIDENTIFIER   NOT NULL   PRIMARY KEY,
    [ParentId]     UNIQUEIDENTIFIER       NULL,
    [Name]         NVARCHAR(128)      NOT NULL,   -- 'N' means Unicode
    [Description]  NVARCHAR(512)      NOT NULL,
    [Slug]         NVARCHAR(64)       NOT NULL   UNIQUE,
    [ImageUrl]     NVARCHAR(256)      NOT NULL,
    [DeletedAt]    DATETIME2              NULL
);

DROP TABLE IF EXISTS ProductGroups;
CREATE TABLE ProductGroups (
    [Id]           UNIQUEIDENTIFIER   NOT NULL   PRIMARY KEY,
    [ParentId]     UNIQUEIDENTIFIER       NULL,
    [Name]         NVARCHAR(128)      NOT NULL,   -- 'N' means Unicode
    [Description]  NVARCHAR(512)      NOT NULL,
    [Slug]         NVARCHAR(64)       NOT NULL   UNIQUE,
    [ImageUrl]     NVARCHAR(256)      NOT NULL,
    [DeletedAt]    DATETIME2              NULL
);

DROP TABLE IF EXISTS Products;
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
);

DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales (
    [Id]           UNIQUEIDENTIFIER   NOT NULL   PRIMARY KEY,
    [SaleAt]       DATETIME2          NOT NULL   DEFAULT CURRENT_TIMESTAMP,
    [ProductId]    UNIQUEIDENTIFIER   NOT NULL,
    [Quantity]     INT                NOT NULL   DEFAULT 0,    
    [Price]        DECIMAL(12,2)      NOT NULL
);

-- Таблиця-акумулятор
DROP TABLE IF EXISTS AccSales;
CREATE TABLE AccSales(
	Line          INT  PRIMARY KEY,
	TotalSales    INT,
	TotalQuantity INT,
	TotalPrice    DECIMAL(18,2)
);