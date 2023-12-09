create table supermarket_sales_NDS(
	id int IDENTITY(1, 1),
	[Invoice ID] varchar(11),
	[Branch] varchar(1),
	[Customer type]	varchar(6),
	[Gender] varchar(6),
	[ProductID]	varchar(6),
	[Quantity] int,
	[Tax 5%] decimal(10,4),
	[Total] decimal(10,4),
	[Date] datetime,
	[Time] datetime,
	[Payment] varchar(11),
	[cogs] decimal(10,2),
	[gross margin percentage] decimal(10,9),
	[gross income]	decimal(10,4),
	[Rating] decimal(10,1),
	[createdDate]	datetime,
	[updatedDate]	datetime,
	sourceId int,

	CONSTRAINT PK_supermarket_sales_NDS
	PRIMARY KEY CLUSTERED (id)
)

create table product_NDS(
	id int IDENTITY(1, 1),
	[ProductID] varchar(6),
	[Unit price] float,
	[ProductLine] varchar(50),
	[createdDate] datetime,
	[updatedDate] datetime,
	sourceId int,

	CONSTRAINT PK_product_NDS
	PRIMARY KEY CLUSTERED (id)
)

create table product_line_NDS(
	id int IDENTITY(1, 1),
	[Product line] varchar(50),
	[ProductLineID] varchar(5),
	[createdDate] datetime,
	[updatedDate] datetime,
	sourceId int,

	CONSTRAINT PK_product_line_NDS
	PRIMARY KEY CLUSTERED (id)
)

create table city_nds(
	id int IDENTITY(1, 1),
	[Branch] varchar(1),
	[City] varchar(50),
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