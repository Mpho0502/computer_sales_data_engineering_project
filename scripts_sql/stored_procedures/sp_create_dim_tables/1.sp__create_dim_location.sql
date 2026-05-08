-- Create stored procedure to build and populate dim_location
CREATE PROCEDURE sp_create_dim_location
AS
BEGIN
    SET NOCOUNT ON;

    -- Create table if it does not exist
    IF OBJECT_ID('[computer_stg].[dbo].[dim_location]', 'U') IS NULL
    BEGIN
        CREATE TABLE [computer_stg].[dbo].[dim_location](
            [LocationID] INT IDENTITY(1, 1) PRIMARY KEY,
            [Continent] NVARCHAR(50) NOT NULL,
            [Country_or_State] NVARCHAR(50) NOT NULL,
            [Province_or_City] NVARCHAR(100) NOT NULL,
            [Load_date] DATETIME DEFAULT GETDATE()
        );
    END

    -- Insert distinct values into the table from Raw data
    INSERT INTO [computer_stg].[dbo].[dim_location] (
        [Continent],
        [Country_or_State],
        [Province_or_City]
    )
    SELECT DISTINCT
        [Continent],
        [Country_or_State],
        [Province_or_City]
    FROM [computer_stg].[dbo].[raw_pc_data];

    -- Show all the locations
    SELECT *
    FROM [computer_stg].[dbo].[dim_location];
END
GO
