-- Create master stored procedure to refresh all dimensions and fact table
CREATE PROCEDURE sp_executions_for_all_dimensions_and_fact_table
AS
BEGIN
    SET NOCOUNT ON;

    -- Refresh database tables
    EXEC sp_create_databases_stg_and_dwh;

    -- Refresh dimension tables
    EXEC sp_create_dim_location;
    EXEC sp_create_dim_shop;
    EXEC sp_create_dim_pc;
    EXEC sp_create_dim_storage;
    EXEC sp_create_dim_customer;
    EXEC sp_create_dim_sales_person;
    EXEC sp_create_dim_date;
    EXEC sp_create_dim_payment;
    EXEC sp_create_dim_channel;
    EXEC sp_create_dim_priority;

    -- Refresh fact table
    EXEC sp_create_pc_sales_fact
END
GO
