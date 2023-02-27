SELECT CONCAT(c.FirstName, ' ', c.LastName) AS FullName, c.Email, MAX(b.Rating) FROM Creators AS c
JOIN CreatorsBoardgames AS cb ON c.Id = cb.CreatorId
JOIN Boardgames AS b ON b.Id = cb.BoardgameId
WHERE CHARINDEX('.com', c.Email) <> 0
GROUP BY c.Email, CONCAT(c.FirstName, ' ', c.LastName)
ORDER BY CONCAT(c.FirstName, ' ', c.LastName)