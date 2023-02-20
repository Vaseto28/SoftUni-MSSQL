SELECT CONCAT(o.[Name], '-', a.[Name]) AS OwnersAnimals, o.PhoneNumber, ac.CageId FROM Owners AS o
JOIN Animals AS a ON o.Id = a.OwnerId AND a.AnimalTypeId = 1
JOIN AnimalsCages AS ac ON a.Id = ac.AnimalId
ORDER BY o.[Name], a.[Name] DESC