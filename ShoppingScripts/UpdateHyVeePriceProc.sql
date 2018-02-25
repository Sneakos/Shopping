USE Shopping
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Van Keulen
-- Create date: 
-- Description: Updates HyVee Price
-- =============================================
CREATE OR ALTER PROCEDURE UpdateHyVeePrice 
@Price decimal(5, 2) = 0,
@BrandID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	UPDATE dbo.Brands
	SET HyVeePrice = @Price
	WHERE ID = @BrandID
END
GO
