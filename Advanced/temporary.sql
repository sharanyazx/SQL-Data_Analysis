-- Using Temporary Tables
-- Temporary tables are tables that are only visible to the session that created them. 
-- They can be used to store intermediate results for complex queries or to manipulate data before inserting it into a permanent table.

-- There's 2 ways to create temp tables:
-- 1. This is the less commonly used way - which is to build it exactly like a real table and insert data into it
create temporary table  sharanya
(
name varchar(100),
year varchar(100),
department varchar(100)
);

select * from sharanya;
-- notice that if we refresh out tables it isn't there. It isn't an actual table. It's just a table in memory.

insert into sharanya values('sharanya','third year','Artificial Intelligence and data science');
select * from sharanya;

-- the second way is much faster and my preferred method
-- 2. Build it by inserting data into it - easier and faster


create temporary table Temp
select *  from employee_salary
where dept_id=1;
select * from temp;