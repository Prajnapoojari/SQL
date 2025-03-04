CREATE DATABASE STUDENTS;
USE STUDENTS;
CREATE TABLE STUDENTS (
ID INT PRIMARY KEY,
NAME VARCHAR(20),
MARKS INT
);

INSERT INTO Students (ID, Name, Marks) VALUES 
(1, 'Alice', 85),
(2, 'Bob', 90),
(3, 'Charlie', 78),
(4, 'David', 92),
(5, 'Emma', 88),
(6, 'Frank', 76),
(7, 'Grace', 95),
(8, 'Hannah', 89),
(9, 'Ian', 80),
(10, 'Jack', 84);

-- Query student names with marks > 75, ordered by the last three name characters, then by ID.
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3), ID ASC;