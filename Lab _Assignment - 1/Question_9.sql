--Question 9) :Write a SQL statement to create a table named countries including columns country_id,country_name and region_id and make sure that no duplicate data against column country_id will be allowed at the time of insertion.

CREATE DATABASE dbms_assignment;
USE dbms_assignment;
CREATE TABLE countries(
country_id INT PRIMARY KEY,
country_name VARCHAR(30),
region_id VARCHAR(10)
);
