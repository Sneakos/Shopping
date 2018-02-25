USE Shopping
GO

CREATE TABLE ItemType
(
	ID int NOT NULL IDENTITY,
	[Type] varchar(20)
)
GO

ALTER TABLE ItemType
ADD CONSTRAINT PK_ItemTypeID PRIMARY KEY (ID);
GO

INSERT INTO ItemType
VALUES
('Dairy'),        ('Fruit'),      ('Vegetable'),      ('Meat'),
('Grains'),       ('Condiments'), ('Non-Perishable'), ('Utility'), 
('Miscellaneous')