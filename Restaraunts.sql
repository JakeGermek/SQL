SELECT [name]
      ,[neighborhood]
      ,[cuisine]
      ,[review]
      ,[price]
      ,[health]
  FROM [SQL - Core].[dbo].[restaurants]

  SELECT *
  FROM [SQL - Core].dbo.restaurants;

  --DISTINCT
  --*This selects all the specific neighborhood options in the dataset*
  SELECT DISTINCT neighborhood
  FROM [SQL - Core].dbo.restaurants;


  --*This selects all specific cuisine types in the dataset*
  SELECT DISTINCT cuisine
  FROM [SQL - Core].dbo.restaurants;


  --WHERE 
  --*Maybe we want Chinese takeout. This selects all columns from the dataset where cuisine equals "Chinese"*
  SELECT *
  FROM [SQL - Core].dbo.restaurants
  WHERE cuisine = 'Chinese';


  --*This returns all options with a 4 star review or higher*
  SELECT *
  FROM [SQL - Core].dbo.restaurants
  WHERE review >= 4;


  --*This returns all options that are "Italian" AND "$$$"*
  SELECT *
  FROM [SQL - Core].dbo.restaurants
  WHERE cuisine = 'Italian'
  AND price = '$$$';


 --*Maybe you can't remember the name of a restaraunt but it contains "herm" in it*
 SELECT *
 FROM [SQL - Core].dbo.restaurants
 WHERE name LIKE '%herm%';


 --*We want to find restaraunts in close proximity to the house so we will find all spots in "Midtown", "Downtown", OR "Chinatown"
 SELECT *
 FROM [SQL - Core].dbo.restaurants
 WHERE neighborhood = 'Midtown'
 OR neighborhood = 'Downtown'
 OR neighborhood = 'Chinatown';

 --*We want to create a list ranking the top 10 restaraunts based on reviews*
 SELECT TOP (10)*
 FROM [SQL - Core].dbo.restaurants
 ORDER BY review DESC;


 --*If we wanted to create classifications based on "review", we would do:*
SELECT
CASE
WHEN review > 4.5 THEN 'Extraordinary'
WHEN review > 4 THEN 'Excellent'
WHEN review > 3 THEN 'Good'
WHEN review > 2 THEN 'Fair'
ELSE 'Poor'
END AS 'Review'
FROM [SQL - Core].dbo.restaurants;