--➡️ Question 2):write a SQL statement to create a simple table countries including column country_id,country_name,region_id which is already exists.

CREATE TABLE IF NOT EXISTS countries(
country_id INT,
country_name VARCHAR(50),
region_id VARCHAR(100)
);

 
