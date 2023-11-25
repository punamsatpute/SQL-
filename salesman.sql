create database lab2;
use lab2;
CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(4, 2)
);

INSERT INTO salesman VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

SELECT salesman_id, name, city, commsission
FROM salesman
WHERE city IN ('Paris', 'Rome');

SELECT salesman_id, name, city, commission
FROM salesman
WHERE city = 'Paris' OR city = 'Rome';

SELECT salesman_id, name, city, commission
FROM salesman
WHERE city NOT IN ('Paris', 'Rome');
SELECT  name, city,  salesman_id
FROM salesman
WHERE salesman_id IN (3007, 3008, 3009);
SELECT salesman_id, name, city, commission
FROM salesman
WHERE commission BETWEEN 0.12 AND 0.14;
SELECT salesman_id, name, city, commission
FROM salesman
WHERE UPPER(SUBSTRING(name FROM 1 FOR 1)) BETWEEN 'A' AND 'K';



