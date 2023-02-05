-- 8
-- Using SQL query create table Users with columns:
-- •	Id – unique number for every user. There will be no more than 263-1 users (auto incremented).
-- •	Username – unique identifier of the user. It will be no more than 30 characters (non Unicode)  (required).
-- •	Password – password will be no longer than 26 characters (non Unicode) (required).
-- •	ProfilePicture – image with size up to 900 KB. 
-- •	LastLoginTime
-- •	IsDeleted – shows if the user deleted his/her profile. Possible states are true or false.
-- Make the Id a primary key. Populate the table with exactly 5 records. Submit your CREATE and INSERT statements as Run queries & check DB.

CREATE TABLE Users(
    Id INT PRIMARY KEY IDENTITY,
    Username VARCHAR(30) NOT NULL,
    [Password] VARCHAR(26) NOT NULL,
    ProfilePicture NVARCHAR(MAX),
    LastLoginTime DATETIME2,
    IsDeleted BIT 
)

INSERT INTO Users
VALUES
    ('Angel', '123jkla', NULL, '10-16-2023', 1),
    ('Rusi', '1231dsq', NULL, '10-14-2023', 1),
    ('Kaloqn', 'dasdasda', NULL, '10-17-2023', 0),
    ('Borislav', 'asdasdas', NULL, '10-21-2023', 0),
    ('Vasil', 'asdddds', NULL, '10-15-2023', 1)

SELECT * FROM Users

-- 9
ALTER TABLE Users DROP CONSTRAINT PK__Users__3214EC071F017EE0

-- 10
ADD CHECK CONSTRAINT 