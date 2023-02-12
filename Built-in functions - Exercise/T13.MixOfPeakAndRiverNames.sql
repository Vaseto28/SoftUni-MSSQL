SELECT PeakName, RiverName, CONCAT(LOWER(PeakName), LOWER(SUBSTRING(RiverName, 2, LEN(RiverName) - 1))) AS Mix FROM Peaks, Rivers
WHERE LOWER(SUBSTRING(PeakName, LEN(PeakName), 1)) = LOWER(SUBSTRING(RiverName, 1, 1))
ORDER BY Mix