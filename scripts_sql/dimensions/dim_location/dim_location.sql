--Dim Location
SELECT DISTINCT [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
INTO [computer_stg].[dbo].[dim_location]
FROM [computer_stg].[dbo].[raw_pc_data]

--inserting location ID column
