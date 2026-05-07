-- Create table if it does not exist
IF OBJECT_ID('[computer_stg].[dbo].[dim_channel]', 'U') IS NULL
BEGIN
    CREATE TABLE [computer_stg].[dbo].[dim_channel](
        [Channel_ID] INT IDENTITY(1, 1) PRIMARY KEY,
        [Channel] NVARCHAR(50) NOT NULL,
        [Load_date] DATETIME DEFAULT GETDATE()
    );
END
GO

-- Insert distinct values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_channel] (
    [Channel]
)
SELECT DISTINCT
    [Channel]
FROM [computer_stg].[dbo].[raw_pc_data];
GO

-- Show all the channels
SELECT *
FROM [computer_stg].[dbo].[dim_channel];
GO
