--Question 20):  Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE NO ACTION and the ON UPDATE NO ACTION actions will reject the deletion and any updates.
Assume that the structure of two table jobs and InnoDB Engine have been used to create the table jobs.
CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;


+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |
| JOB_TITLE  | varchar(35)  | NO   |     |         |       |
| MIN_SALARY | decimal(6,0) | YES  |     | 8000    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+


CREATE DATABASE dbms_assignment;
USE DATABASE dbms_assignment;

CREATE TABLE jobs (
job_id int unique primary key,
job_title VARCHAR(35),
min_salery decimal(6,0),
max_salery decimal(6,0)
);


CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    job_id INT,
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
    REFERENCES jobs(JOB_ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;



