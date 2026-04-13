--PC sales fact table
SELECT DISTINCT [Cost_Price]
      ,[Sale_Price]
      ,[Discount_Amount]
      ,[Finance_Amount]
      ,[Credit_Score]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
  INTO [computer_stg].[dbo].[pc_sales_fact]
  FROM [computer_stg].[dbo].[raw_pc_data]

  --Insert Sales ID column
  DROP TABLE [computer_stg].[dbo].[pc_sales_fact]
  CREATE TABLE [computer_stg].[dbo].[pc_sales_fact](
	[SalesID] INT IDENTITY(1,1) PRIMARY KEY,
	[Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL
)

--Insert values into table from raw data
INSERT INTO [computer_stg].[dbo].[pc_sales_fact](
	[Cost_Price],
	[Sale_Price],
	[Discount_Amount],
	[Finance_Amount],
	[Credit_Score],
	[Cost_of_Repairs],
	[Total_Sales_per_Employee],
	[PC_Market_Price]
)
SELECT DISTINCT [Cost_Price],
				[Sale_Price],
				[Discount_Amount],
				[Finance_Amount],
				[Credit_Score],
				[Cost_of_Repairs],
				[Total_Sales_per_Employee],
				[PC_Market_Price]
FROM [computer_stg].[dbo].[raw_pc_data]

--Show all the sales
SELECT *
FROM [computer_stg].[dbo].[pc_sales_fact]