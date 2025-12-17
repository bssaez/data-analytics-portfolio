USE HelpdeskDB
GO

CREATE TABLE Employees(
	EmployeeID INT IDENTITY (1,1) PRIMARY KEY,
	FullName VARCHAR(100),
	Role VARCHAR(100),
	HireDate DATE
);
GO

CREATE TABLE Customers (
	CustomerID INT IDENTITY(1,1) PRIMARY KEY,
	FullName VARCHAR(100),
	Email VARCHAR(100),
	Deparment VARCHAR(100)
);
GO

CREATE TABLE Tickects (
	TickectID INT IDENTITY (1,1) PRIMARY KEY,
	Title VARCHAR(150),
	Description VARCHAR(500),
	Category VARCHAR (50),
	Status VARCHAR(50),
	Priority VARCHAR(20), 
	CreatedDate DATE,
	ResolvedDate DATE Null,
 AssignedTo INT,
 CustomerID INT,
 CONSTRAINT FK_Tickets_Employees FOREIGN KEY (AssignedTo) REFERENCES Employees(EmployeeID),
 CONSTRAINT FK_Tickets_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO





