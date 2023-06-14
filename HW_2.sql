SQL HomeWork 2. JOIN

Подключится к 
Host: 159.69.151.133
Port: 5056
DB: подключение к той таблице где делали DDL операции
User: подключение к тем пользователем каким делали DDL операции
Pass: 123

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )


 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
	SELECT employee_name, monthly_salary
	FROM (
	(employee_salary es 
	JOIN employees e ON es.employee_id = e.id) 
	JOIN salary s ON es.salary_id = s.id)
 
 2. Вывести всех работников у которых ЗП меньше 2000.
 	SELECT employee_name, monthly_salary
	FROM employees 
	JOIN salary on employees.id = salary.id
	WHERE monthly_salary < 2000;
 
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 	SELECT monthly_salary, employee_name
	FROM ((employee_salary e_s 
	LEFT JOIN employees e on e_s.employee_id = e.id) 
	LEFT JOIN salary s on e_s.salary_id = s.id) 
	WHERE employee_name is NULL
 
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 	SELECT monthly_salary, employee_name
	FROM ((employee_salary e_s
	LEFT JOIN employees e on e_s.employee_id = e.id)
	LEFT JOIN salary s on e_s.salary_id = s.id) 
	WHERE employee_name is NULL and monthly_salary < 2000;
 
 5. Найти всех работников кому не начислена ЗП.
 	SELECT employee_name, monthly_salary
	FROM employees e
	LEFT JOIN salary s on e.id = s.id
	WHERE monthly_salary is NULL
 
 6. Вывести всех работников с названиями их должности.
 	select employee_name, role_name
	from employees e
	join roles r on e.id = r.id

 7. Вывести имена и должность только Java разработчиков.
 
 8. Вывести имена и должность только Python разработчиков.
 
 9. Вывести имена и должность всех QA инженеров.
 
 10. Вывести имена и должность ручных QA инженеров.
 
 11. Вывести имена и должность автоматизаторов QA
 
 12. Вывести имена и зарплаты Junior специалистов
 
 13. Вывести имена и зарплаты Middle специалистов
 
 14. Вывести имена и зарплаты Senior специалистов
 
 15. Вывести зарплаты Java разработчиков
 
 16. Вывести зарплаты Python разработчиков
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
 20. Вывести зарплаты Junior QA инженеров
 
 21. Вывести среднюю зарплату всех Junior специалистов
 
 22. Вывести сумму зарплат JS разработчиков
 
 23. Вывести минимальную ЗП QA инженеров
 
 24. Вывести максимальную ЗП QA инженеров
 
 25. Вывести количество QA инженеров
 
 26. Вывести количество Middle специалистов.
 
 27. Вывести количество разработчиков
 
 28. Вывести фонд (сумму) зарплаты разработчиков.
 
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 
