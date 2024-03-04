create user 'newUser'@'localhost' identified by 'password';
show grants for 'newUser'@'localhost' ;
Grant select on college.* to 'newUser'@'localhost';
flush privileges;
show grants for 'newUser'@'localhost' ;


CREATE DATABASE IF NOT EXISTS user;
use user;
show tables;



CREATE TABLE city(
id INT PRIMARY KEY,
city_name VARCHAR(50)
);

INSERT INTO city(id,city_name) VALUES  
(1,"Kathmandu"),
(2,"bhaktapur"),
(3,"patan");

select * from city;


CREATE TABLE teacher(
id INT PRIMARY KEY,
teacher_name VARCHAR(50),
city_id INT,
FOREIGN KEY (city_id) REFERENCES city(id)

);

INSERT INTO teacher(id,teacher_name,city_id) VALUES 
(101,"teach1",2),
(102,"teach2",1),
(103,"teach3",3);

select * from teacher;



CREATE TABLE students(
id INT PRIMARY KEY,
student_name VARCHAR(50)
);

CREATE TABLE courses(
id INT PRIMARY KEY,
course_name VARCHAR(50)
);

CREATE TABLE student_course(
student_id INT,
course_id INT,
FOREIGN KEY (student_id) REFERENCES students(id),
FOREIGN KEY (course_id) REFERENCES courses(id)
);

show tables;


INSERT INTO students(id , student_name) VALUES
(1 ,"Student 1"),
(2, "Student 2");

select * from students;

INSERT INTO students(id , student_name) VALUES
(3 ,"Student 3"),
(4, "Student 4");


INSERT INTO courses(id,course_name) VALUES 
(101,"MY SQL"),
(102,"MERN"),
(103,"JAVA"),
(104,"Python"),
(105,"Flutter");

select * from courses;

INSERT INTO student_course(student_id,course_id) VALUES 
(1,101),
(1,103),
(3,105),
(4,104);

DELETE FROM student_course where student_id=4;

INSERT INTO student_course(student_id,course_id) VALUES 
(4,103);


select * from student_course;


SELECT * FROM students
JOIN 
	student_course ON student_course.student_id = students.id
JOIN 	
	courses ON student_course.course_id = courses.id;







