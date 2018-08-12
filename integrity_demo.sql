-- =======================================================================
-- Create database template for a Windows Azure SQL Database
-- This script will run only in the context of the master database.
-- To manage this database in SQL Server Management Studio, either connect  
-- to the created database, or connect to master.
-- =======================================================================

CREATE DATABASE IntegrityDemo;
GO


CREATE TABLE dbo.Customer
(
	CustomerID INT IDENTITY(1,1) PRIMARY KEY,
	CustomerName NVARCHAR(50) NOT NULL
);
GO

INSERT INTO dbo.Customer
VALUES 
('Marcin Jankowski'),
('Darcy Jane');
GO

CREATE TABLE dbo.CustomerOrder
(
CustomerOrderID INT IDENTITY(1000001,1) PRIMARY KEY,
CustomerID INT NOT NULL
	FOREIGN KEY REFERENCES dbo.Customer(CustomerID),
OrderAmount DECIMAL(18,2) NOT NULL
);
GO


SELECT * FROM dbo.Customer;

INSERT INTO dbo.CustomerOrder (CustomerID, OrderAmount)
VALUES (1, 12.50), (2, 14.70);

SELECT * FROM dbo.CustomerOrder;

INSERT INTO dbo.CustomerOrder (CustomerID, OrderAmount)
VALUES (3, 15.50); -- Fails because of foreign key constraint. There is no CustomerID 3 in the Customer table

DELETE FROM dbo.Customer WHERE CustomerID = 1; -- Fails because of foreign key constraint.

ALTER TABLE dbo.CustomerOrder
ADD CONSTRAINT FK_CustomerOrder_Customer
FOREIGN KEY (CustomerID)
REFERENCES dbo.Customer(CustomerID)
ON DELETE CASCADE;
GO

DELETE FROM dbo.Customer WHERE CustomerID = 1; -- Successfully cascading delete of all references of CustomerID =1 


SELECT * FROM dbo.Customer;
SELECT * FROM dbo.CustomerOrder;



