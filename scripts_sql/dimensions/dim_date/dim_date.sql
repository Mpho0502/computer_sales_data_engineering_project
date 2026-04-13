--Dim Date
SELECT DISTINCT [Purchase_Date]
               ,[Ship_Date]
INTO [computer_stg].[dbo].[dim_date]
FROM [computer_stg].[dbo].[raw_pc_data]

--Inserting date ID column
DROP TABLE [computer_stg].[dbo].[dim_date]
CREATE TABLE [computer_stg].[dbo].[dim_date](
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
)

--Insert values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_date](
	[Purchase_Date],
	[Ship_Date]
)
SELECT DISTINCT [Purchase_Date],
				[Ship_Date] 
FROM [computer_stg].[dbo].[raw_pc_data]

--Show all the dates
SELECT *
FROM [computer_stg].[dbo].[dim_date]