-- Use master database and create KonMelShop database
USE master;
GO

CREATE DATABASE KonMelShop;
GO

-- Use KonMelShop database
USE KonMelShop;
GO

-- Create tbl_Cart table
CREATE TABLE tbl_Cart (
    cartId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    userId VARCHAR(20),
    stuffId VARCHAR(10),
    quantity INT
);
GO

-- Create tbl_Stuff table
CREATE TABLE tbl_Stuff (
    stuffId VARCHAR(10) NOT NULL PRIMARY KEY,
    description VARCHAR(250) NOT NULL,
    price FLOAT,
    stuffName VARCHAR(20) NOT NULL,
    yearOfProduction INT,
    quantity INT,
    notSale BIT,
    image VARCHAR(255)
);
GO

-- Create tbl_User table
CREATE TABLE tbl_User (
    userId VARCHAR(20) NOT NULL PRIMARY KEY,
    password INT NOT NULL,
    fullName VARCHAR(50) NOT NULL,
    role INT
);
GO
