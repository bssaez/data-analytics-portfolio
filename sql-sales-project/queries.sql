-- CONSULTAS 
-- Venta general de productos

SELECT 
	S.SaleDate,
	E.FullName AS Employee,
	C.FullName AS Customer,
	P.ProductName,
	P.Category,
	SUM(S.Quantity) AS TotalUnitsSold,
	SUM(S.Quantity * P.Price) AS TotalRevenue
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
JOIN Employees E ON S.EmployeeID = E.EmployeeID
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY S.SaleDate, E.FullName, C.FullName, P.ProductName, P.Category, S.Quantity
ORDER BY S.SaleDate
GO

-- Ventas por categoría
SELECT
	P.Category,
	SUM(S.Quantity) AS TotalUnitsSold,
	SUM(S.Quantity*P.Price) AS TotalRevenue,
	COUNT (*) AS NumberOfSales
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY TotalRevenue DESC
GO

-- Ventas por empleados
SELECT 
	E.FullName AS Employee,
	SUM(S.Quantity) AS TotalUnitsSold, 
	SUM(S.Quantity*P.Price) AS TotalRevenue
FROM Sales S
JOIN Employees E ON S.EmployeeID = E.EmployeeID
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY E.FullName
ORDER BY TotalRevenue DESC
GO

-- Ventas por clientes
SELECT 
	C.FullName AS Customer,
	SUM(S.Quantity) AS TotalUnitsBought,
	SUM(S.Quantity*P.Price) AS TotalSpent
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY C.FullName
ORDER BY TotalSpent DESC
GO

-- Ventas por mes
SELECT 
    FORMAT(S.SaleDate,'yyyy-MM') AS SaleMonth,
    SUM(S.Quantity) AS TotalUnitsSold,
    SUM(S.Quantity * P.Price) AS TotalRevenue,
    COUNT(*) AS NumberOfSales
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY FORMAT(S.SaleDate,'yyyy-MM')
ORDER BY SaleMonth;
GO

-- Productos agotados VS Stock
SELECT 
    ProductName,
    Category,
    StockQuantity,
    Status
FROM Products
ORDER BY StockQuantity ASC;
GO
