CREATE DATABASE IF NOT EXISTS set_operators;
USE set_operators;


CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    city VARCHAR(50)
);


INSERT INTO students (id, name, age, city) VALUES
(1, 'Alice', 20, 'New York'),
(2, 'Bob', 22, 'Los Angeles'),
(3, 'Charlie', 21, 'Chicago'),
(4, 'David', 23, 'Houston'),
(5, 'Emma', 20, 'New York'),
(6, 'Frank', 24, 'San Francisco'),
(7, 'Grace', 22, 'Boston'),
(8, 'Henry', 25, 'Seattle'),
(9, 'Ivy', 21, 'Denver'),
(10, 'Jack', 23, 'Austin'),
(11, 'Kate', 22, 'Miami'),
(12, 'Leo', 24, 'Atlanta'),
(13, 'Mia', 20, 'Dallas'),
(14, 'Nathan', 26, 'Phoenix'),
(15, 'Olivia', 21, 'San Diego'),
(16, 'Paul', 23, 'Portland'),
(17, 'Quinn', 22, 'Las Vegas'),
(18, 'Ryan', 25, 'San Jose'),
(19, 'Sophia', 24, 'Philadelphia'),
(20, 'Thomas', 26, 'Charlotte');

INSERT INTO teachers (id, name, subject, city) VALUES
(1, 'Alice', 'Math', 'New York'),
(2, 'Charlie', 'Physics', 'Chicago'),
(3, 'Emma', 'English', 'New York'),
(4, 'Frank', 'History', 'Los Angeles'),
(5, 'Grace', 'Chemistry', 'Boston'),
(6, 'Henry', 'Biology', 'Seattle'),
(7, 'Jack', 'Computer Science', 'Austin'),
(8, 'Leo', 'Geography', 'Atlanta'),
(9, 'Mia', 'Economics', 'Dallas'),
(10, 'Nathan', 'Political Science', 'Phoenix'),
(11, 'Olivia', 'Literature', 'San Diego'),
(12, 'Paul', 'Art', 'Portland'),
(13, 'Quinn', 'Music', 'Las Vegas'),
(14, 'Ryan', 'Psychology', 'San Jose'),
(15, 'Sophia', 'Law', 'Philadelphia'),
(16, 'Thomas', 'Physics', 'Charlotte'),
(17, 'Uma', 'Statistics', 'New Orleans'),
(18, 'Victor', 'Marketing', 'Nashville'),
(19, 'William', 'Finance', 'Detroit'),
(20, 'Xavier', 'Engineering', 'Minneapolis');


SELECT * FROM students;
SELECT * FROM teachers;

(SELECT 
	name,
    city
FROM students)
UNION
(SELECT
	name,
    city
FROM teachers);



(SELECT 
  id AS ID,
  name AS First_name
FROM students)
UNION ALL
(SELECT 
  id,
  name
FROM teachers);



--  add comments how except ->replacement in mysql
SELECT column_name FROM table1 
WHERE column_name NOT IN (SELECT column_name FROM table2);



-- combine two table students and teachers
SELECT 
'student' AS sourceTable,
id,
name,
city
FROM students
UNION
SELECT 
'teachers' AS sourceTable,
id,
name,
city
FROM teachers
ORDER BY id;
