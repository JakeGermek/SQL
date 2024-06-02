SELECT [name]
      ,[location]
      ,[category]
      ,[employees]
      ,[raised]
      ,[valuation]
      ,[founded]
  FROM [SQL - Core].[dbo].[startups]


--COUNT
--*Using the COUNT function will give us the total number of companies in the dataset*
SELECT COUNT(*)	
FROM [SQL - Core].dbo.startups;


--SUM
--*We will use the SUM function to find the total for "raised" added together.*
SELECT SUM(raised) AS 'raised'
FROM [SQL - Core].dbo.startups;


--MAX
--*We use the MAX function to help us find the company with the highest "valuation"*
SELECT MAX(valuation) AS 'valuation'
FROM [SQL - Core].dbo.startups;


--MAX and Location
--We will use the MAX function to find the highest amount "raised" and also in the location "New York"*
SELECT MAX(raised) AS 'rasied'
FROM [SQL - Core].dbo.startups
WHERE location = 'New York';


--MIN
--*We will use the MIN function to find the oldest company*
SELECT MIN(founded) AS 'year'
FROM [SQL - Core].dbo.startups;


--AVG
--*We will use the AVG function to find the average amount of the "valuation" column*
SELECT AVG(raised) AS 'avg_raised'
FROM [SQL - Core].dbo.startups;


--*We will now return the average raised in each category*
SELECT category, AVG(raised) AS 'avg_raised'
FROM [SQL - Core].dbo.startups
GROUP BY category;


--ROUND
--*We will do the same code but use the ROUND function to round averages to 2 decimal places*
SELECT category, ROUND(AVG(raised), 2) AS 'avg_raised'
FROM [SQL - Core].dbo.startups
GROUP BY category;


--DESC
--*We will once again use the same code but use the DESC function to order the values from Highest to Lowest*
SELECT category, ROUND(AVG(raised), 2) AS 'avg_raised'
FROM [SQL - Core].dbo.startups
GROUP BY category
ORDER BY AVG(raised) DESC;


--*Now we will write a code to return the name of each category with the total number of companies that belong to it*
SELECT category, COUNT(*) AS 'num_of_companies'
FROM [SQL - Core].dbo.startups
GROUP BY category;


--*We will write a code to filter the result to only include categories that have more than 3 in them. This shows us which categories are most competitive*
SELECT category, COUNT (*) AS 'num_of_companies'
FROM [SQL - Core].dbo.startups
GROUP BY category
HAVING COUNT(*) > 3;


--*We are going to find the average size of each startup in each location*
SELECT location, AVG(employees) AS 'avg_employees'
FROM [SQL - Core].dbo.startups
GROUP BY location;


--*Lastly, we will find the average size of a startup in each location with average sizes above 500*
SELECT location, AVG(employees) AS 'avg_employees'
FROM [SQL - Core].dbo.startups
GROUP BY location
HAVING AVG(employees) > 500
ORDER BY AVG(employees) DESC;