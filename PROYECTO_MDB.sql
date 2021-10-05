CREATE DATABASE BaseAutos_ProyectoMDB
GO

USE BaseAutos_ProyectoMDB
GO

CREATE TABLE Clientes(
ID int NOT NULL UNIQUE,
Nombres Varchar (150) NOT NULL,
Apellidos Varchar (150) NOT NULL,
Teléfono Varchar (15), 
Correo Varchar (100),
Dirección Varchar (250) NOT NULL,
DUI Varchar (11) NOT NULL UNIQUE,
NIT Varchar (18) NOT NULL UNIQUE,
Contraseña Varchar (10) NOT NULL,
Compras int
)

CREATE TABLE Carros(
Placa varchar(10) NOT NULL UNIQUE,
VIN varchar(18) NOT NULL UNIQUE,
Marca varchar(25) NOT NULL,
Modelo varchar(50) NOT NULL,
Año int NOT NULL,
Color varchar(20) NOT NULL,
Tipo_Transmision varchar(20) NOT NULL,
Precio money NOT NULL
)

CREATE TABLE Camionetas(
Placa varchar(10) NOT NULL UNIQUE,
VIN varchar(18) NOT NULL UNIQUE,
Marca varchar(25) NOT NULL,
Modelo varchar(50) NOT NULL,
Año int NOT NULL,
Color varchar(20) NOT NULL,
Tipo_Transmision varchar(20) NOT NULL,
Precio money NOT NULL
)

CREATE TABLE Motocicletas(
Placa varchar(10) NOT NULL UNIQUE,
VIN varchar(18) NOT NULL UNIQUE,
Marca varchar(25) NOT NULL,
Modelo varchar(50) NOT NULL,
Año int NOT NULL,
Color varchar(20) NOT NULL,
Tipo_Transmision varchar(20) NOT NULL,
Precio money NOT NULL
)

CREATE TABLE Factura(
ID_Factura int  NOT NULL UNIQUE,
ID_Cliente int NOT NULL,
Tipo_Vehiculo varchar(20) NOT NULL,
Marca_Vehiculo varchar(25) NOT NULL,
Modelo_Vehiculo varchar(50) NOT NULL,
Precio_Vehiculo money NOT NULL,
Fecha_Factura datetime NOT NULL
)
