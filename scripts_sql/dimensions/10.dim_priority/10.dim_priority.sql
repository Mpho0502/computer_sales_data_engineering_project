-- Create table if it does not exist
IF OBJECT_ID('[computer_stg].[dbo].[dim_priority]', 'U') IS NULL
BEGIN
    CREATE TABLE [computer_stg].[dbo].[dim_priority](
        [PriorityID] INT IDENTITY(1, 1) PRIMARY KEY,
        [Priority] NVARCHAR(50) NOT NULL,
        [Load_date] DATETIME DEFAULT GETDATE()
    );
END
GO

-- Insert distinct values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_priority] (
    [Priority]
)
SELECT DISTINCT
    [Priority]
FROM [computer_stg].[dbo].[raw_pc_data];
GO

-- Show all the priorities
SELECT *
FROM [computer_stg].[dbo].[dim_priority];
GO
