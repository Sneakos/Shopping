USE Shopping
GO
--DROP TABLE Brands
CREATE TABLE Brands
(
	ID int NOT NULL IDENTITY,
	ProductName varchar(500) NOT NULL,
	ItemID int NOT NULL,
	WalmartID int NOT NULL,
	HyVeeID int NOT NULL,
	Price decimal(5,2) NOT NULL,
	[Default] bit NOT NULL
)
GO

ALTER TABLE Brands
ADD CONSTRAINT PK_BrandID PRIMARY KEY (ID)
GO

ALTER TABLE Brands
ADD CONSTRAINT FK_ItemID FOREIGN KEY (ItemID)
REFERENCES dbo.ItemType (ID)
GO

INSERT INTO Brands (ProductName, ItemID, Price, [Default], WalmartID, HyVeeID)
Values
('Kraft Singles American Cheese Slices 16 ct Pack', 3, 2.99, 1, 11964619, 1614505),
('Kraft Deli Deluxe Cheese Slices American - 16 CT', 3, 3.99, 0, 10295521, 1086192)