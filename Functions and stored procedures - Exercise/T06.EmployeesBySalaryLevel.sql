CREATE PROC usp_EmployeesBySalaryLevel @level NVARCHAR(10)
AS
    SELECT FirstName, LastName FROM Employees
    WHERE @level = dbo.ufn_GetSalaryLevel(Salary)

EXEC dbo.usp_EmployeesBySalaryLevel 'High'