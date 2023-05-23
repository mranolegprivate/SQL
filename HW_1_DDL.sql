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

2) Наполнить таблицу employee 70 строками.
INSERT INTO employees (employee_name)
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

Таблица salary

3) Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null

Ответ:
create table salary(
	id serial primary key,
	monthly_salary Int not null
);

4) Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500

Ответ: 
INSERT INTO salary (monthly_salary)
VALUES (1000),
		(1100),
		 (1200),
		 (1300),
		 (1400),
		 (1500),
		 (1600),
		 (1700),
		 (1800),
		 (1900),
		 (2000),
		 (2100),
		 (2200),
		 (2300),
		 (2400),
		 (2500);

Таблица employee_salary
5) Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null

Ответ: 
	create table employee_salary (
	id serial  primary key,
	employee_id Int not null unique,
	salary_id Int not null
	);

6) Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

	INSERT INTO employee_salary(employee_id, salary_id)
	VALUES (1, 3),
			(3, 5),
			(5, 7),
			(7, 9),
			(9, 11),
			(11, 13),
			(13, 15),
			(15, 17),
			(17, 19),
			(19, 21),
			(2, 23),
			(4, 25),
			(6, 8),
			(8, 16),
			(10, 10),
			(12, 17),
			(14, 1),
			(16, 3),
			(18, 11),
			(20, 20),
			(21, 8),
			(25, 7),
			(28, 9),
			(36, 20),
			(35, 13),
			(22, 16),
			(33, 14),
			(65, 15),
			(47, 19),
			(29, 17),
			(42, 11),
			(44, 9),
			(56, 8),
			(68, 16),
			(50, 10),
			(62, 17),
			(24, 1),
			(37, 3),
			(38, 11),
			(69, 20);


Таблица roles

7) Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique

Ответ:
	create table roles(
	id Serial  primary key,
	role_name Int not null unique
);


8) Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles 
CHANGE role_name role_name VARCHAR(30) NOT NULL;

9) Наполнить таблицу roles 20 строками:
	INSERT INTO roles(role_name)
	VALUES 		('Junior Python developer'),
			('Middle Python developer'),
			('Senior Python developer'),
			('Junior Java developer'),
			('Middle Java developer'),
			('Senior Java developer'),
			('Junior JavaScript developer'),
			('Middle JavaScript developer'),
			('Senior JavaScript developer'),
			('Junior Manual QA engineer'),
			('Middle Manual QA engineer'),
			('Senior Manual QA engineer'),
			('Project Manager'),
			('Designer'),
			('HR'),
			('CEO'),
			('Sales manager'),
			('Junior Automation QA engineer'),
			('Middle Automation QA engineer'),
			('Senior Automation QA engineer');

Таблица roles_employee

10) Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

Ответ:   CREATE TABLE roles_employee(
 	 id serial PRIMARY KEY,
 	 employees_id INT NOT null unique,
 	 roleshw_id INT NOT null);


11) Наполнить таблицу roles_employee 40 строками:
INSERT INTO roles_employee(employees_id, rolesHW_id)
		VALUES  (7,2),
			(20,4),
			(3,1),
			(5,13),
			(23,10),
			(11,18),
			(10,9),
			(22,13),
			(21,3),
			(34,4),
			(36,13),
			(68,15),
			(64,7),
			(69,8),
			(67,9),
			(45,20),
			(40,19),
			(41,17),
			(42,16),
			(43,9),
			(35,4),
			(37,3),
			(25,8),
			(55,6),
			(66,17),
			(29,7),
			(46,11),
			(26,2),
			(28,11),
			(32,12),
			(39,15),
			(49,20),
			(52,5),
			(44,1),
			(27,8),
			(4,7),
			(6,11),
			(9,9),
			(63,5),
			(12,8);
