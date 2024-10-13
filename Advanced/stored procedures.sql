-- to create a stored procedure

-- simple query
select * from employee_salary 
where salary >=50000;

-- data into stored procedure

create procedure large_salary()
select * from employee_salary 
where salary >=50000;
-- it wont provide o/p because we didnt call them
call large_salary();

-- this wont work
create procedure large_salary1()
select * from employee_salary 
where salary >=50000;
select * from employee_salary 
where salary >=10000;



-- Best practice is to use a delimiter and a Begin and End to really control what's in the stored procedure
-- When we change this delimiter it now reads in everything as one whole unit or query instead of stopping
-- after the first semi colon

delimiter $$
create procedure large_salary2()
begin
	
	select * from employee_salary 
	where salary >=50000;
	select * from employee_salary 
	where salary >=10000;
end $$
-- now we change the delimiter back after we use it to make it default again
delimiter ;
-- it wont provide o/p because we didnt call them
call large_salary2();




-- we can also create a stored procedure by right clicking on Stored Procedures and creating one:
-- it's going to drop the procedure if it already exists.
-- we can also add parameters

USE `parks_and_recreation`;
DROP procedure IF EXISTS `large_salaries3`;
-- it automatically adds the dilimiter for us
DELIMITER $$
CREATE PROCEDURE large_salaries3(employee_id_param INT)
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 60000
    AND employee_id_param = employee_id;
END $$

DELIMITER ;
CALL large_salaries3(1);












































