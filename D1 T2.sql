USE REV

ALTER table students RENAME COLUMN s_name to first_name;

Alter table students ADD last_name varchar(50),
ADD email varchar(50);

TRUNCATE table students;

SELECT * FROM students;

Insert into students values(1,"Sahil",22,"patil","sahil@gmail.com");
Insert into students values(2,"maddy",22,"lonkar","maddy@gmail.com");
Insert into students values(3,"vijay",22,"garad","vijay@gmail.com");

SELECT first_name,last_name,email from students;

