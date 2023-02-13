SELECT TOP 50 e.EmployeeID, CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName, CONCAT(emp.FirstName, ' ', emp.LastName) AS ManagerName, d.Name FROM Employees AS e
JOIN Employees AS emp ON e.ManagerID = emp.EmployeeID
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
ORDER BY e.EmployeeID