--Dim Payment
SELECT DISTINCT [Payment_Method]
INTO [computer_stg].[dbo].[dim_payment]
FROM [computer_stg].[dbo].[raw_pc_data]

--Inserting payment ID column
DROP TABLE [computer_stg].[dbo].[dim_payment]
CREATE TABLE [computer_stg].[dbo].[dim_payment](
	[PaymentID] INT IDENTITY(1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL
)

--Insert values into the table from the raw data
INSERT INTO [computer_stg].[dbo].[dim_payment](
	[Payment_Method]
)
SELECT DISTINCT [Payment_Method]
FROM [computer_stg].[dbo].[raw_pc_data]