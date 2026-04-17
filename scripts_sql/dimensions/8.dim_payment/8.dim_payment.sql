--create table
DROP TABLE [computer_stg].[dbo].[dim_payment] CREATE TABLE [computer_stg].[dbo].[dim_payment](
	[PaymentID] INT IDENTITY(1, 1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL,
	[Load_date] DATETIME DEFAULT GETDATE()
) 
--Insert values into the table from the raw data
INSERT INTO
	[computer_stg].[dbo].[dim_payment]([Payment_Method])
SELECT
	DISTINCT [Payment_Method]
FROM
	[computer_stg].[dbo].[raw_pc_data] 
--Show all payment methods
SELECT
	*
FROM
	[computer_stg].[dbo].[dim_payment]