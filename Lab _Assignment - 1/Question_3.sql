CREATE DATABASE dbms_assignment;
USE dbms_assignment;
CREATE TABLE countries(
country_id INT PRIMARY KEY,
country_name VARCHAR(30),
region_id VARCHAR(10)
);
INSERT INTO countries VALUES(1,"INDIA","ASIA");c
INSERT INTO countries VALUES(2,"PAKISTAN","ASIA");
INSERT INTO countries VALUES(3,"UNITED KINGDOM","EUROPE");
INSERT INTO countries VALUES(4,"BANGLADESH","ASIA");
INSERT INTO countries VALUES(5,"FRANCE","EUROPE");
INSERT INTO countries VALUES(6,"CHINA","NA");
INSERT INTO countries VALUES(7,"JAPAN","ASIA"); 
INSERT INTO countries VALUES(8,"CANADA","NA");

SELECT * FROM countries;


➡️Question 3):Create a table with dup_countries with the same structure as the existing table countries.

CREATE TABLE dup_countries LIKE countries;





