
SHOW DATABASES;
USE  college;
DROP TABLE student ;

CREATE TABLE student(       
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
grade VARCHAR(50),
city VARCHAR(50));

INSERT  INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"RAM",78,"C","PUNE"),
(102,"SHAM",93,"A","MUMBAI"),
(103,"GITA",85,"B","PUNE"),
(104,"SITA",96,"A","DELHI"),
(105,"RAMESH",12,"F","DELHI"),
(106,"RIYA",82,"B","PUNE");

SELECT * FROM STUDENT;
TRUNCATE TABLE student;

select rollno,city FROM student;
SELECT marks FROM student;

SELECT name FROM student
WHERE marks>80;
SELECT name,marks FROM student
WHERE grade="A";

SELECT * FROM student WHERE city="MUMBAI" OR marks>80;
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN("pune","delhi");
SELECT * FROM student WHERE city NOT in("delhi","mumbai"); 

SELECT * FROM student
 WHERE marks>75
 LIMIT 3;

SELECT * FROM student 
ORDER BY city ASC;
SELECT * FROM student
ORDER BY name DESC;

SELECT DISTINCT city FROM student;

SELECT MAX(marks)FROM student;
SELECT MIN(marks)FROM student;
SELECT AVG(marks) from student;
SELECT COUNT(name)FROM student;
SELECT SUM(marks)FROM student;

SELECT city,COUNT(name)
FROM student
GROUP BY city;

SELECT name,avg(marks)
FROM student
GROUP BY name;

select city, avg(marks)
FROM student
GROUP BY city;

SELECT COUNT(name),city
FROM student
GROUP BY city
HAVING MAX(marks)>90;

SET SQL_SAFE_UPDATES=0;
UPDATE student
SET grade="O"
where grade="A";

UPDATE student
SET name="RINU"
WHERE name="RAM";

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50));

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) references dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);
ALTER TABLE student
add column age INT NOT NULL DEFAULT 19;

SELECT * FROM student;

ALTER TABLE student
modify age varchar(20);

ALTER TABLE student
CHANGE age stu_age INT;
ALTER TABLE student
DROP COLUMN stu_age;
ALTER TABLE student
RENAME TO stu;
ALTER TABLE stu
rename to student;
ALTER TABLE student
CHANGE name full_name varchar(20);

SELECT * from student;
DELETE FROM student
WHERE marks<80;
ALTER TABLE student
DROP COLUMN grade;
 















 

