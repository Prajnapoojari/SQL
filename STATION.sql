CREATE DATABASE station_db;
USE station_db;
CREATE TABLE STATION (
    ID INT,
    CITY VARCHAR(21),
    STATE VARCHAR(20),
    LAT_N INT,
    LONG_W INT
);

INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (1, 'New York', 'NY', 40.7128, -74.0060);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (2, 'Los Angeles', 'CA', 34.0522, -118.2437);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (3, 'Chicago', 'IL', 41.8781, -87.6298);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (4, 'Houston', 'TX', 29.7604, -95.3698);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (5, 'Phoenix', 'AZ', 33.4484, -112.0740);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (6, 'Philadelphia', 'PA', 39.9526, -75.1652);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (7, 'San Antonio', 'TX', 29.4241, -98.4936);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (8, 'San Diego', 'CA', 32.7157, -117.1611);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (9, 'Dallas', 'TX', 32.7767, -96.7970);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (10, 'San Jose', 'CA', 37.3382, -121.8863);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (11, 'Austin', 'TX', 30.2672, -97.7431);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (12, 'Jacksonville', 'FL', 30.3322, -81.6557);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (13, 'Fort Worth', 'TX', 32.7555, -97.3308);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (14, 'Columbus', 'OH', 39.9612, -82.9988);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (15, 'Indianapolis', 'IN', 39.7684, -86.1580);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (16, 'Charlotte', 'NC', 35.2271, -80.8431);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (17, 'Seattle', 'WA', 47.6062, -122.3321);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (18, 'Denver', 'CO', 39.7392, -104.9903);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (19, 'Washington', 'DC', 38.9072, -77.0369);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES (20, 'Boston', 'MA', 42.3601, -71.0589);

/* Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates. */
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1)NOT IN('A','I','O','E','U')OR RIGHT(CITY,1)NOT IN('A','I','O','E','U');

/* finds the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) 
that is less than 137.2345 in the STATION table. */
SELECT ROUND(LONG_W, 4)FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N ASC LIMIT 1;

/* find the smallest Northern Latitude (LAT_N) from the STATION table that is 
greater than 38.7780, you can use the following SQL query: */
SELECT ROUND(MIN(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7780;

/* This query retrieves the Western Longitude (LONG_W) for the smallest Northern Latitude
 (LAT_N) that is greater than 38.7780, rounding it to 4 decimal places. */
SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N ASC LIMIT 1;

/* Query the Manhattan Distance between points P1(A, B) and P2(C, D), where:
A = Minimum LAT_N
B = Minimum LONG_W
C = Maximum LAT_N
D = Maximum LONG_W
Round the result to 4 decimal places.*/ 
SELECT ROUND(MAX(LAT_N)- MIN(LAT_N)+MAX(LONG_W)-MIN(LONG_W),4) FROM STATION;


 
 
 
