--Create a fact table with all quantitative data from the raw data.
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
