create database Lab;
use lab;

CREATE TABLE employee (
    emp_id INT,
    emp_name VARCHAR(50),
    job_name VARCHAR(50),
    manager_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2),
    commission DECIMAL(10, 2),
    dep_id INT
);

INSERT INTO employee VALUES
(68319, 'KAYLING', 'PRESIDENT', NULL, '1991-11-18', 6000.00, NULL, 1001),
(66928, 'BLAZE', 'MANAGER', 68319, '1991-05-01', 2750.00, NULL, 3001),
(67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 2550.00, NULL, 1001),
(65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 2957.00, NULL, 2001),
(67858, 'SCARLET', 'ANALYST', 65646, '1997-04-19', 3100.00, NULL, 2001),
(69062, 'FRANK', 'ANALYST', 65646, '1991-12-03', 3100.00, NULL, 2001),
(63679, 'SANDRINE', 'CLERK', 69062, '1990-12-18', 900.00, NULL, 2001),
(64989, 'ADELYN', 'SALESMAN', 66928, '1991-02-20', 1700.00, 400.00, 3001),
(65271, 'WADE', 'SALESMAN', 66928, '1991-02-22', 1350.00, 600.00, 3001),
(66564, 'MADDEN', 'SALESMAN', 66928, '1991-09-28', 1350.00, 1500.00, 3001),
(68454, 'TUCKER', 'SALESMAN', 66928, '1991-09-08', 1600.00, 0.00, 3001),
(68736, 'ADNRES', 'CLERK', 67858, '1997-05-23', 1200.00, NULL, 2001),
(69000, 'JULIUS', 'CLERK', 66928, '1991-12-03', 1050.00, NULL, 3001),
(69324, 'MARKER', 'CLERK', 67832, '1992-01-23', 1400.00, NULL, 1001);

select * from employee;

SELECT salary FROM employee;

SELECT DISTINCT job_name FROM employee;

SELECT emp_name, salary * 1.15 AS increased_salary FROM employee;

SELECT emp_name  &  job_name AS "Employee & Job" FROM employee;

SELECT 'Employee' FROM employee;

SELECT emp_id, emp_name, salary, TO_CHAR(hire_date, 'Month DD, YYYY') AS formatted_hire_date 
FROM employee;

SELECT LENGTH(REPLACE(emp_name, ' ', '')) AS name_length FROM employee;

SELECT emp_id, salary, commission FROM employee;

SELECT DISTINCT dep_id, job_name FROM employee;

SELECT * FROM employee WHERE dep_id != 2001;

SELECT * FROM employee WHERE hire_date < '1991-01-01';

SELECT AVG(salary) AS average_salary FROM employee WHERE job_name = 'ANALYST';

SELECT * FROM employee WHERE emp_name = 'BLAZE';

SELECT * FROM employee WHERE commission > salary;

SELECT * FROM employee WHERE salary * 1.25 > 3000;

SELECT emp_name FROM employee WHERE LENGTH(emp_name) = 6;

SELECT * FROM employee WHERE EXTRACT(MONTH FROM hire_date) = 1;

SELECT emp_name || ' works for ' || manager_id AS relationship FROM employee;

SELECT * FROM employee WHERE job_name = 'CLERK';

