-- Creating New Table
USE [SQL - Core]

create table groceries_khan (id INTEGER PRIMARY KEY, name VARCHAR(50), quantity INTEGER);

INSERT INTO dbo.groceries_khan
VALUES (1, 'Bananas', 4);
INSERT INTO dbo.groceries_khan
VALUES (2, 'Peanut Butter', 1);
INSERT INTO dbo.groceries_khan
VALUES (3, 'Chocolate Bars', 2);



SELECT *
FROM groceries_khan

-- Adding Column to Exisiting Table
ALTER TABLE dbo.groceries_khan
ADD aisle_number INTEGER;

INSERT INTO dbo.groceries_khan
VALUES (4, 'Ice Cream', 1, 12);
INSERT INTO dbo.groceries_khan
VALUES (5, 'Cherries', 6, 2);
INSERT INTO dbo.groceries_khan
VALUES (6, 'Syrup', 1, 4);

SELECT *
FROM dbo.groceries_khan
