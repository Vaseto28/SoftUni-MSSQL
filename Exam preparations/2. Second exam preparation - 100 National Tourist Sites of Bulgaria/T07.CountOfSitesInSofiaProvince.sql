SELECT l.Province, l.Municipality, l.[Name], COUNT(*) AS CountOfSites FROM Locations AS l
JOIN Sites AS s ON l.Id = s.LocationId
WHERE Province = 'Sofia'
GROUP BY l.Municipality, l.[Name], l.Province
ORDER BY COUNT(*) DESC, l.[Name]