--14
-- Using SQL queries create CarRental database with the following entities:
-- •	Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
-- •	Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
-- •	Employees (Id, FirstName, LastName, Title, Notes)
-- •	Customers (Id, DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes)
-- •	RentalOrders (Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)

CREATE TABLE Categories(
    Id INT PRIMARY KEY IDENTITY,
    CategoryName NVARCHAR(50) NOT NULL,
    DailyRate FLOAT,
    WeeklyRate FLOAT,
    MonthlyRate FLOAT,
    WeekendRate FLOAT 
)

INSERT INTO Categories
VALUES
    ('Sedan', 4.5, 5.8, 9.8, 3.7),
    ('Comby', 4.2, 5.4, 9.6, 7.7),
    ('Hatch-back', 4.9, 4.8, 9.1, 8.7)

CREATE TABLE Cars(
    Id INT PRIMARY KEY IDENTITY,
    PlateNumber NVARCHAR(20) NOT NULL,
    Manifacturer NVARCHAR(50) NOT NULL,
    Model NVARCHAR(30) NOT NULL,
    CarYear DATETIME2 NOT NULL,
    CategoryId INT REFERENCES Categories(Id) NOT NULL,
    Doors INT,
    Picture NVARCHAR(50),
    Condition NVARCHAR(100),
    Available BIT NOT NULL
)

INSERT INTO Cars
VALUES
    ('CM0753BA', 'Volkswagen', 'Sharan', '2006', 2, 4, NULL, 'Everything is top', 0),
    ('CB8300TB', 'Volkswagen', 'Touran', '2005', 2, 4, NULL, 'Something is missing', 1),
    ('BT9988CA', 'BMW', 'M5 Competition', '2019', 1, 2, NULL, 'Everithiong is top', 1)

CREATE TABLE Employees(
    Id INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Title NVARCHAR(50),
    Notes NVARCHAR(150)
)

INSERT INTO Employees
VALUES
    ('Angel', 'Atanasov', 'Some title', 'Some notes'),
    ('Berk', 'Sirmen', 'Another title', 'Another notes'),
    ('Georgi', 'Pachedjiev', 'One title', 'One note')

SELECT * FROM Employees

CREATE TABLE Customers(
    Id INT PRIMARY KEY IDENTITY,
    DriverLicenseNumber NVARCHAR(30) NOT NULL,
    FullName NVARCHAR(100) NOT NULL,
    Adress NVARCHAR(50),
    City NVARCHAR(50),
    ZIPCode NVARCHAR(10),
    Notes NVARCHAR(100)
)

INSERT INTO Customers
VALUES
    ('CM0753BA', 'Vasil Kremenarov', 'ul. Visarion Smolyanski 18', 'Smolyan', '4700', 'Some notes'),
    ('CB9988CB', 'Vasil Iliev', 'ul. Mafiotska 11', 'Sofia', '1000', 'Mafia notes'),
    ('BT5555BT', 'Dimitar Kremenarov', 'ul. Visarion Smolyanski 18', 'Veliko Tarnovo', '2500', 'Another notes')

CREATE TABLE RentalOrders(
    Id INT PRIMARY KEY IDENTITY,
    EmployeeId INT REFERENCES Employees(Id) NOT NULL,
    CustomerId INT REFERENCES Customers(Id) NOT NULL,
    CarId INT REFERENCES Cars(Id) NOT NULL,
    TankLevel FLOAT,
    KilometrageStart INT,
    KilometrageEnd INT,
    Totalkilometrage INT,
    StartDate DATETIME2,
    EndDate DATETIME2,
    TotalDays INT,
    RatingApplied FLOAT,
    TaxRate FLOAT,
    OrderStatus NVARCHAR(30),
    Notes NVARCHAR(100)
)

INSERT INTO RentalOrders
VALUES
    (1, 1, 1, 90, 120000, 260000, 140000, '01-10-2006', '01-16-2023', 2000, 10, 4.5, 'Ordered', 'Some notes'),
    (2, 2, 2, 40, 130000, 260000, 130000, '04-10-2006', '04-11-2024', 1000, 9.7, 8.9, 'Recieved', 'Mafia notes'),
    (3, 3, 3, 50, 150000, 260000, 110000, '07-10-2006', '05-25-2022', 5000, 8.4, 3.6, 'Manifactured', 'Another notes')

SELECT * FROM RentalOrders