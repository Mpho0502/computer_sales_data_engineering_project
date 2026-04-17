--create table
DROP TABLE [computer_stg].[dbo].[dim_location]
CREATE TABLE [computer_stg].[dbo].[dim_location](
	[LocationID] INT IDENTITY(1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL,
	[Load_date] DATETIME DEFAULT GETDATE()
)

--Insert values into the table from Raw data
INSERT INTO [computer_stg].[dbo].[dim_location] (
	[Continent],
	[Country_or_State],
	[Province_or_City] 
)
SELECT DISTINCT [Continent],
				[Country_or_State],
				[Province_or_City] 
FROM [computer_stg].[dbo].[raw_pc_data]

--Show all the locations
SELECT *
FROM [computer_stg].[dbo].[dim_location]