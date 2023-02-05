-- 7

-- Using SQL query, create table People with the following columns:
-- •	Id – unique number. For every person there will be no more than 231-1 people (auto incremented).
-- •	Name – full name of the person. There will be no more than 200 Unicode characters (not null).
-- •	Picture – image with size up to 2 MB (allow nulls).
-- •	Height – in meters. Real number precise up to 2 digits after floating point (allow nulls).
-- •	Weight – in kilograms. Real number precise up to 2 digits after floating point (allow nulls).
-- •	Gender – possible states are m or f (not null).
-- •	Birthdate – (not null).
-- •	Biography – detailed biography of the person. It can contain max allowed Unicode characters (allow nulls).
-- Make the Id a primary key. Populate the table with only 5 records. Submit your CREATE and INSERT statements as Run queries & check DB.

CREATE TABLE People(
    Id INT PRIMARY KEY IDENTITY,
    [Name] NVARCHAR(200) NOT NULL,
    Picture NVARCHAR(MAX),
    Height DECIMAL(10, 2),
    Weigth DECIMAL(10, 2),
    Gender CHAR(1) NOT NULL,
    Birthdate DATETIME2 NOT NULL,
    Biography NVARCHAR(MAX)
)

INSERT INTO People
VALUES
    ('Angel', NULL, 1.89, 80.8123123123, 'm', '12-10-2000', 'Angel is very beutifule man.'),
    ('Vasil', NULL, 1.849, 80.8434, 'm', '12-15-2000', 'Vasil is very beutifule man.'),
    ('Lika', NULL, 1.4234389, 80.843341, 'f', '12-13-2000', 'Lika is very beutifule woman.'),
    ('Mariya', NULL, 1.842343129, 80.832, 'f', '12-7-2000', 'Mariya is very beutifule woman.'),
    ('Ivan', NULL, 1.8453456549, 80.2128, 'm', '12-11-2000', 'Ivan is very beutifule man.')

SELECT * FROM People