CREATE TABLE SalesLT.Courier
(
CourierID INT NOT NULL,
CourierCode CHAR(3) NOT NULL,
CourierName NVARCHAR(50) NOT NULL,
PRIMARY KEY(CourierID, CourierCode)
);
GO

ALTER TABLE SalesLT.Courier
ADD Telephone VARCHAR(15) NULL, Email VARCHAR(25) NULL;

SELECT * FROM SalesLT.Courier

DROP TABLE SalesLT.Courier;