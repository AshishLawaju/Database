CREATE DATABASE college;

USE college;

CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR(50),
age INt NOT NULL
);


INSERT INTO student  VALUES (1,"AMAN",26);
INSERT INTO student  VALUES (2,"BMAN",26);

SELECT * from student;


show databases;
show tables;


DROP TABLE student;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);


SELECT * FROM student;

INSERT INTO student (rollno ,name) VALUES (101,"ASHISH") , (102,"BISISJS") ;












