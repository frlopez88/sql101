drop table students;

create table students (
  id serial primary key,
  first_name varchar(20),
  last_name varchar(20),
  birth_date date,
  grade numeric,
  created_at timestamp default current_timestamp 
);

-- Single Insert
insert into students
(first_name, last_name,  birth_date, grade)
values 
('Hanna', 'Bryant', '31-jan-1994', 99);

--- Bulk insert
insert into students
( first_name, last_name,  birth_date, grade)
values 
('Johnny', 'Davis', '31-jan-1999', 95), 
('Kiundra', 'Harville', '31-jan-2000', 97), 
('Maddie', 'Padilla', '31-jan-2001', 100); 


--- select all 

select * from students
order by birth_date desc
limit 1;

--- who is the youngest student 
select * from students
order by birth_date desc
limit 1;

-- who is the oldest student of the table 
select first_name || ' ' ||last_name full_name from students
order by birth_date asc
limit 1;


-- how many student do we have in the table 
-- count
select count(*) from students;

-- who is the student with the highest grade

select first_name, grade from students
order by grade desc
limit 1;

-- what is the average grade of your students

select avg(grade) from students;