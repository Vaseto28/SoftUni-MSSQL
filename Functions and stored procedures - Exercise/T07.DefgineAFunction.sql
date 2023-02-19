CREATE FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(100), @word NVARCHAR(100))
RETURNS BIT
AS
BEGIN
    DECLARE @result BIT = 0

    DECLARE @index INT = 1
    WHILE (@index <= LEN(@word))
    BEGIN
        DECLARE @currCH NVARCHAR(1) = SUBSTRING(@word, @index, 1)
        
        IF CHARINDEX(@currCH, @setOfLetters) = 0
        BEGIN
            SET @result = 0
            BREAK
        END

        SET @index += 1
    END

    RETURN @result
END

DROP FUNCTION ufn_IsWordComprised

SELECT dbo.ufn_IsWordComprised('Sofia', 'oistmiahf')