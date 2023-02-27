SELECT TOP 5 b.[Name], b.Rating, c.[Name] FROM Boardgames AS b
JOIN PlayersRanges AS pr ON b.PlayersRangeId = pr.Id
JOIN Categories AS c ON b.CategoryId = c.Id
WHERE (b.Rating > 7.00 AND CHARINDEX('a', b.[Name]) <> 0) OR (b.Rating > 7.50 AND (pr.PlayersMin = 2 AND pr.PlayersMax = 5))
ORDER BY b.[Name], b.Rating DESC