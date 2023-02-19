CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS NVARCHAR(10)
AS
BEGIN
    DECLARE @result NVARCHAR(10) = 'Average'
    IF @salary < 30000
    BEGIN
        SET @result = 'Low'
    END
    ELSE IF @salary > 50000
    BEGIN
        SET @result = 'High'
    END

    RETURN @result
END

SELECT Salary, dbo.ufn_GetSalaryLevel(Salary) FROM Employees