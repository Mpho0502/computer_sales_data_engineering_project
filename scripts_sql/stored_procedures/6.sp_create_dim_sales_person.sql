-- Create stored procedure to build and populate dim_sales_person
CREATE PROCEDURE sp_create_dim_sales_person
AS
BEGIN
    SET NOCOUNT ON;

    -- Create table if it does not exist
    IF OBJECT_ID('[computer_stg].[dbo].[dim_sales_person]', 'U') IS NULL
    BEGIN
        CREATE TABLE [computer_stg].[dbo].[dim_sales_person](
            [SalesPersonID] INT IDENTITY(1, 1) PRIMARY KEY,
            [Sales_Person_Name] NVARCHAR(50) NOT NULL,
            [Sales_Person_Department] NVARCHAR(50) NOT NULL,
            [Load_date] DATETIME DEFAULT GETDATE()
        );
    END

    -- Insert distinct values into the table from raw data
    INSERT INTO [computer_stg].[dbo].[dim_sales_person] (
        [Sales_Person_Name],
        [Sales_Person_Department]
    )
    SELECT DISTINCT
        [Sales_Person_Name],
        [Sales_Person_Department]
    FROM [computer_stg].[dbo].[raw_pc_data];

    -- Show all the sales persons
    SELECT *
    FROM [computer_stg].[dbo].[dim_sales_person];
END
GO
