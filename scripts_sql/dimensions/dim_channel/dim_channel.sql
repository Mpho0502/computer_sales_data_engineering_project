--Dim Channel
SELECT DISTINCT [Channel]
INTO [computer_stg].[dbo].[dim_channel]
FROM [computer_stg].[dbo].[raw_pc_data]

--Insert channel ID column
DROP TABLE [computer_stg].[dbo].[dim_channel]
CREATE TABLE [computer_stg].[dbo].[dim_channel](
	[Channel_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL
)

--Insert values into the table from the raw data
INSERT INTO [computer_stg].[dbo].[dim_channel](
	[Channel]
)
SELECT DISTINCT [Channel]
FROM [computer_stg].[dbo].[raw_pc_data]


