CREATE PROC usp_GetEmployeesSalaryAboveNumber @number DECIMAL(18, 2)
AS
    SELECT FirstName, LastName FROM Employees
    WHERE Salary >= @number

EXEC dbo.usp_GetEmployeesSalaryAboveNumber 48100