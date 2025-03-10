CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE EMPLOYEE(
EID INT PRIMARY KEY,
NAME VARCHAR(20),
MONTH INT,
SALARY int
);

INSERT INTO EMPLOYEE (EID, NAME, MONTH, SALARY) VALUES
(12228, 'Rose', 15, 1968),
(33645, 'Angela', 1, 3443),
(45692, 'Frank', 17, 1608),
(56118, 'Patrick', 7, 1345),
(59725, 'Lisa', 11, 2330),
(74197, 'Kimberly', 16, 4372),
(78454, 'Bonnie', 8, 1771),
(83565, 'Michael', 6, 2017),
(98607, 'Todd', 5, 3396),
(99989, 'Joe', 9, 3573);

SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC;
-- Query employee names with salary > 2000 given value and month < 10, ordered by EID.
SELECT NAME FROM EMPLOYEE WHERE SALARY>2000 AND MONTH<10 ORDER BY EID ASC;
