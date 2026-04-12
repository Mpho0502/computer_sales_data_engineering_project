--Dim Location
SELECT DISTINCT [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
INTO [computer_stg].[dbo].[dim_location]
FROM [computer_stg].[dbo].[raw_pc_data]

--inserting location ID column
DROP TABLE [computer_stg].[dbo].[dim_location]
CREATE TABLE [computer_stg].[dbo].[dim_location](
	[LocationID] INT IDENTITY(1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
)

INSERT INTO [computer_stg].[dbo].[dim_location] (