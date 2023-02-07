SELECT FirstName + ' ' + MiddleName + ' ' + LastName
AS 'Full name'
FROM Employees
WHERE
    Salary = 25000 OR
    Salary = 14000 OR 
    Salary = 12500 OR
    Salary = 23600 