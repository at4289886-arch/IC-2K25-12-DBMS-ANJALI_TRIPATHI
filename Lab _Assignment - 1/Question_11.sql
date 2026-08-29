--Question 11):write a sql statement to create a table name countries including column name country_id, country_name and  region_id and make sure that the country id column will be key field which will not contain any duplicate data at the time of incertion.
 
CREATE DATABASE dbms_assignment;
USE dbms_assignment;
CREATE TABLE countries(
country_id INT PRIMARY KEY,
country_name VARCHAR(30),
region_id VARCHAR(10)
);
INSERT INTO countries VALUES(1,"INDIA","ASIA");
INSERT INTO countries VALUES(2,"PAKISTAN","ASIA");
INSERT INTO countries VALUES(3,"UNITED KINGDOM","EUROPE");
INSERT INTO countries VALUES(4,"BANGLADESH","ASIA");
INSERT INTO countries VALUES(5,"FRANCE","EUROPE");
INSERT INTO countries VALUES(6,"CHINA","NA");
INSERT INTO countries VALUES(7,"JAPAN","ASIA");
INSERT INTO countries VALUES(8,"CANADA","NA");

SELECT * FROM countries;
