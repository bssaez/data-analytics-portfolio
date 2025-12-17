-- ¿Qué tickets existen y su estado actual?
SELECT
	Title,
	Description,
	Category, 
	Priority,
	CreatedDate,
	ResolvedDate
FROM Tickets
ORDER BY Priority
GO

-- ¿Qué queda por resolver?
SELECT
    Title,
    Category,
    Priority,
	Status,
    CreatedDate
FROM Tickets
WHERE Status IN ('Open','In Progress')
ORDER BY Priority DESC, CreatedDate;
GO

-- Por categoría más común
SELECT
	Category,
	COUNT (*) AS TotalTickets
FROM Tickets
GROUP BY Category
ORDER BY TotalTickets DESC;
GO

-- ¿Cuántos problemas críticos tenemos?
SELECT 
	Priority,
	COUNT (*) AS TotalTickets
FROM Tickets
GROUP BY Priority
ORDER BY TotalTickets DESC;
GO

-- Carga de trabajo por empleado
SELECT
	T.CreatedDate,
	E.FullName AS Technician,
	E.Position,
	T.Status,
	T.Priority
FROM Tickets T
JOIN Employees E ON T.AssignedTo = E.EmployeeID
ORDER BY CreatedDate
GO

-- Total de asignaciones abiertas por empleados
SELECT
	E.FullName AS Technician,
	COUNT (*) AS TotalTickets
FROM Tickets T
JOIN EMPLOYEES E ON T.AssignedTo = E.EmployeeID
WHERE T.Status IN ('Open', 'In Progress')
GROUP BY E.FullName
ORDER BY TotalTickets DESC
GO

-- -- Total de asignaciones cerradas por empleados
SELECT
	E.FullName AS Technician,
	COUNT (*) AS TotalTickets
FROM Tickets T
JOIN EMPLOYEES E ON T.AssignedTo = E.EmployeeID
WHERE T.Status IN ('Resolved')
GROUP BY E.FullName
ORDER BY TotalTickets DESC
GO

-- Total de Tickets por cliente
SELECT
	C.FullName AS Client,
	C.Department,
	COUNT (C.FullName) AS TotalTickets
FROM Tickets T
JOIN Customers C ON T.CustomerID = C.CustomerID
GROUP BY C.Fullname, C.Department
ORDER BY TotalTickets DESC
GO

-- Total de Tickets ABIERTOS por cliente
SELECT
	C.FullName AS Client,
	C.Department,
	COUNT (C.FullName) AS TotalTickets
FROM Tickets T
JOIN Customers C ON T.CustomerID = C.CustomerID
WHERE T.Status IN ('Open', 'in Progress')
GROUP BY C.Fullname, C.Department
ORDER BY TotalTickets DESC
GO

-- Tiempo promedio de resolución (días)
SELECT 
	AVG(DATEDIFF(DAY, CreatedDate, ResolvedDate)) AS AvgResolutionDays
FROM Tickets
WHERE ResolvedDate IS NOT NULL
GO

-- ¿Qué tipo de problema tarda más en resolverse?
SELECT
    Category,
    AVG(DATEDIFF(DAY, CreatedDate, ResolvedDate)) AS AvgResolutionDays
FROM Tickets
WHERE ResolvedDate IS NOT NULL
GROUP BY Category
ORDER BY AvgResolutionDays DESC;
GO

SELECT
    YEAR(CreatedDate) AS Year,
    MONTH(CreatedDate) AS Month,
    COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY YEAR(CreatedDate), MONTH(CreatedDate)
ORDER BY Year, Month;


