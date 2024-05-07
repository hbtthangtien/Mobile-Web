USE master
GO
CREATE DATABASE Mobile_Web
GO
USE Mobile_Web
GO

CREATE TABLE [User]
(
	idUser INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[username] NVARCHAR(200) UNIQUE,
	[password] NVARCHAR(200),
	phoneNumber NVARCHAR(200),
	fullname NVARCHAR(200),
	[address] NVARCHAR(200),
)

CREATE TABLE Categories
(
	idCategorie INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nameCategorie NVARCHAR(200),
)
CREATE TABLE Product
(
	idProduct INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nameProduct NVARCHAR(200),
	primePrice MONEY,
	salePrice MONEY,
	quantity INT,
	brand NVARCHAR(300),
	screen_size NVARCHAR(300),
	screen_technology NVARCHAR(300),
	rear_camera NVARCHAR(450),
	front_camera NVARCHAR(300),
	chipset NVARCHAR(300),
	ram_capacit NVARCHAR(300),
	internal_storage NVARCHAR(300),
	pin NVARCHAR(300),
	sim_card NVARCHAR(300),
	os NVARCHAR(300),
	screen_resolution NVARCHAR(300),
	screen_features NVARCHAR(400),
	[image] NVARCHAR(200),
	idCategorie INT CONSTRAINT fk_ProductCategories_idCategorie
	FOREIGN KEY REFERENCES [Categories](idCategorie) ON DELETE CASCADE
)

CREATE TABLE [Order]
(
	idOrder INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	idUser INT CONSTRAINT fk_OrderUser_idUser 
	FOREIGN KEY REFERENCES [User] (idUser) ON DELETE CASCADE,
	fullname NVARCHAR(200),
	[address] NVARCHAR(200),
	orderDate DATE DEFAULT(GETDATE()),
	totalInvoice MONEY
)

CREATE TABLE [OrderDetail]
(
	idOrderDetails INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	idOrder INT CONSTRAINT fk_OrderDetail_idOrder 
	FOREIGN KEY REFERENCES [Order] (idOrder) ON DELETE CASCADE,
	idProduct INT CONSTRAINT fk_OrderDetail_idProduct
	FOREIGN KEY REFERENCES [Product](idProduct) ON DELETE CASCADE,
	color NVARCHAR(200),
	quantity INT,
	totalInvoice MONEY,
	
)
