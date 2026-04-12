--Dim Shop
SELECT DISTINCT [Shop_Name]
      ,[Shop_Age]
INTO [computer_stg].[dbo].[dim_shop]
FROM [computer_stg].[dbo].[raw_pc_data]

--Inserting shop ID column
DROP TABLE [computer_stg].[dbo].[dim_shop]
CREATE TABLE [computer_stg].[dbo].[dim_shop](
	[ShopID] INT IDENTITY (1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL
)