-- Question16):  Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column department_id, reference by the column department_id of departments table, can contain only those values which are exists in the departments table and another foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables.
"A foreign key constraint is not required merely to join two tables. For storage engines other than InnoDB, it is possible when defining a column to use a REFERENCES tbl_name(col_name) clause, which has no actual effect, and serves only as a memo or comment to you that the column which you are currently defining is intended to refer to a column in another table." - Reference dev.mysql.com
Assume that the structure of two tables departments and jobs.
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  |     | NULL    |       |

| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+


+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+





CREATE DATABASE dbms_assignment;
USE dbms_assignment;


CREATE TABLE jobs (
job_id VARCHAR(10),
job_title VARCHAR(35),
min_salery decimal(6,0) NULL,
max_salery decimal(6,0) NULL
);



CREATE TABLE department(
DEPARTMENT_ID DECIMAL(4,0) DEFAULT(0),
DEPARTMENT_NAME VARCHAR(30),
MANAGER_ID DECIMAL(6,0) DEFAULT(0),
LOCATION_ID DECIMAL(4,0)NULL,
PRIMARY KEY(DEPARTMENT_ID,MANAGER_ID)
);
INSERT INTO department
(DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
VALUES
(10, 'IT', 1001, 101),
(20, 'HR', 1002, 102),
(30, 'Finance', 1003, 103);
 SELECT * FROM department;



CREATE TABLE department(
DEPARTMENT_ID DECIMAL(4,0) DEFAULT(0),
DEPARTMENT_NAME VARCHAR(30),
MANAGER_ID DECIMAL(6,0) DEFAULT(0),
LOCATION_ID DECIMAL(4,0)NULL,
PRIMARY KEY(DEPARTMENT_ID,MANAGER_ID)
);
INSERT INTO department
(DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
VALUES
(10, 'IT', 1001, 101),
(20, 'HR', 1002, 102),
(30, 'Finance', 1003, 103);
 SELECT * FROM department;
