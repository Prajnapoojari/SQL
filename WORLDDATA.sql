CREATE DATABASE WorldData;
USE WorldData;

CREATE TABLE COUNTRY (
    Code CHAR(3) PRIMARY KEY,
    Name VARCHAR(100),
    Continent VARCHAR(50)
);

CREATE TABLE CITY (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    CountryCode CHAR(3),
    Population INT,
    FOREIGN KEY (CountryCode) REFERENCES COUNTRY(Code)
);

INSERT INTO COUNTRY (Code, Name, Continent) VALUES
('USA', 'United States', 'North America'),
('CAN', 'Canada', 'North America'),
('IND', 'India', 'Asia'),
('CHN', 'China', 'Asia'),
('FRA', 'France', 'Europe'),
('DEU', 'Germany', 'Europe');

INSERT INTO CITY (Name, CountryCode, Population) VALUES
('New York', 'USA', 8419600),
('Los Angeles', 'USA', 3980400),
('Toronto', 'CAN', 2930000),
('Vancouver', 'CAN', 631490),
('Mumbai', 'IND', 20411000),
('Delhi', 'IND', 16787941),
('Shanghai', 'CHN', 24870895),
('Beijing', 'CHN', 21542000),
('Paris', 'FRA', 2148327),
('Berlin', 'DEU', 3769495);

-- Find the average city population per continent, rounded down
SELECT COUNTRY.Continent, 
       FLOOR(AVG(CITY.Population)) AS AvgCityPopulation
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent;