# Task 2
CREATE DATABASE TASKS_DAY2

use TASKS_DAY2


CREATE TABLE Employees(
EmployeeId INT Primary Key,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Email VARCHAR(100) NOT NULL UNIQUE,
Salary INT NOT NULL,
DepartmentID INT);

SELECT * FROM Employees

CREATE TABLE Departments(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Projects(
ProjectId INT,
ProjectName VARCHAR(50) NOT NULL,
DepartmentID INT,
primary key(ProjectId),
foreign key(DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees (EmployeeId, FirstName, LastName, Email, Salary, DepartmentId) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');


INSERT INTO projects (ProjectId,ProjectName ,DepartmentID )value
(1,'Project A', 1),
(2,'Project B', 2),
( 3,'Project C', 3),
(4, 'Project D', 4),
( 5, 'Project E', 5)

ALTER TABLE Employees
ADD constraint check(Salary > 0);

ALTER TABLE employees
ADD CONSTRAINT uq_employees_email1 UNIQUE (email);

ALTER TABLE Employees
ADD FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

INSERT INTO Employees (EmployeeId, FirstName, LastName, Email, Salary, DepartmentId) VALUES
(7, 'sahil', 'patil', 'sahil.patil@company.com', 60000, 6);

-- 6. it gives error foreign key contstraint dails

INSERT INTO Employees (EmployeeId, FirstName, LastName, Email, Salary, DepartmentId) VALUES
(7, 'sahil', 'patil', 'sarah.davis@company.com', 60000, 6);

-- 7. it gives error for duplicate entry

ALTER table Departments DROP COLUMN DepartmentId;

-- 8. gives error tells departmentId is needed for foreign key constraint 

-- Practice Questions - 

INSERT INTO employees (employeeid, firstname, lastname, email, salary, departmentid)
VALUES (13, 'Ankit', 'Naharia', 'ankitnaharia.te20@bmsce.ac.in',50000,13);

INSERT INTO employees (employeeid, firstname, lastname, email, salary, departmentid)
VALUES (14, 'Duplicate', 'Email', 'john.doe@company.com', 60000, 1);

UPDATE employees SET departmentid = 13 WHERE employeeid = 1;


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary DESC
LIMIT 3;
-- Top 3 employees with the lowest salaries:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary ASC
LIMIT 3;
-- Employee with the 2nd highest salary:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- Employee with the 2nd lowest salary:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary ASC
LIMIT 1 OFFSET 1;

-- Employee with the 3rd highest salary:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- Employee with the 3rd lowest salary:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary ASC
LIMIT 1 OFFSET 2;

-- Employees with salary between 65000 and 80000, ordered by first name in descending order, limited to 3 rows:

SELECT first_name, last_name, email, salary
FROM your_table
WHERE salary BETWEEN 65000 AND 80000
ORDER BY first_name DESC
LIMIT 3;






