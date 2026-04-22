CREATE PROCEDURE sp_create_dim_date
AS
BEGIN
  -- SQL_statements to be executed
 --create table
DROP TABLE [computer_stg].[dbo].[dim_date] CREATE TABLE [computer_stg].[dbo].[dim_date](
	[DateID] INT IDENTITY(1, 1) PRIMARY KEY,
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL,
	[Load_date] DATETIME DEFAULT GETDATE()
) 
--Insert values into the table from raw data
INSERT INTO
	[computer_stg].[dbo].[dim_date]([Purchase_Date], [Ship_Date])
SELECT
	DISTINCT [Purchase_Date],
	[Ship_Date]
FROM
	[computer_stg].[dbo].[raw_pc_data] 
--Show all the dates
SELECT
	*
FROM
	[computer_stg].[dbo].[dim_date]
END;