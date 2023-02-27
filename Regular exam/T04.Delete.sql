DELETE FROM CreatorsBoardgames
WHERE BoardgameId IN (
    SELECT Id FROM Boardgames
    WHERE PublisherId IN (
        SELECT Id FROM Publishers
        WHERE AddressId = (
            SELECT Id FROM Addresses
            WHERE SUBSTRING(Town, 1, 1) = 'L'
        )
    )
)

DELETE FROM Boardgames
WHERE PublisherId IN (
    SELECT Id FROM Publishers
    WHERE AddressId = (
        SELECT Id FROM Addresses
        WHERE SUBSTRING(Town, 1, 1) = 'L'
    )
)

DELETE FROM Publishers
WHERE AddressId = (
    SELECT Id FROM Addresses
    WHERE SUBSTRING(Town, 1, 1) = 'L'
)

DELETE FROM Addresses
WHERE SUBSTRING(Town, 1, 1) = 'L'