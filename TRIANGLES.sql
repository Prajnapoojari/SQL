CREATE DATABASE TRIANGLES;
USE TRIANGLES;

CREATE TABLE TRIANGLES (
    A INT,
    B INT,
    C INT
);

INSERT INTO TRIANGLES (A, B, C) VALUES
(2, 2, 3),    -- Isosceles
(3, 3, 3),    -- Equilateral
(4, 5, 6),    -- Scalene
(1, 2, 3);    -- Not A Triangle

SELECT 
    CASE 
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS Triangle_Type
FROM TRIANGLES;


