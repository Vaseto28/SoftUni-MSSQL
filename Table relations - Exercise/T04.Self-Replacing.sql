CREATE TABLE Managers(
    ManagerID INT PRIMARY KEY IDENTITY(101, 1),
    [Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Teachers(
    TeacherID INT PRIMARY KEY IDENTITY (101, 1),
    [Name] NVARCHAR(50) NOT NULL,
    ManagerID INT REFERENCES Managers(ManagerID)
)

INSERT INTO Managers
VALUES
    ('Angel'),
    ('Lyuba'),
    ('Vasil'),
    ('Dimitar'),
    ('Gosho'),
    ('Miro')

INSERT INTO Teachers
VALUES 
    ('John', NULL),
    ('Maya', 106),
    ('Silvia', 106),
    ('Ted', 105),
    ('Mark', 101),
    ('Greta', 101)

SELECT * FROM Teachers