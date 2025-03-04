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

-- Counts the number of each occupation, formats the output, and sorts them properly.
SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') 
FROM OCCUPATIONS 
GROUP BY Occupation 
ORDER BY COUNT(*), Occupation;

