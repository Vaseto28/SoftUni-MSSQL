SELECT c.LastName, Ceiling(AVG(b.Rating)), p.[Name] FROM Creators AS c
RIGHT OUTER JOIN CreatorsBoardgames AS cb ON c.Id = cb.CreatorId
JOIN Boardgames AS b ON cb.BoardgameId = b.Id
JOIN Publishers AS p ON p.Id = b.PublisherId
WHERE p.[Name] = 'Stonemaier Games'
GROUP BY c.LastName, p.[Name]
ORDER BY AVG(b.Rating) DESC