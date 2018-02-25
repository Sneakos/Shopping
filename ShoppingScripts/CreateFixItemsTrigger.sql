CREATE OR ALTER TRIGGER FixIdentity ON dbo.Brands AFTER DELETE
AS
DECLARE @numRows int
SET @numRows = (SELECT Count(*) FROM dbo.Brands)
DBCC CHECKIDENT ('dbo.Brands', RESEED, @numRows);  
GO