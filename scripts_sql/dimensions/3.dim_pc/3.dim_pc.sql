-- Create table if it does not exist
IF OBJECT_ID('[computer_stg].[dbo].[dim_pc]', 'U') IS NULL
BEGIN
    CREATE TABLE [computer_stg].[dbo].[dim_pc](
        [PC_ID] INT IDENTITY(1, 1) PRIMARY KEY,
        [PC_Make] NVARCHAR(50) NOT NULL,
        [PC_Model] NVARCHAR(50) NOT NULL,
        [Load_date] DATETIME DEFAULT GETDATE()
    );
END
GO

-- Insert distinct values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_pc] (
    [PC_Make],
    [PC_Model]
)
SELECT DISTINCT
    [PC_Make],
    [PC_Model]
FROM [computer_stg].[dbo].[raw_pc_data];
GO

-- Show all the PCs
SELECT *
FROM [computer_stg].[dbo].[dim_pc];
GO
