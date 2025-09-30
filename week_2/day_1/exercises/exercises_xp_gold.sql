-- Exercises xp gold

select first_name , last_name , birth_date from students order by last_name limit 4 ;
select first_name , last_name , birth_date from students order by birth_date DESC limit 1 ;
select first_name , last_name , birth_date from students order by id offset 2 limit 3 
