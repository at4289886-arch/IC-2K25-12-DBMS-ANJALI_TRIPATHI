 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > DROP TABLE IF EXISTS employees;
Query OK, 0 rows affected, 1 warning (0.0130 sec)
Note (code 1051): Unknown table 'dbms_assignment.employees'
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > CREATE TABLE employees (
                                                  ->     employee_id INT PRIMARY KEY,
                                                  ->     first_name VARCHAR(30),
                                                  ->     last_name VARCHAR(30),
                                                  ->     email VARCHAR(50),
                                                  ->     phone_number VARCHAR(15),
                                                  ->     hire_date DATE,
                                                  ->     job_id INT,
                                                  ->     salary DECIMAL(10,2),
                                                  ->     commission DECIMAL(10,2),
                                                  ->     manager_id INT,
                                                  ->     department_id INT
                                                  -> );
Query OK, 0 rows affected (0.0570 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > SELECT * FROM employees;
Empty set (0.0119 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > DESCRIBE employees;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| employee_id   | int           | NO   | PRI | NULL    |       |
| first_name    | varchar(30)   | YES  |     | NULL    |       |
| last_name     | varchar(30)   | YES  |     | NULL    |       |
| email         | varchar(50)   | YES  |     | NULL    |       |
| phone_number  | varchar(15)   | YES  |     | NULL    |       |
| hire_date     | date          | YES  |     | NULL    |       |
| job_id        | int           | YES  |     | NULL    |       |
| salary        | decimal(10,2) | YES  |     | NULL    |       |
| commission    | decimal(10,2) | YES  |     | NULL    |       |
| manager_id    | int           | YES  |     | NULL    |       |
| department_id | int           | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
11 rows in set (0.0061 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > INSERT INTO employees
                                                  -> (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission, manager_id, department_id)
                                                  -> VALUES
                                                  -> (1, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', '2023-01-10', 1, 30000, 2000, 101, 10),
                                                  -> (2, 'Priya', 'Verma', 'priya@gmail.com', '9876543211', '2023-02-15', 2, 35000, 2500, 102, 20),
                                                  -> (3, 'Aman', 'Patel', 'aman@gmail.com', '9876543212', '2023-03-20', 3, 28000, 1500, 101, 10),
                                                  -> (4, 'Neha', 'Singh', 'neha@gmail.com', '9876543213', '2023-04-05', 1, 40000, 3000, 103, 30),
                                                  -> (5, 'Riya', 'Gupta', 'riya@gmail.com', '9876543214', '2023-05-12', 2, 32000, 2200, 102, 20),
                                                  -> (6, 'Karan', 'Mehta', 'karan@gmail.com', '9876543215', '2023-06-18', 3, 45000, 3500, 103, 30),
                                                  -> (7, 'Ankit', 'Jain', 'ankit@gmail.com', '9876543216', '2023-07-22', 1, 25000, 1000, 101, 10),
                                                  -> (8, 'Pooja', 'Yadav', 'pooja@gmail.com', '9876543217', '2023-08-10', 2, 38000, 2800, 102, 20),
                                                  -> (9, 'Vikas', 'Shah', 'vikas@gmail.com', '9876543218', '2023-09-14', 3, 50000, 4000, 103, 30),
                                                  -> (10, 'Simran', 'Khan', 'simran@gmail.com', '9876543219', '2023-10-25', 1, 42000, 3200, 101, 10);
Query OK, 10 rows affected (0.0332 sec)

Records: 10  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > SELECT * FROM employees;
+-------------+------------+-----------+------------------+--------------+------------+--------+----------+------------+------------+---------------+
| employee_id | first_name | last_name | email            | phone_number | hire_date  | job_id | salary   | commission | manager_id | department_id |
+-------------+------------+-----------+------------------+--------------+------------+--------+----------+------------+------------+---------------+
|           1 | Rahul      | Sharma    | rahul@gmail.com  | 9876543210   | 2023-01-10 |      1 | 30000.00 |    2000.00 |        101 |            10 |
|           2 | Priya      | Verma     | priya@gmail.com  | 9876543211   | 2023-02-15 |      2 | 35000.00 |    2500.00 |        102 |            20 |
|           3 | Aman       | Patel     | aman@gmail.com   | 9876543212   | 2023-03-20 |      3 | 28000.00 |    1500.00 |        101 |            10 |
|           4 | Neha       | Singh     | neha@gmail.com   | 9876543213   | 2023-04-05 |      1 | 40000.00 |    3000.00 |        103 |            30 |
|           5 | Riya       | Gupta     | riya@gmail.com   | 9876543214   | 2023-05-12 |      2 | 32000.00 |    2200.00 |        102 |            20 |
|           6 | Karan      | Mehta     | karan@gmail.com  | 9876543215   | 2023-06-18 |      3 | 45000.00 |    3500.00 |        103 |            30 |
|           7 | Ankit      | Jain      | ankit@gmail.com  | 9876543216   | 2023-07-22 |      1 | 25000.00 |    1000.00 |        101 |            10 |
|           8 | Pooja      | Yadav     | pooja@gmail.com  | 9876543217   | 2023-08-10 |      2 | 38000.00 |    2800.00 |        102 |            20 |
|           9 | Vikas      | Shah      | vikas@gmail.com  | 9876543218   | 2023-09-14 |      3 | 50000.00 |    4000.00 |        103 |            30 |
|          10 | Simran     | Khan      | simran@gmail.com | 9876543219   | 2023-10-25 |      1 | 42000.00 |    3200.00 |        101 |            10 |
+-------------+------------+-----------+------------------+--------------+------------+--------+----------+------------+------------+---------------+
10 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > SELECT first_name AS "First Name",
                                                  ->        last_name AS "Last Name"
                                                  -> FROM employees;
+------------+-----------+
| First Name | Last Name |
+------------+-----------+
| Rahul      | Sharma    |
| Priya      | Verma     |
| Aman       | Patel     |
| Neha       | Singh     |
| Riya       | Gupta     |
| Karan      | Mehta     |
| Ankit      | Jain      |
| Pooja      | Yadav     |
| Vikas      | Shah      |
| Simran     | Khan      |
+------------+-----------+
10 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL >
