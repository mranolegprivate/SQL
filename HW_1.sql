SQL_HW_1
Создать .sql файл в котором под каждой командой напишите sql запрос который выполнит команду.

CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);

.sql файл выгружайте на гит и скидывайте ссылки на проверку.

 1. Вывести все поля и все строки.
  SELECT * 
  FROM students
  
 2. Вывести всех студентов в таблице
  SELECT name 
  FROM students
  
 3. Вывести только Id пользователей
 SELECT id 
 FROM students
 
 4. Вывести только имя пользователей
  SELECT name 
  FROM students
  
 5. Вывести только email пользователей
  SELECT email 
  FROM students
  
 6. Вывести имя и email пользователей
  SELECT name, email 
  FROM students
  
 7. Вывести id, имя, email и дату создания пользователей
  SELECT id, name, email 
  FROM students
 
 8. Вывести пользователей где password 12333
  SELECT * 
  FROM students where password like '%12333%'
  
 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
 SELECT * 
 FROM students
 WHERE created_on  = '2021-03-26 00:00:00'
 
 10. Вывести пользователей где в имени есть слово Анна
 SELECT * 
 FROM students
 WHERE name LIKE '%Анна%'
 
 11. Вывести пользователей где в имени в конце есть 8
 SELECT * 
 FROM students
 WHERE name LIKE '%8'
 
 12. Вывести пользователей где в имени в есть буква а
 SELECT * 
 FROM students
 WHERE name LIKE '%a%'
 
 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
 SELECT * 
 FROM students
 WHERE created_on = '2021-07-12 00:00:00'
 
 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
 SELECT * 
 FROM students
 WHERE created_on = '2021-07-12 00:00:00' and password = '1m313'
 
 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
 SELECT * 
 FROM students
 WHERE created_on = '2021-07-12 00:00:00' and name LIKE '%Andrey%'
 
 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
 SELECT * 
 FROM students
 WHERE created_on = '2021-07-12 00:00:00' and name LIKE '%8%'
 
 17. Вывести пользователя у которых id равен 110
 SELECT * 
 FROM students
 WHERE id = '110'
 
 18. Вывести пользователя у которых id равен 153
 SELECT * 
 FROM students
 WHERE id = '153'
 
 19. Вывести пользователя у которых id больше 140
 SELECT * 
 FROM students
 WHERE id > '140'
 
 20. Вывести пользователя у которых id меньше 130
 SELECT * 
 FROM students
 WHERE id < '130'
 
 21. Вывести пользователя у которых id меньше 127 или больше 188
 SELECT * 
 FROM students
 WHERE id < '127' or id > '188'
 
 22. Вывести пользователя у которых id меньше либо равно 137
 SELECT * 
 FROM students
 WHERE id <= '137'
 
 23. Вывести пользователя у которых id больше либо равно 137
 SELECT * 
 FROM students
 WHERE id >= '137'
 
 24. Вывести пользователя у которых id больше 180 но меньше 190
 SELECT * 
 FROM students
 WHERE id > '180' AND id < '190'
 
 25. Вывести пользователя у которых id между 180 и 190
 SELECT * 
 FROM students
 WHERE id between '180' AND '190'
 
 26. Вывести пользователей где password равен 12333, 1m313, 123313
 SELECT * 
 FROM students
 WHERE password in('12333', '1m313', '123313')
 
 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 SELECT * 
 FROM students
 WHERE created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')
 
 28. Вывести минимальный id.
 SELECT MIN(id) 
 FROM students
 
 29. Вывести максимальный.
 SELECT MAX(id) 
 FROM students
 
 30. Вывести количество пользователей.
 SELECT COUNT(id) 
 FROM students
 
 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 SELECT id, name, created_on
 FROM students
 ORDER BY created_on ASC
 
 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
 SELECT id, name, created_on
 FROM students
 ORDER BY created_on DESC
