-- Create computer_stg if it does not exist
IF DB_ID('computer_stg') IS NULL
BEGIN
    CREATE DATABASE computer_stg;
END
GO

-- Create computer_dwh if it does not exist
IF DB_ID('computer_dwh') IS NULL
BEGIN
    CREATE DATABASE computer_dwh;
END
GO
