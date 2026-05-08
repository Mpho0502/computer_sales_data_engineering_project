-- Create stored procedure to build and populate dim_pc
CREATE PROCEDURE sp_create_dim_pc
AS
BEGIN
    SET NOCOUNT ON;

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

    -- Insert distinct values into the table from raw data
    INSERT INTO [computer_stg].[dbo].[dim_pc] (
        [PC_Make],
        [PC_Model]
    )
    SELECT DISTINCT
        [PC_Make],
        [PC_Model]
    FROM [computer_stg].[dbo].[raw_pc_data];

    -- Show all the PCs
    SELECT *
    FROM [computer_stg].[dbo].[dim_pc];
END
GO
