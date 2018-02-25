USE Shopping
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Van Keulen
-- Create date: 
-- Description:	Returns items
-- =============================================
CREATE OR ALTER PROCEDURE GetItems 
@ItemType varchar(20) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT Items.ID, [Type], [Name] FROM Items
	INNER JOIN ItemType
		ON ItemType.ID = Items.ItemTypeID
	Where [Type] = @ItemType OR @ItemType = ''
END
GO