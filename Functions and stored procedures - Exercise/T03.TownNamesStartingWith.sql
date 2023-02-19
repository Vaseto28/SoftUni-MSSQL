CREATE PROC usp_GetTownsStartingWith @string NVARCHAR(100)
AS
    SELECT [Name] FROM Towns
    WHERE [Name] LIKE CONCAT(@string, '%')

EXEC dbo.usp_GetTownsStartingWith 'b'