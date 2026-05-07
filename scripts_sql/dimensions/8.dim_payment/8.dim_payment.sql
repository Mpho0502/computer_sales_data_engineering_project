-- Create table if it does not exist
IF OBJECT_ID('[computer_stg].[dbo].[dim_payment]', 'U') IS NULL
BEGIN
    CREATE TABLE [computer_stg].[dbo].[dim_payment](
        [PaymentID] INT IDENTITY(1, 1) PRIMARY KEY,
        [Payment_Method] NVARCHAR(50) NOT NULL,
        [Load_date] DATETIME DEFAULT GETDATE()
    );
END
GO

-- Insert distinct values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_payment] (
    [Payment_Method]
)
SELECT DISTINCT
    [Payment_Method]
FROM [computer_stg].[dbo].[raw_pc_data];
GO

-- Show all payment methods
SELECT *
FROM [computer_stg].[dbo].[dim_payment];
GO
