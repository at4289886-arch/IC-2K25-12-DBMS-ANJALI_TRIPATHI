--➡️Question 7):Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except Italy, India and China will be entered in the table.

CREATE DATABASE dbms_assignment;
USE dbms_assignment;
CREATE TABLE countries(
country_id INT PRIMARY KEY,
country_name VARCHAR(30),
region_id VARCHAR(10),
CHECK(country_name!="italy" AND country_name!="INDIA" AND country_name!="CHINA")
);
