--Dim Sales Person
SELECT DISTINCT  [Sales_Person_Name]
                ,[Sales_Person_Department]
INTO [computer_stg].[dbo].[dim_sales_person]
FROM [computer_stg].[dbo].[raw_pc_data]

--Insert sales person ID column
DROP TABLE [computer_stg].[dbo].[dim_sales_person]
CREATE TABLE [computer_stg].[dbo].[dim_sales_person](
	[SalesPersonID] INT IDENTITY(1,1) PRIMARY KEY,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL
)

--Insert values into tables from raw data
INSERT INTO [computer_stg].[dbo].[dim_sales_person](
	[Sales_Person_Name],
	[Sales_Person_Department]
)
SELECT DISTINCT [Sales_Person_Name],
				[Sales_Person_Department]
FROM [computer_stg].[dbo].[raw_pc_data]

--Show all the sales persons
SELECT *
FROM [computer_stg].[dbo].[dim_sales_person]