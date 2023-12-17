CREATE DATABASE NDS
USE NDS

GO

create table supermarket_sales_NDS(
	id int IDENTITY(1, 1),
	[Invoice ID] nvarchar(255),
	[Branch] nvarchar(255),
	[Customer type]	nvarchar(255),
	[Gender] nvarchar(255),
	[ProductID]	nvarchar(255),
	[Quantity] float,
	[Tax 5%] float,
	[Total] float,
	[Date] datetime,
	[Time] datetime,
	[Payment] nvarchar(255),
	[cogs] float,
	[gross margin percentage] float,
	[gross income] float,
	[Rating] float,
	[createdDate]	datetime,
	[updatedDate]	datetime,
	sourceId int,

	CONSTRAINT PK_supermarket_sales_NDS
	PRIMARY KEY CLUSTERED (id)
)

create table product_NDS(
	id int IDENTITY(1, 1),
	[ProductID] nvarchar(255),
	[Unit price] float,
	[ProductLine] nvarchar(255),
	[createdDate] datetime,
	[updatedDate] datetime,
	sourceId int,

	CONSTRAINT PK_product_NDS
	PRIMARY KEY CLUSTERED (id)
)

create table product_line_NDS(
	id int IDENTITY(1, 1),
	[Product line] nvarchar(255),
	[ProductLineID] nvarchar(255),
	[createdDate] datetime,
	[updatedDate] datetime,
	sourceId int,

	CONSTRAINT PK_product_line_NDS
	PRIMARY KEY CLUSTERED (id)
)

create table city_NDS(
	id int IDENTITY(1, 1),
	[Branch] nvarchar(255),
	[City] nvarchar(255),
	[createdDate] datetime,
	[updatedDate] datetime,
	sourceId int,

	CONSTRAINT PK_city_NDS
	PRIMARY KEY CLUSTERED (id)
)

select * from supermarket_sales_NDS;

select * from product_NDS;

select * from product_line_NDS;

select * from city_NDS;