create database DDS
use DDS
go

create table gender_DIM(
	idGender_SK nvarchar(255) NOT NULL PRIMARY KEY,
	GioiTinh nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table khachHang_DIM(
	idKhachHang_SK nvarchar(255) NOT NULL PRIMARY KEY,
	idGender nvarchar(255),
	idCity nvarchar(255),
	CustomerType nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table city_DIM(
	idCity_SK nvarchar(255) NOT NULL PRIMARY KEY,
	city nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table date_DIM(
	idDate_SK nvarchar(255) NOT NULL PRIMARY KEY,
	[day] nvarchar(255),
	[month] nvarchar(255),
	[year] nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table product_DIM
(
	idProduct nvarchar(255) NOT NULL PRIMARY KEY,
	Quantity float,
	ProductLine nvarchar (255),
	createdDate datetime,
	updatedDate datetime
)

create table payment_DIM
(
	idPayment nvarchar(255) PRIMARY KEY ,
	PaymentMethod nvarchar(255),
	createdDate datetime,
	updatedDate datetime
)

create table Fact(
	InvoiceID nvarchar(255)NOT NULL PRIMARY KEY,
	idProduct nvarchar(255),
	idKhachHang nvarchar(255),
	idPayment nvarchar(255),
	Rating float,
	grossIncome float,
	createdDate datetime,
	updatedDate datetime
)