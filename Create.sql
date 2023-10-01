use master;
create database JakubWilczakHotel;
GO

use JakubWilczakHotel;

IF OBJECT_ID('Employees', 'U') is not null
    DROP TABLE dbo.Employees;
GO
IF OBJECT_ID('Positions', 'U') is not null
    DROP TABLE dbo.Positions;
GO
IF OBJECT_ID('Visit', 'U') is not null
    DROP TABLE dbo.Visit;
GO
IF OBJECT_ID('Client', 'U') is not null
    DROP TABLE dbo.Client;
GO
IF OBJECT_ID('Rooms', 'U') is not null
    DROP TABLE dbo.Rooms;
GO
IF OBJECT_ID('Room_prices', 'U') is not null
    DROP TABLE dbo.Room_prices;
GO

create table Room_prices(
	Id_size smallint primary key identity(1,1),
	Price money
);

create table Rooms(
	Id_room int primary key identity(1,1),
	Number nchar(3),
	Id_size smallint references Room_prices(Id_size) NOT NULL,
);

create table Positions(
	Id_position int primary key identity(1,1),
	Position varchar(30),
	Salary money
);

create table Employees(
	Id_employee int primary key identity(1,1),
	Name varchar(30),
	Surname varchar(50) NOT NULL,
	Hired date,
	Position int references Positions(Id_position) NOT NULL
);

create table Client(
	Id_client int primary key identity(1,1),
	Name varchar(30),
	Surname varchar(50) NOT NULL,
	Phone_number nchar(11) NOT NULL
);

create table Visit(
	Id_visit int primary key identity(1,1),
	Id_room int references Rooms(Id_room) NOT NULL,
	Id_client int references Client(Id_client) NOT NULL,
	Check_in date NOT NULL,
	Check_out date,
	Parking money default 0.00,
	Breakfast money default 0.00
);
