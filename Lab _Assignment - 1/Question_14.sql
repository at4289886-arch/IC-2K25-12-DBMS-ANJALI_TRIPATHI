--Question 14): Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.
Here is the structure of the table jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+



CREATE TABLE jobs (
job_id VARCHAR(20) primary key,
job_title VARCHAR(35),
min_salery decimal(6,0) NULL,
max_salery decimal(6,0) NULL
);

SELECT * FROM jobs;
INSERT INTO jobs (job_id, job_title, min_salery,max_salery)
VALUES
(1, 'Software Developer', 8000, 25000),
(2, 'Data Analyst', 10000, 30000),
(3, 'Web Designer', 9000, 20000);
SELECT * FROM jobs;

CREATE TABLE job_histry (
employee_id INT,
start_date DATE,
end_date DATE,
job_id VARCHAR(20),
department_id INT,
FOREIGN KEY (job_id) references jobs(job_id)
);
SELECT * FROM job_histry;

