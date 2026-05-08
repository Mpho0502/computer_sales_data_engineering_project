-- Create stored procedure to drop all stg tables
CREATE PROCEDURE sp_drop_all_dimensions_and_fact_table
AS
BEGIN
    SET NOCOUNT ON;

    -- Drop dimension tables safely
    IF OBJECT_ID('[computer_stg].[dbo].[dim_location]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_location];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_shop]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_shop];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_pc]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_pc];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_storage]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_storage];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_customer]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_customer];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_sales_person]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_sales_person];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_date]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_date];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_payment]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_payment];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_channel]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_channel];

    IF OBJECT_ID('[computer_stg].[dbo].[dim_priority]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[dim_priority];

    -- Drop fact table safely
    IF OBJECT_ID('[computer_stg].[dbo].[pc_sales_fact]', 'U') IS NOT NULL
        DROP TABLE [computer_stg].[dbo].[pc_sales_fact];
END
GO
