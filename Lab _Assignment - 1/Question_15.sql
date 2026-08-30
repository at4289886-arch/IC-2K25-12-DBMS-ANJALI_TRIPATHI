--Question 15):Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.
Assume the structure of departments table below.
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | NO   | PRI | 0       |       |
| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+

CREATE DATABASE dbms_assignment;
USE dbms_assignment;


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


CREATE TABLE employee (
employee_id INT UNIQUE,
first_name VARCHAR(20),
last_name VARCHAR(20),
email VARCHAR(20),
phone_number VARCHAR(10),
hire_date DATE,
job_ID VARCHAR(10),
salery DECIMAL(8,2),
commision DECIMAL(8,2),
DEPARTMENT_ID DECIMAL(4,0) DEFAULT(0),
MANAGER_ID DECIMAL(6,0) DEFAULT(0),
FOREIGN KEY (DEPARTMENT_ID,MANAGER_ID)
REFERENCES department
(DEPARTMENT_ID,MANAGER_ID)
);
INSERT INTO employee
(employee_id, first_name, last_name, email, phone_number, hire_date,
job_id, salery,commision,MANAGER_ID,DEPARTMENT_ID)
VALUES
(1, 'Amit', 'Sharma', 'amit@gmail.com', '9876543210', '2025-01-10',
'IT01', 30000, 1000, 1001, 10),

(2, 'Neha', 'Verma', 'neha@gmail.com', '9876543211', '2025-02-15',
'HR01', 35000, 1500, 1002, 20),

(3, 'Ravi', 'Patel', 'ravi@gmail.com', '9876543212', '2025-03-20',
'FN01', 40000, 2000, 1003, 30);

SELECT *FROM employee;

