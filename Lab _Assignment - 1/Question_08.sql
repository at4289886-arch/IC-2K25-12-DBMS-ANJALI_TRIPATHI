--Question 8):Write a SQL statement to create a table named job_histry including columns employee_id, start_date, end_date, job_id and department_id and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'.


CREATE TABLE job_histry (
employee_id INT,
start_date DATE,
end_date DATE,
job_id INT,
department_id INT 
);
SELECT * FROM job_histry;
INSERT INTO job_histry(employee_id ,
start_date,
end_date,
job_id,
department_id
)
VALUES
(101, '2022-01-10', '2023-05-15', 1, 10),
(102, '2021-06-20', '2024-02-28', 2, 20),
(103, '2023-03-01', '2025-01-10', 3, 30),
(104, '2020-09-15', '2022-12-31', 4, 10),
(105, '2024-01-05', '2025-08-20', 5, 40);

SELECT * FROM job_histry;


