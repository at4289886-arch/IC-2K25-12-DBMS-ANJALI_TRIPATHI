-- Question 10): Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.

CREATE TABLE jobs (
job_id INT,
job_title VARCHAR(20) DEFAULT 'BLANK',
min_salery INT DEFAULT 8000,
max_salery INT DEFAULT NULL
);

SELECT * FROM jobs;
INSERT INTO jobs (job_id, job_title, min_salery,max_salery)
VALUES
(1, 'Software Developer', 8000, 25000),
(2, 'Data Analyst', 10000, 30000),
(3, 'Web Designer', 9000, 20000);
SELECT * FROM jobs;
INSERT INTO jobs (job_id)
VALUES (4);
SELECT * FROM jobs;
