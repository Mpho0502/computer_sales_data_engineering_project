-- Create stored procedure to ensure required databases exist
CREATE PROCEDURE sp_create_databases_stg_and_dwh
AS
BEGIN
    SET NOCOUNT ON;

    -- Create computer_stg if it does not exist
    IF DB_ID('computer_stg') IS NULL
    BEGIN
        CREATE DATABASE computer_stg;
    END

    -- Create computer_dwh if it does not exist
    IF DB_ID('computer_dwh') IS NULL
    BEGIN
        CREATE DATABASE computer_dwh;
    END
END
GO
