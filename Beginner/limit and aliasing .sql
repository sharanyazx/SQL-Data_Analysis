-- Limit and aliasing

select * from employee_demographics
order by age desc 
Limit 3			-- to retrieve 1st 3 rows
;

select * from employee_demographics
order by age desc 
Limit 2,1				
;
-- to retrieve 3rd row limit 2,1 
-- 2 indicates 2nd row 
-- 1 Indicates next 1 row 
-- 3rd row is retrieved 



-- Aliasing
select gender,avg(age) as avg_age  -- as is aliasinging renaming the column name 
from employee_demographics
group by gender
having avg_age > 40      -- using renamed column 
;
