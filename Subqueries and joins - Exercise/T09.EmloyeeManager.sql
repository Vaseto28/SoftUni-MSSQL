SELECT e.EmployeeID, e.FirstName, e.ManagerID, emp.FirstName FROM Employees AS e
JOIN Employees AS emp ON e.ManagerID = emp.EmployeeID
WHERE e.ManagerID IN (3, 7)
ORDER BY e.EmployeeID