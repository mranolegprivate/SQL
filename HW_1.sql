SQL_DDL
Первая часть.

Таблица employees
1) Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

Ответ:
  create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);

2)Наполнить таблицу employee 70 строками.
INSERT INTO employees (name)
VALUES ('Reggie Batey'), 
('Clara Poore'), 
('Tammy Galindo'), 
('Rickey Jones'), 
('Jill Anspach'), 
('Lacy Racicot'), 
('David Macias'), 
('Jessica Manns'), 
('Amber Holcomb'), 
('Betty Wells'), 
('Miguel Fletcher'), 
('Joseph Hodges'), 
('Ida Bohannon'), 
('Cindy Merrifield'), 
('Mary Dowell'), 
('Marie Thomas'), 
('Donald Fierro'), 
('Anna Wick'), 
('Robert Harian'), 
('Michael Mark'), 
('Lucius Patterson'), 
('Lorna Rose'), 
('Karen Santiago'), 
('Peggy Beachler'), 
('Chester Baird'), 
('Ronda Colley'), 
('Robert Chapman'), 
('Sandra Hibbard'), 
('Steven Pagano'), 
('Ramona Russell'), 
('Ryan Morgan'), 
('Shannon Daugherty'), 
('Charlene Little'), 
('Steve Lewandowski'), 
('Donnie Shoemaker'), 
('Veronica Treto'), 
('Jonathon Belanger'), 
('William Hughes'), 
('Courtney Alston'), 
('Isaac Walters'), 
('Leon Ashcraft'), 
('Daniel Patterson'), 
('Randall Phillips'), 
('James Williams'), 
('Nancy Searles'), 
('Edward Hilliard'), 
('Joel Vandevelde'), 
('Nancy Bravo'), 
('Jesse Clark'), 
('Gregory Magelssen'), 
('Ella Cortez'), 
('Michael Diaz'), 
('Robert Walsh'), 
('Valorie Seibert'), 
('Yoshiko Miller'), 
('Timothy Johnson'), 
('Lita Webb'), 
('Lindsay Barrera'), 
('Jacqulyn Matthews'), 
('Lee Rehart'), 
('Fred Spencer'), 
('Melinda Webster'), 
('Shawn Pretti'), 
('Betty Schaefer'), 
('Barbara Teets'), 
('Patricia Tomas'), 
('Mattie Kelley'), 
('Mary Yates'), 
('Andrea Croes'), 
('Amanda Riley');


# Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null

Ответ:
create table salary(
	id serial primary key,
	monthly_salary Int not null
);
3)
insert into salary (monthly_salary)
values (1000),
		(2000),
		 (3000),
		 (4000),
		 (5000),
		 (6000),
		 (7000),
		 (8000),
		 (9000),
		 (10000),
		 (11000),
		 (12000),
		 (13000),
		 (14000),
		 (15000);



4)




5)



