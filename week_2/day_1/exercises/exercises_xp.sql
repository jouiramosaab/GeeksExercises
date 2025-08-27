-- EXERCICE XP+ :
create database bootcamp 
create table students(
	id SERIAL PRIMARY KEY ,
	last_name VARCHAR(50) ,
	first_name VARCHAR(50) ,
	birth_date DATE
);



insert into students (first_name, last_name , birth_date) values ('Maroc','Benichou','1998-11-02');
insert into students (first_name, last_name , birth_date) values ('Yoan','Cohen','2010-12-03');
insert into students (first_name, last_name , birth_date) values ('Lea','Benichou','1987-07-27');
insert into students (first_name, last_name , birth_date) values ('Amelia','Dux','1996-04-07');
insert into students (first_name, last_name , birth_date) values ('David','Grez','2003-06-14');
insert into students (first_name, last_name , birth_date) values ('Omer','Simpson','1980-10-03');


select * from students 
select first_name,last_name from students ;
select first_name,last_name from students where id = 2;
select first_name,last_name from students where last_name = 'Benichou' and first_name = 'Maroc';
select first_name,last_name from students where last_name = 'Benichou' or first_name = 'Maroc';
select first_name,last_name from students where first_name like '%a%';
select first_name,last_name from students where first_name like 'a%';
select first_name,last_name from students where first_name like '%a';
select first_name,last_name from students where first_name like '%a_';
select first_name,last_name from students where id in(1,3);
select * from students where birth_date >= '2000-01-01';