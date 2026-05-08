-- Create stored procedure to build and populate dim_customer
CREATE PROCEDURE sp_create_dim_customer
AS
BEGIN
    SET NOCOUNT ON;

    -- Create table if it does not exist
    IF OBJECT_ID('[computer_stg].[dbo].[dim_customer]', 'U') IS NULL
    BEGIN
        CREATE TABLE [computer_stg].[dbo].[dim_customer](
            [CustomerID] INT IDENTITY(1, 1) PRIMARY KEY,
            [Customer_Name] NVARCHAR(50) NOT NULL,
            [Customer_Surname] NVARCHAR(50) NOT NULL,
            [Customer_Contact_Number] NVARCHAR(50) NOT NULL,
            [Customer_Email_Address] NVARCHAR(50) NOT NULL,
            [Load_date] DATETIME DEFAULT GETDATE()
        );
    END

    -- Insert distinct values into the table from raw data
    INSERT INTO [computer_stg].[dbo].[dim_customer] (
        [Customer_Name],
        [Customer_Surname],
        [Customer_Contact_Number],
        [Customer_Email_Address]
    )
    SELECT DISTINCT
        [Customer_Name],
        [Customer_Surname],
        [Customer_Contact_Number],
        [Customer_Email_Address]
    FROM [computer_stg].[dbo].[raw_pc_data];

    -- Show all the customers
    SELECT *
    FROM [computer_stg].[dbo].[dim_customer];
END
GO
