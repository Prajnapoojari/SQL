CREATE DATABASE OCCUPATION;
USE OCCUPATION;
CREATE TABLE OCCUPATIONS (
    Name VARCHAR(50),
    Occupation VARCHAR(50)
);

INSERT INTO OCCUPATIONS (Name, Occupation) VALUES
('Ashely', 'Professor'),
('Christeen', 'Professor'),
('Jane', 'Actor'),
('Jenny', 'Doctor'),
('Julia', 'Actor'),
('Ketty', 'Professor'),
('Maria', 'Actor'),
('Meera', 'Singer'),
('Priya', 'Singer'),
('Samantha', 'Doctor');

-- Formats and orders names alphabetically with the first letter of their occupation.
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') 
FROM OCCUPATIONS 
ORDER BY Name;

/* The goal is to pivot the OCCUPATIONS table so that each occupation becomes a column, 
and names are displayed alphabetically under each occupation. */
SELECT
MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT Name, Occupation, 
           ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
    FROM OCCUPATIONS
) AS temp
GROUP BY rn
ORDER BY rn;

-- Counts the number of each occupation, formats the output, and sorts them properly.
SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') 
FROM OCCUPATIONS 
GROUP BY Occupation 
ORDER BY COUNT(*), Occupation;

