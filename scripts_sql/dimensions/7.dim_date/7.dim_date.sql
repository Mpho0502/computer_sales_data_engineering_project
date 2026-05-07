-- Create table if it does not exist
IF OBJECT_ID('[computer_stg].[dbo].[dim_date]', 'U') IS NULL
BEGIN
    CREATE TABLE [computer_stg].[dbo].[dim_date](
        [DateID] INT IDENTITY(1, 1) PRIMARY KEY,
        [Purchase_Date] DATETIME2(7) NOT NULL,
        [Ship_Date] NVARCHAR(50) NOT NULL,
        [Load_date] DATETIME DEFAULT GETDATE()
    );
END
GO

-- Insert distinct values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_date] (
    [Purchase_Date],
    [Ship_Date]
)
SELECT DISTINCT
    [Purchase_Date],
    [Ship_Date]
FROM [computer_stg].[dbo].[raw_pc_data];
GO

-- Show all the dates
SELECT *
FROM [computer_stg].[dbo].[dim_date];
GO
