CREATE DATABASE bank_db;

use bank_db;

show databases;
show tables;



CREATE TABLE employees(
emp_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
desig VARCHAR(50) DEFAULT 'Probation'
);

desc employees;


ALTER TABLE employees
ADD department VARCHAR(50);

INSERT INTO employees (name,desig,department)  VALUES
("Raju","manager","loan"),
("Sham","cashier","cash");


INSERT INTO employees (name,desig,department)  VALUES
("Baburao","Associate","Loan"),
("Paul","Accountant","Account"),
("Alex","Associate","Deposit");

SELECT * FROM employees;


----------------------------------- Exercise 3 

SELECT emp_id, CONCAT_WS(":",emp_id,name,desig,department) as Con FROM employees WHERE emp_id = 1 ;

SELECT CONCAT(emp_id,':',name,' ',desig,':',department) as con FROM employees;
SELECT CONCAT_WS(":" ,emp_id ,CONCAT(name," ",desig)) FROM employees;
SELECT  CONCAT_WS(":",emp_id,name,UPPER(desig),department) from employees;

SELECT CONCAT(CONCAT(SUBSTR(UPPER(department),1,1),emp_id)," ",name )FROM employees LIMIT 0, 2;

------------------------------------------------ Exercise 4

SELECT * FROM employees ;

UPDATE employees SET salary =30000  WHERE emp_id=5; 



ALTER TABLE employees 
ADD salary INT DEFAULT 25000;



SELECT DISTINCT department  FROM employees;

SELECT * FROM employees ORDER BY salary desc;
SELECT * FROM employees LIMIT 0,3;

SELECT * FROM employees WHERE name  LIKE  "a%";

SELECT * FROM employees WHERE char_length(name)=4;
SELECT * FROM employees WHERE name LIKE "____";

------------------------- Exercise 5
SELECT * FROM employees;

SELECT COUNT(name) FROM employees;

SELECT department ,COUNT(department)  from employees  GROUP BY department;

SELECT MIN(salary) FROM employees;

SELECT *  FROM employees WHERE salary=(SELECT MAX(salary) FROM employees) ;

SELECT SUM(salary) FROM employees WHERE department = 'loan'; 

SELECT department,AVG(salary) FROM employees GROUP BY department;



------------------------------ Exercise 6 date time datetime

SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();

SELECT dayname(CURDATE());

SELECT date_format(now(),'%d:%m:%Y');
SELECT date_format(now(),'%M %D at %T');


--------------------------------- Exercise 7 operator

SELECT * FROM employees;

SELECT * FROM employees WHERE salary BETWEEN 30000 AND 50000;

SELECT * FROM employees WHERE name LIKE "A%" OR name LIKE "S%" ;

SELECT * FROM employees WHERE salary= 25000 AND department="cash";

SELECT * FROM employees WHERE desig IN("ManaGer","aSsociate");

SELECT name, salary, CASE 
				WHEN salary!=0 THEN	salary/80 
                ELSE 'low salary'
                    END AS'sal in doller' FROM employees;


