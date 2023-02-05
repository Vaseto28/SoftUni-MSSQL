INSERT INTO Towns
VALUES
    ('Sofia'),
    ('Plovdiv'),
    ('Varna'),
    ('Burgas')

INSERT INTO Departments
VALUES
    ('Engineering'),
    ('Sales'),
    ('Marketing'),
    ('Software Development'),
    ('Quality Assurance')

-- Ivan Ivanov Ivanov	.NET Developer	Software Development	01/02/2013	3500.00
-- Petar Petrov Petrov	Senior Engineer	Engineering	02/03/2004	4000.00
-- Maria Petrova Ivanova	Intern	Quality Assurance	28/08/2016	525.25
-- Georgi Teziev Ivanov	CEO	Sales	09/12/2007	3000.00
-- Peter Pan Pan	Intern	Marketing	28/08/2016	599.88

INSERT INTO Employees
VALUES
    ('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '02-01-2013', 3500.00, NULL),
    ('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '03-02-2004', 4000.00, NULL),
    ('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '08-28-2016', 525.25, NULL),
    ('Georgi', 'Teziev', 'Ivanov', 'CEO', 2, '12-09-2007', 3000.00, NULL),
    ('Petar', 'Pan', 'Pan', 'Intern', 3, '08-28-2016', 599.88, NULL)

-- 20
SELECT * FROM Towns
ORDER BY [Name]

SELECT * FROM Departments
ORDER BY [Name]

SELECT * FROM Employees
ORDER BY Salary DESC

-- 21
SELECT [Name] FROM Towns
ORDER BY [Name]

SELECT [Name] FROM Departments
ORDER BY [Name]

SELECT [FirstName], [LastName], [JobTitle], [Salary] FROM Employees
ORDER BY Salary DESC

-- 22
UPDATE Employees
SET Salary += Salary * 0.10
SELECT Salary FROM Employees

-- 23
UPDATE Payments
SET TaxRate -= TaxRate * 0.03
SELECT TaxRate FROM Payments

--24
DELETE FROM Occupancies