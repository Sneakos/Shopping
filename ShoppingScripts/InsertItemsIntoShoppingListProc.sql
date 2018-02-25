USE Shopping
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Van Keulen
-- Create date: 
-- Description:	Inserts items into shopping list
-- =============================================
CREATE OR ALTER PROCEDURE InsertIntoShoppingList 
@Date date,
@TotalItems int,
@Price money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	BEGIN TRY

		BEGIN TRAN

			INSERT INTO dbo.ShoppingList
			VALUES (@Date, @TotalItems, @Price)

		COMMIT TRAN
	
	END TRY

	BEGIN CATCH
	
		ROLLBACK TRAN
	
	END CATCH

END
GO
