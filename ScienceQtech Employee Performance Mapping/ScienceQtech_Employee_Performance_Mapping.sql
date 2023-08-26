/*pre requisite */ 
show databases;
/* 1. Create a database named employee, then import data_science_team.csv proj_table.csv and emp_record_table.csv into 
the employee database from the given resources. */
CREATE DATABASE IF NOT EXISTS employee;
USE employee;

CREATE TABLE IF NOT EXISTS emp_record ( 
emp_id VARCHAR(6) not null PRIMARY KEY, 
f_name VARCHAR(10) not null, 
l_name VARCHAR(10) not null, 
gender VARCHAR(10) not null, 
role VARCHAR(30) not null, 
dept VARCHAR(15) not null, 
exp INT not null, 
country VARCHAR(15) not null, 
continent VARCHAR(15) not null, 
salary INT not null, 
emp_rating INT not null, 
manager_id VARCHAR(5), 
proj_id varchar(5));

/* check that table exists or not */
SELECT * FROM emp_record;

/*Describe its schema */
DESCRIBE emp_record;

/* Create proj_table */
CREATE TABLE IF NOT EXISTS proj_table ( 
proj_id VARCHAR(5) not null PRIMARY KEY, 
proj_name VARCHAR(30) not null, 
domain VARCHAR(15) not null, 
start_date DATE not null, 
closure_date DATE not null, 
dev_qtr VARCHAR(4) not null, 
status VARCHAR(10) not null
);

/* check that table exists or not */
SELECT * FROM proj_table;
/*Describe its schema */
DESCRIBE proj_table;

/* Create data_sci_team */
CREATE TABLE IF NOT EXISTS data_sci_team ( 
emp_id VARCHAR(6) not null PRIMARY KEY, 
f_name VARCHAR(10) not null, 
l_name VARCHAR(10) not null, 
gender VARCHAR(10) not null, 
role VARCHAR(30) not null, 
dept VARCHAR(15) not null, 
exp INT not null, 
country VARCHAR(15) not null, 
continent VARCHAR(15) not null
);

/* check that table exists or not */
SELECT * FROM data_sci_team;
/*Describe its schema */
DESCRIBE data_sci_team;
/* to see the employee records data */
select * from emp_record;

describe employee.proj_table;

SHOW GLOBAL VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'F:\cli\Data_science_portfolios\My_SQL_data_analysis_report\ScienceQtech Employee Performance Mapping\1643891559_performance_mapping_datasets\proj_table.csv' 
INTO TABLE employee.proj_table 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES 
TERMINATED BY '\n' IGNORE 1 ROWS 
(`proj_id`,`proj_name`,`domain`,`start_date`,`closure_date`,`dev_qtr`,`status`);

/* Check that data in being inserted or not in proj_table */
select * from employee.proj_table;
/* Check that data in being inserted or not in data_sci_team */
select * from employee.data_sci_team;

/*3.Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee
record table, and make a list of employees and details of their department.*/
select emp_id, f_name, l_name, gender, dept from employee.emp_record;
/*4. Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if
the EMP_RATING is:
● less than two
● greater than four
● between two and four*/
/* Query for less than two */
select emp_id, f_name, l_name, gender, dept, emp_rating
from employee.emp_record
where emp_rating < 2;

/* Greater than four */
SELECT emp_id, f_name, l_name, gender, dept, emp_rating
FROM employee.emp_record
WHERE emp_rating > 4;
/*Between two and four:*/
SELECT emp_id, f_name, l_name, gender, dept, emp_rating
FROM employee.emp_record
WHERE emp_rating between 2 and 4;

/* 5. Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and 
then give the resultant column alias as NAME. */

select CONCAT(f_name,' ',l_name) name
from employee.emp_record
where dept = 'FINANCE';

/* 6. Write a query to list only those employees who have someone reporting to them. 
Also, show the number of reporters (including the President). */

select role, manager_id, count(*)
from employee.emp_record
group by manager_id
order by manager_id;

/*7.Write a query to list down all the employees from the healthcare and finance departments using union. Take
data from the employee record table. */
SELECT f_name, l_name, dept
FROM employee.emp_record
WHERE dept = 'HEALTHCARE'
UNION
SELECT f_name, l_name, dept
FROM emp_record
WHERE dept = 'FINANCE';

/* 8.Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE,
DEPARTMENT, and EMP_RATING grouped by dept. Also include the respective employee rating along with the
max emp rating for the department. */

SELECT emp_id, f_name, l_name, role, dept, emp_rating, emp_rating AS max_rating
FROM emp_record
WHERE (dept, emp_rating)
IN (SELECT dept, MAX(emp_rating) FROM emp_record GROUP By dept)
ORDER BY dept ASC;

/* 9.Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from
the employee record table. */

SELECT role, MIN(salary) AS minSalary, MAX(salary) AS maxSalary
FROM employee.emp_record
GROUP BY role;

/* 10.Write a query to assign ranks to each employee based on their experience. Take data from the employee record
table. */

SELECT f_name, l_name, exp as experience,
DENSE_RANK() OVER (ORDER BY exp DESC) exp_rank
FROM employee.emp_record;

/* 11.Write a query to create a view that displays employees in various countries whose salary is more than six
thousand. Take data from the employee record table. */

CREATE VIEW 6K_salary_max AS
SELECT emp_id, f_name, l_name, country, salary
FROM employee.emp_record
WHERE salary > 6000;

SELECT * FROM 6K_salary_max;

/*12.Write a nested query to find employees with experience of more than ten years. Take data from the employee
record table. */
SELECT emp_id, f_name, l_name, exp
FROM employee.emp_record
WHERE exp IN (
SELECT exp
FROM emp_record
WHERE exp > 10
);

/* 13.Write a query to create a stored procedure to retrieve the details of the employees whose experience is more
than three years. Take data from the employee record table. */

DELIMITER //
CREATE PROCEDURE Employee3()
BEGIN
SELECT * FROM employee.emp_record
WHERE exp > 3;
END //
DELIMITER ;
call Employee3();

/* 14. Write a query using stored functions in the project table to check whether the job profile assigned to each
employee in the data science team matches the organization’s set standard. */
/*The standard being:
For an employee with experience less than or equal to 2 years assign 'JUNIOR DATA SCIENTIST',
For an employee with the experience of 2 to 5 years assign 'ASSOCIATE DATA SCIENTIST',
For an employee with the experience of 5 to 10 years assign 'SENIOR DATA SCIENTIST',
For an employee with the experience of 10 to 12 years assign 'LEAD DATA SCIENTIST',
For an employee with the experience of 12 to 16 years assign 'MANAGER'.*/

call check_role();

/* 15. Create an index to improve the cost and performance of the query to find the employee whose FIRST_NAME is
‘Eric’ in the employee table after checking the execution plan. */
ALTER TABLE employee.emp_record ADD INDEX fname_index (f_name);
SELECT * FROM employee.emp_record WHERE f_name = 'Eric';

/* 16. Write a query to calculate the bonus for all the employees, based on their ratings and 
salaries (Use the formula: 5% of salary * employee rating). */
SELECT f_name, l_name, salary, ((salary * .05)*emp_rating) AS bonus
FROM employee.emp_record;

/* 17. Write a query to calculate the average salary distribution based on the continent and country. Take data from the
employee record table. */
SELECT continent, AVG(salary)
FROM employee.emp_record
GROUP BY continent
ORDER BY continent ASC;

SELECT country, AVG(salary)
FROM employee.emp_record
GROUP BY country
ORDER BY country ASC;