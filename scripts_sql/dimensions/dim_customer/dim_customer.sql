--Dim Customer
SELECT DISTINCT  [Customer_Name]
                ,[Customer_Surname]
                ,[Customer_Contact_Number]
                ,[Customer_Email_Address]
INTO [computer_stg].[dbo].[dim_customer]
FROM [computer_stg].[dbo].[raw_pc_data]

--Inserting customer ID column 
DROP TABLE [computer_stg].[dbo].[dim_customer]
CREATE TABLE [computer_stg].[dbo].[dim_customer](
	[CustomerID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
)

