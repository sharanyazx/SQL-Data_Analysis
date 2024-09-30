-- Joins

select * 
from employee_demographics;

select * 
from employee_salary;

-- when we use join it take inner join  default
-- we can also specify INNER JOIN to easy understand


-- To merge employee_salary and employee_demographics table using employee id
select * 
from employee_demographics 
join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
    ;
    
    -- using aliasing  for easy typing 
    -- if we want we can use AS
select * 
from employee_demographics  as demo
join employee_salary as sal
on demo.employee_id = sal.employee_id
    ;

-- RIGHT JOIN  -- select everything from salary table

select * 
from employee_demographics  as demo
right join employee_salary as sal
on demo.employee_id = sal.employee_id
;

-- SELF JOIN
select * 
from employee_demographics  as emp1
right join employee_demographics as emp2
on emp1.employee_id = emp2.employee_id
;
    
select * 
from employee_demographics  as emp1
right join employee_demographics as emp2
on emp1.employee_id + 1 = emp2.employee_id
;





-- Joining multiple tables

-- now we have on other table we can join 
SELECT * 
FROM parks_and_recreation.parks_departments; 

SELECT * 
FROM parks_departments; 

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;

-- since it's an inner join it got rid of andy because he wasn't a part of any department
-- if we do a left join we would still include him because we are taking everything from the left table which is the salary table in this instance

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments dept
	ON dept.department_id = sal.dept_id
   ;  

