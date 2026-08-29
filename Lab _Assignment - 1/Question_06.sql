--➡️Question 6):write a sql statement to create table name jobs including columns job_id, job_titlee,min_salery,max_salry and check whether the max_salery  amount acceding upper limit 25000.

CREATE DATABASE dbms_assignment;
USE dbms_assignment;
CREATE TABLE jobs (
job_id INT, 
job_title VARCHAR(10), 
min_salery INT,
max_salery INT
CHECK(max_salery<=25000)
);

SELECT * FROM jobs;
