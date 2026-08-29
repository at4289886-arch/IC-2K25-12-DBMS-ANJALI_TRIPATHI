--Question 13):Write a SQL statement to create a table countries including columns country_id, country_name and region_id and make sure that the combination of columns country_id and region_id will be unique.

USE dbms_assignment;
CREATE TABLE countries(
country_id INT ,
country_name VARCHAR(30),
region_id INT,
UNIQUE (country_id,region_id)
);
INSERT INTO countries VALUES(1,"INDIA",9);
INSERT INTO countries VALUES(2,"PAKISTAN",10);
INSERT INTO countries VALUES(3,"UNITED KINGDOM",11);
INSERT INTO countries VALUES(4,"BANGLADESH",12);
INSERT INTO countries VALUES(5,"FRANCE",13);
INSERT INTO countries VALUES(6,"CHINA",12);
INSERT INTO countries VALUES(7,"JAPAN",11);
INSERT INTO countries VALUES(8,"CANADA",9);

SELECT * FROM countries;
