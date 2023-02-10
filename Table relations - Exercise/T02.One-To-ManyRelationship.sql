CREATE TABLE Manufacturers(
    ManufacturerID INT PRIMARY KEY IDENTITY,
    [Name] NVARCHAR(20) NOT NULL,
    EstablishedOn DATETIME2 NOT NULL
)

CREATE TABLE Models(
    ModelID INT PRIMARY KEY IDENTITY(101, 1),
    [Name] NVARCHAR(20) NOT NULL,
    ManufacturerID INT REFERENCES Manufacturers(ManufacturerID) NOT NULL
)

INSERT INTO Manufacturers
VALUES
    ('BMW', '03-07-1916'),
    ('Tesla', '01-01-2003'),
    ('Lada', '05-01-1966')

INSERT INTO Models
VALUES
    ('X1', 1),
    ('i6', 1),
    ('Model S', 2),
    ('Model X', 2),
    ('Model 3', 2),
    ('Nova', 3)