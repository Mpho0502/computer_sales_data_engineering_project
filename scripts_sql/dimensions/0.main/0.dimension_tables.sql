-- Create dimension tables with descriptive attributes

-- Dim Location
IF OBJECT_ID('[computer_stg].[dbo].[dim_location]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Continent],
        [Country_or_State],
        [Province_or_City]
    INTO [computer_stg].[dbo].[dim_location]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim Shop
IF OBJECT_ID('[computer_stg].[dbo].[dim_shop]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Shop_Name],
        [Shop_Age]
    INTO [computer_stg].[dbo].[dim_shop]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim PC
IF OBJECT_ID('[computer_stg].[dbo].[dim_pc]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [PC_Make],
        [PC_Model]
    INTO [computer_stg].[dbo].[dim_pc]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim Storage
IF OBJECT_ID('[computer_stg].[dbo].[dim_storage]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Storage_Type],
        [RAM],
        [Storage_Capacity]
    INTO [computer_stg].[dbo].[dim_storage]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim Customer
IF OBJECT_ID('[computer_stg].[dbo].[dim_customer]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Customer_Name],
        [Customer_Surname],
        [Customer_Contact_Number],
        [Customer_Email_Address]
    INTO [computer_stg].[dbo].[dim_customer]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim Sales Person
IF OBJECT_ID('[computer_stg].[dbo].[dim_sales_person]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Sales_Person_Name],
        [Sales_Person_Department]
    INTO [computer_stg].[dbo].[dim_sales_person]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim Date
IF OBJECT_ID('[computer_stg].[dbo].[dim_date]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Purchase_Date],
        [Ship_Date]
    INTO [computer_stg].[dbo].[dim_date]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim Payment
IF OBJECT_ID('[computer_stg].[dbo].[dim_payment]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Payment_Method]
    INTO [computer_stg].[dbo].[dim_payment]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim Channel
IF OBJECT_ID('[computer_stg].[dbo].[dim_channel]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Channel]
    INTO [computer_stg].[dbo].[dim_channel]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO

-- Dim Priority
IF OBJECT_ID('[computer_stg].[dbo].[dim_priority]', 'U') IS NULL
BEGIN
    SELECT DISTINCT
        [Priority]
    INTO [computer_stg].[dbo].[dim_priority]
    FROM [computer_stg].[dbo].[raw_pc_data];
END
GO
