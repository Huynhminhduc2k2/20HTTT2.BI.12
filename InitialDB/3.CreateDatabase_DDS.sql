<<<<<<< HEAD
﻿create database DDS
use DDS
go

create table gender_DIM(
	idGender_SK nvarchar(255) NOT NULL PRIMARY KEY,
	GioiTinh nvarchar(255)
)

create table khachHang_DIM(
	idKhachHang_SK nvarchar(255) NOT NULL PRIMARY KEY,
	idGender nvarchar(255),
	idCity nvarchar(255),
	CustomerType nvarchar(255),
)

create table city_DIM(
	idCity_SK nvarchar(255) NOT NULL PRIMARY KEY,
	city nvarchar(255)
)

create table date_DIM(
	idDate_SK nvarchar(255) NOT NULL PRIMARY KEY,
	[day] nvarchar(255),
	[month] nvarchar(255),
	[year] nvarchar(255)
)

create table product_DIM
(
	idProduct nvarchar(255) NOT NULL PRIMARY KEY,
	Quantity float,
	ProductLine nvarchar (255)
)

create table payment_DIM
(
	idPayment nvarchar(255) PRIMARY KEY ,
	PaymentMethod nvarchar(255),
)

create table Fact(
InvoiceID nvarchar(255)NOT NULL PRIMARY KEY,
idProduct nvarchar(255)NOT NULL,
idKhachHang nvarchar(255)NOT NULL,
idPayment nvarchar(255)NOT NULL,
Rating float NOT NULL,
grossIncome float NOT NULL
=======
﻿create database DDS
use DDS
go

create table gender_DIM(
	idGender_SK int NOT NULL PRIMARY KEY,
	GioiTinh nvarchar(255)
)

create table khachHang_DIM(
	idKhachHang_SK nvarchar(255) NOT NULL PRIMARY KEY,
	idGender int,
	idCity nvarchar(255),
	CustomerType nvarchar(255),
)

create table city_DIM(
	idCity_SK nvarchar(255) NOT NULL PRIMARY KEY,
	city nvarchar(255)
)

create table date_DIM(
	idDate_SK nvarchar(255) NOT NULL PRIMARY KEY,
	[day] nvarchar(255),
	[month] nvarchar(255),
	[year] nvarchar(255)
)

create table product_DIM
(
	idProduct nvarchar(255) NOT NULL PRIMARY KEY,
	Quantity float,
	ProductLine nvarchar (255),
)

create table payment_DIM
(
	idPayment nvarchar(255) PRIMARY KEY ,
	PaymentMethod nvarchar(255),
)

create table Fact(
InvoiceID nvarchar(255)NOT NULL PRIMARY KEY,
idProduct nvarchar(255)NOT NULL,
idKhachHang nvarchar(255)NOT NULL,
idPayment nvarchar(255)NOT NULL,
Rating float NOT NULL,
grossIncome float NOT NULL
>>>>>>> 65f465cbed3be92829dbcdcd23a9ec70ba4f75ec
)