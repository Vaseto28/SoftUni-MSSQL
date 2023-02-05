-- 16
-- •	Towns (Id, Name)
-- •	Addresses (Id, AddressText, TownId)
-- •	Departments (Id, Name)
-- •	Employees (Id, FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)

CREATE DATABASE SoftUni
USE SoftUni

CREATE TABLE Towns(
    Id INT PRIMARY KEY IDENTITY,
    [Name] NVARCHAR(100) NOT NULL
)

CREATE TABLE Addresses(
    Id INT PRIMARY KEY IDENTITY,
    AddressText NVARCHAR(100) NOT NULL,
    TownId INT REFERENCES Towns(Id) NOT NULL
)

CREATE TABLE Departments(
    Id INT PRIMARY KEY IDENTITY,
    [Name] NVARCHAR(100) NOT NULL
)

CREATE TABLE Employees(
    Id INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    JobTitle NVARCHAR(50),
    DepartmentId INT REFERENCES Departments(Id) NOT NULL,
    HireDate DATETIME2,
    Salary FLOAT,
    AddressId INT REFERENCES Addresses(Id)
)

--