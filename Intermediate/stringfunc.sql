-- STRING FUNCTION
-- string length 

select length("sharanya") 


select  first_name , length(first_name) as length
from employee_demographics
order by first_name ;


--  uppercase to lower case 

select upper('sharanya');
select lower('SHARANYA');

select  first_name ,upper(first_name) as caps 
from employee_demographics ;

-- TRIM to remove space

 select trim("		sharanya 	");


-- without using trim

select ("		sharanya	  ");

select  Ltrim("		sharanya 	");
select Rtrim("		sharanya 	");

-- Substring
-- eg sharanya --> sharan 
-- using right and left

select  first_name , left(first_name,4)
from employee_demographics ;

select  last_name , right(last_name,3)
from employee_demographics ;

select  first_name , left(first_name,4),
last_name , right(last_name,3),
substring(first_name, 2,3),
birth_date , substring(birth_date,6,2)
from employee_demographics ;

-- Replace
select replace ("sharanya",'a','x');

select first_name , replace(first_name,'a','x') 
from employee_demographics;

-- locate

select Locate('a',"sharanya");

select first_name , locate("An",first_name) 
from employee_demographics;

-- CONCATENATE

select first_name , last_name,concat(first_name , last_name) as Name
from employee_demographics
order by  Name;
