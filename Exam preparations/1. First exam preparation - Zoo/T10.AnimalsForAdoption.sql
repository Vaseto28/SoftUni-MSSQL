SELECT a.Name, DATEPART(YYYY, BirthDate) AS BirthYear, [at].AnimalType FROM Animals AS a
JOIN AnimalTypes AS [at] ON a.AnimalTypeId = [at].Id
WHERE OwnerId IS NULL AND DATEDIFF(YYYY, BirthDate, '01/01/2022') < 5 AND [at].Id <> 3
ORDER BY a.Name