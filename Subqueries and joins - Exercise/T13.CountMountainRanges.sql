SELECT c.CountryCode, COUNT(m.MountainRange) AS MountainRange FROM Countries AS c
JOIN MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
JOIN Mountains AS m ON mc.MountainId = m.Id
WHERE c.CountryCode IN ('RU', 'US', 'BG')
GROUP BY c.CountryCode