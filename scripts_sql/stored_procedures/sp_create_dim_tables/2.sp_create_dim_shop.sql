-- Create stored procedure to build and populate dim_shop
CREATE PROCEDURE sp_create_dim_shop
AS
BEGIN
    SET NOCOUNT ON;

    -- Create table if it does not exist
    IF OBJECT_ID('[computer_stg].[dbo].[dim_shop]', 'U') IS NULL
    BEGIN
        CREATE TABLE [computer_stg].[dbo].[dim_shop](
            [ShopID] INT IDENTITY(1, 1) PRIMARY KEY,
            [Shop_Name] NVARCHAR(50) NOT NULL,
            [Shop_Age] NVARCHAR(50) NOT NULL,
            [Load_date] DATETIME DEFAULT GETDATE()
        );
    END

    -- Insert distinct values into the table from raw data
    INSERT INTO [computer_stg].[dbo].[dim_shop] (
        [Shop_Name],
        [Shop_Age]
    )
    SELECT DISTINCT
        [Shop_Name],
        [Shop_Age]
    FROM [computer_stg].[dbo].[raw_pc_data];

    -- Show all the shops
    SELECT *
    FROM [computer_stg].[dbo].[dim_shop];
END
GO
