USE [Shopping]
GO
/****** Object:  StoredProcedure [dbo].[InsertBrand]    Script Date: 11/13/2017 5:45:38 PM ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Van Keulen
-- Create date: 
-- Description:	Inserts brand item to brands table
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[InsertBrand] 
@ProductName varchar(500),
@TypeID int,
@BrandID int,
@Store int, --0 for walmart, 1 for hyvee
@Price money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	BEGIN TRY

		BEGIN TRAN

			IF @Store = 0
				BEGIN
					INSERT INTO dbo.Brands
					VALUES (@ProductName, @TypeID, @BrandID, 0, @Price, 0, 0)
				END
			ELSE IF @Store = 1
				BEGIN
					INSERT INTO dbo.Brands
					VALUES (@ProductName, @TypeID, 0, @BrandID, 0, @Price, 0)
				END
		COMMIT TRAN
	
	END TRY

	BEGIN CATCH
	
		ROLLBACK TRAN
	
	END CATCH

END
