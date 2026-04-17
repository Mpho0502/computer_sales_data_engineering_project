--CREATE DATABASE computer_stg
--CREATE DATABASE computer_dwh

--

IF DB_ID('computer_stg') IS NULL
BEGIN
    CREATE DATABASE computer_stg;
END
GO

--

IF DB_ID('computer_dwh') IS NULL
BEGIN
    CREATE DATABASE computer_dwh;
END
GO

