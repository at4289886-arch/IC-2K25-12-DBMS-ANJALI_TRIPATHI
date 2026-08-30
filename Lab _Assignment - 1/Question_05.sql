--➡️Question 5):write a sql statement to create table countries a constraint NULL.


CREATE TABLE countries_null (
country_id INT NULL,
country_name VARCHAR(30) NULL,
region_id VARCHAR(10) NULL
);
INSERT INTO countries_null VALUES(NULL,"INDIA",NULL);
INSERT INTO countries_null VALUES(NULL,"PAKISTAN",NULL);
INSERT INTO countries_null VALUES(NULL,"EUROPE",NULL);  
INSERT INTO countries_null VALUES(NULL,"BANGLADESH",NULL);
INSERT INTO countries_null VALUES(NULL,"FRANCE",NULL);
INSERT INTO countries_null VALUES(NULL,"CHINA",NULL);
INSERT INTO countries_null VALUES(NULL,"JAPAN",NULL);
INSERT INTO countries_null VALUES(NULL,"CANADA",NULL);

SELECT * FROM countries_null;




