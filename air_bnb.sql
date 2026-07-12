
DROP DATABASE air_bnb;


CREATE DATABASE air_bnb;
USE air_bnb;
DROP TABLE hotel;
CREATE TABLE hotel(
id INT PRIMARY KEY,
city VARCHAR(100),
country VARCHAR(100),
number_of_rows INT,
year_listed INT 
);
INSERT INTO hotel (id, city,country , number_of_rows, year_listed)
VALUES
( 101, 'PARIS' , 'FRANCE', 6, 2021),
(102, 'TOKYO' , 'JAPAN', 8, 2023),
(103, 'NEW YORK', 'USA', 7, 2025),
(104, 'AUSTRILIA', 'SYDNEY', 8, 2026),
SHOW TABLES;
SELECT DATABASE();
SHOW TABLES;
SELECT *FROM hotel;

SELECT city, year_listed
FROM hotel;
SELECT id, city
FROM hotel
ORDER BY  number_of_rows ASC;

SELECT id, city
FROM hotel
ORDER BY number_of_rows DESC;

SELECT *
FROM hotel
LIMIT 3;

SELECT DISTINCT country
FROM hotel;

SELECT 
*FROM hotel 
WHERE number_of_rows >=7;

SELECT *
FROM hotel
WHERE number_of_rows BETWEEN 3 AND 6;

SELECT *
FROM hotel 
WHERE city ='PARIS'

SELECT *
FROM hotel 
WHERE country IN ('USA' AND 'SYDNEY');

SELECT *
FROM hotel 
WHERE city LIKE 'p%' AND  city NOT LIKE '%t';

SELECT *
FROM hotel 
WHERE city = 'PARIS' AND number_of_rows>4;

SELECT *
FROM hotel 
WHERE city = 'PARIS' AND year_listed>=2021;

SELECT  MIN(number_of_rows)
FROM hotel;

SELECT  MAX(number_of_rows)
FROM hotel;

SELECT  MAX(number_of_rows)
FROM hotel
GROUP BY country

SELECT  number_of_rows
FROM hotel
GROUP BY number_of_rows
HAVING sum(id)>7;