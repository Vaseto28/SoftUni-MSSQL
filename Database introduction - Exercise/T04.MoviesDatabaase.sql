-- 13
-- Using SQL queries create Movies database with the following entities:
-- •	Directors (Id, DirectorName, Notes)
-- •	Genres (Id, GenreName, Notes)
-- •	Categories (Id, CategoryName, Notes)
-- •	Movies (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)

-- Set the most appropriate data types for each column. Set a primary key to each table. 
-- Populate each table with exactly 5 records. 
-- Make sure the columns that are present in 2 tables would be of the same data type. 
-- Consider which fields are always required and which are optional. 
-- Submit your CREATE TABLE and INSERT statements as Run queries & check DB.

CREATE DATABASE Movies
USE Movies

CREATE TABLE Directors(
    Id INT PRIMARY KEY IDENTITY,
    DirectorName NVARCHAR(50) NOT NULL,
    Notes NVARCHAR(100)
)

INSERT INTO Directors
VALUES
    ('Angel', 'asd'),
    ('Yulka', 'ssd'),
    ('Marti', 'sadasd'),
    ('Gosho', 'as'),
    ('Iliyan', 'ddd')

CREATE TABLE Genres(
    Id INT PRIMARY KEY IDENTITY,
    GenreName NVARCHAR(50) NOT NULL,
    Notes NVARCHAR(100)
)

INSERT INTO Genres
VALUES
    ('Drama', 'asdassd'),
    ('Action', 'assadsadd'),
    ('Criminal', 'asdsasdasdasdsad'),
    ('Comedy', 'asdsadd'),
    ('Documentary', 'assdsdad')

CREATE TABLE Categories(
    Id INT PRIMARY KEY IDENTITY,
    CategoryName NVARCHAR(50) NOT NULL,
    Notes NVARCHAR(100)
)

INSERT INTO Categories
VALUES
    ('First', 'asassd'),
    ('Second', 'asssasd'),
    ('Third', 'a'),
    ('Fourth', 'assd'),
    ('Fifth', 'asddsad')

CREATE TABLE Movies(
    Id INT PRIMARY KEY IDENTITY,
    Title NVARCHAR(30) NOT NULL,
    DirectorId INT REFERENCES Directors(Id) NOT NULL,
    CopirigthYear DATETIME2,
    [Length] INT NOT NULL,
    GenreId INT REFERENCES Genres(Id) NOT NULL,
    CategoryId INT REFERENCES Categories(Id) NOT NULL,
    Rating FLOAT,
    Notes NVARCHAR(100)
)

INSERT INTO Movies
VALUES
    ('Fast and furious', 2, '2018', 124, 2, 1, 9.8, NULL),
    ('Fast and furious 2', 1, '2019', 123, 5, 2, 9.7, NULL),
    ('Fast and furious 3', 4, '2020', 322, 3, 3, 9.9, NULL),
    ('Fast and furious 4', 3, '2021', 145, 1, 4, 9.1, NULL),
    ('Fast and furious 5', 5, '2022', 176, 4, 5, 9.5, NULL)

SELECT * FROM Movies