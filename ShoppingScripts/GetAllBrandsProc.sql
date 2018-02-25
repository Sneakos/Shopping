USE Shopping
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Van Keulen
-- Create date: 
-- Description:	Returns all brands
-- =============================================
CREATE OR ALTER PROCEDURE GetAllBrands 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT brands.ID, ProductName, '$' + CAST(WalmartPrice AS varchar(15)) as WalmartPrice, '$' + CAST(HyVeePrice AS varchar(15)) as HyVeePrice,
	 ItemID, [Name] AS ItemName, WalmartID, HyVeeID, [Default] FROM dbo.Brands
	 INNER JOIN dbo.Items
		ON dbo.Brands.ItemID = dbo.Items.ID
	ORDER BY [Default] DESC, WalmartPrice, HyVeePrice
END
GO
