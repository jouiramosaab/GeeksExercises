--  EXERCICES


create database public ; 
create table items(
	id SERIAL PRIMARY KEY ,
	name VARCHAR(50) NOT NULL ,
	price int NOT NULL 
);

insert into items (name, price) values('Small Desk',100);
insert into items (name, price) values('Large Desk',300);
insert into items (name, price) values('Fan',80);

create table customers (
	id SERIAL PRIMARY KEY ,
	first_name VARCHAR(50) NOT NULL ,
	last_name VARCHAR(50) NOT NULL
);

insert into customers (first_name, last_name) values('Greg','Jones');
insert into customers (first_name, last_name) values('Sandra','Jones');
insert into customers (first_name, last_name) values('Scott','Scott');
insert into customers (first_name, last_name) values('Trevor','Green');
insert into customers (first_name, last_name) values('Melanie','Johnson');



select * from items ;
select * from items where price > 80 ;
select * from items where price <= 300 ;
select * from customers where last_name = 'Smith' ;
select * from customers where last_name = 'Jones' ;
select * from customers where first_name  != 'Scott' ;