-- Create table if it does not exist
IF OBJECT_ID('[computer_stg].[dbo].[dim_storage]', 'U') IS NULL
BEGIN
    CREATE TABLE [computer_stg].[dbo].[dim_storage](
        [StorageID] INT IDENTITY(1, 1) PRIMARY KEY,
        [Storage_Type] NVARCHAR(50) NOT NULL,
        [RAM] NVARCHAR(50) NOT NULL,
        [Storage_Capacity] NVARCHAR(50) NOT NULL,
        [Load_date] DATETIME DEFAULT GETDATE()
    );
END
GO

-- Insert distinct values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_storage] (
    [Storage_Type],
    [RAM],
    [Storage_Capacity]
)
SELECT DISTINCT
    [Storage_Type],
    [RAM],
    [Storage_Capacity]
FROM [computer_stg].[dbo].[raw_pc_data];
GO

-- Show all the storage insight
SELECT *
FROM [computer_stg].[dbo].[dim_storage];
GO
