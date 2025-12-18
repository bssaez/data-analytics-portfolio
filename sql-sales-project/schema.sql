CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    ID VARCHAR(20),
    Age INT,
    BirthDate DATE,
    Address VARCHAR(200),
    Phone VARCHAR(30),
    Email VARCHAR(100)
);
GO

CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Position VARCHAR(50),
    HireDate DATE
);
GO

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT
);
GO

-- Computed column for stock status
ALTER TABLE Products
ADD Status AS (
    CASE 
        WHEN StockQuantity > 0 THEN 'In Stock'
        ELSE 'Out of Stock'
    END
);
GO

CREATE TABLE Sales (
    SaleID INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT NOT NULL,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    Quantity INT NOT NULL,
    SaleDate DATE NOT NULL,

    CONSTRAINT FK_Sales_Products
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID),

    CONSTRAINT FK_Sales_Customers
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),

    CONSTRAINT FK_Sales_Employees
        FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
GO