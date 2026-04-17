--Create table
DROP TABLE [computer_stg].[dbo].[dim_shop] CREATE TABLE [computer_stg].[dbo].[dim_shop](
	[ShopID] INT IDENTITY (1, 1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL,
	[Load_date] DATETIME DEFAULT GETDATE()
) 
--Insert values into the table from the raw data
INSERT INTO
	[computer_stg].[dbo].[dim_shop] ([Shop_Name], [Shop_Age])
SELECT
	DISTINCT [Shop_Name],
	[Shop_Age]
FROM
	[computer_stg].[dbo].[raw_pc_data] 
--Show all the shops
SELECT
	*
FROM
	[computer_stg].[dbo].[dim_shop]