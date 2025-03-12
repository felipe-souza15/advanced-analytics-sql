-- Retrieves all employees under a given manager using recursion
WITH EmployeeHierarchy AS (
    SELECT EmployeeID, Name, ManagerID
    FROM Employees
    WHERE ManagerID IS NULL
    UNION ALL
    SELECT e.EmployeeID, e.Name, e.ManagerID
    FROM Employees e
    JOIN EmployeeHierarchy h ON e.ManagerID = h.EmployeeID
)
SELECT * FROM EmployeeHierarchy;