USE Shopping
GO

CREATE TABLE ShoppingList
(
	ID int NOT NULL IDENTITY,
	[Date] date,
	TotalItems int,
	EstimatedPrice money
)
GO

ALTER TABLE ShoppingList
ADD CONSTRAINT PK_ShoppingListID PRIMARY KEY (ID)
GO