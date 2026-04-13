--Dim Priority
SELECT DISTINCT [Priority]
INTO [computer_stg].[dbo].[dim_priority]
FROM [computer_stg].[dbo].[raw_pc_data]

--Inserting priority ID column
DROP TABLE [computer_stg].[dbo].[dim_priority]
CREATE TABLE [computer_stg].[dbo].[dim_priority](
	[PriorityID] INT IDENTITY(1,1) PRIMARY KEY,
	[Priority] [nvarchar](50) NOT NULL
) 

--Insert values into the table from the raw data
INSERT INTO [computer_stg].[dbo].[dim_priority](
	[Priority]
)
SELECT DISTINCT [Priority]
FROM [computer_stg].[dbo].[raw_pc_data]

--Show all the priorities
SELECT *
FROM [computer_stg].[dbo].[dim_priority]