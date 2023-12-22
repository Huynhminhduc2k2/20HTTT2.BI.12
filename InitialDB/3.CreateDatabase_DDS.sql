create database DDS
use DDS
go

create table invoice_DIM(
	idInvoice_SK int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idInvoice_NK nvarchar(255),
	idProduct int,
	createdDate datetime,
	updatedDate datetime
)

create table gender_DIM(
	idGender_NK nvarchar(255) NOT NULL PRIMARY KEY,
	GioiTinh nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table khachHang_DIM(
	idKhachHang_SK int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idKhachHang_NK nvarchar(255),
	idGender nvarchar(255),
	idCity int,
	CustomerType nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table city_DIM(
	idCity_SK int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idCity_NK nvarchar(255),
	city nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table date_DIM(
	idDate_SK int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idDate_NK nvarchar(255),
	[day] nvarchar(255),
	[month] nvarchar(255),
	[year] nvarchar(255),
	[time] nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table product_DIM
(
	idProduct_SK int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idProduct_NK nvarchar(255),
	Quantity float,
	ProductLine nvarchar (255),
	createdDate datetime,
	updatedDate datetime
)

create table payment_DIM
(
	idPayment_SK int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idPayment_NK nvarchar(255),
	PaymentMethod nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table Fact(
	InvoiceID nvarchar(255) PRIMARY KEY,
	idDate nvarchar(255),
	idKhachHang int,
	idPayment nvarchar(255),
	Rating float,
	grossIncome float,
	createdDate datetime,
	updatedDate datetime
)
