-- Create stored procedure to build and populate dim_channel
CREATE PROCEDURE sp_create_dim_channel
AS
BEGIN
    SET NOCOUNT ON;

    -- Create table if it does not exist
    IF OBJECT_ID('[computer_stg].[dbo].[dim_channel]', 'U') IS NULL
    BEGIN
        CREATE TABLE [computer_stg].[dbo].[dim_channel](
            [Channel_ID] INT IDENTITY(1, 1) PRIMARY KEY,
            [Channel] NVARCHAR(50) NOT NULL,
            [Load_date] DATETIME DEFAULT GETDATE()
        );
    END

    -- Insert distinct values into the table from raw data
    INSERT INTO [computer_stg].[dbo].[dim_channel] (
        [Channel]
    )
    SELECT DISTINCT
        [Channel]
    FROM [computer_stg].[dbo].[raw_pc_data];

    -- Show all the channels
    SELECT *
    FROM [computer_stg].[dbo].[dim_channel];
END
GO
