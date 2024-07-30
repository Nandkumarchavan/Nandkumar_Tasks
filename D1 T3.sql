CREATE DATABASE school_management;

use school_management;

CREATE TABLE student(
s_id INT PRIMARY KEY,
s_name VARCHAR(50),
s_age INT);


SELECT * FROM student;

INSERT INTO student VALUES (1,"pratik",22);
INSERT INTO student VALUES (2,"rahul",33);


DROP table student;

DROP DATABASE school_management