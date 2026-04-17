--Create dimension tables with all descriptive attributes that provide context to the raw pc data.
--Dim Location
SELECT DISTINCT [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
INTO [computer_stg].[dbo].[dim_location]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim Shop
SELECT DISTINCT [Shop_Name]
      ,[Shop_Age]
INTO [computer_stg].[dbo].[dim_shop]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim PC
SELECT DISTINCT [PC_Make]
                ,[PC_Model]
INTO [computer_stg].[dbo].[dim_pc]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim Storage
SELECT DISTINCT [Storage_Type]
                ,[RAM]
                ,[Storage_Capacity]
INTO [computer_stg].[dbo].[dim_storage]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim Customer
SELECT DISTINCT  [Customer_Name]
                ,[Customer_Surname]
                ,[Customer_Contact_Number]
                ,[Customer_Email_Address]
INTO [computer_stg].[dbo].[dim_customer]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim Sales Person
SELECT DISTINCT  [Sales_Person_Name]
                ,[Sales_Person_Department]
INTO [computer_stg].[dbo].[dim_sales_person]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim Date
SELECT DISTINCT [Purchase_Date]
               ,[Ship_Date]
INTO [computer_stg].[dbo].[dim_date]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim Payment
SELECT DISTINCT [Payment_Method]
INTO [computer_stg].[dbo].[dim_payment]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim Channel
SELECT DISTINCT [Channel]
INTO [computer_stg].[dbo].[dim_channel]
FROM [computer_stg].[dbo].[raw_pc_data]

--Dim Priority
SELECT DISTINCT [Priority]
INTO [computer_stg].[dbo].[dim_priority]
FROM [computer_stg].[dbo].[raw_pc_data]