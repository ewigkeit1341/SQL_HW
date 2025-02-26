//Найти сотрудников, чья зарплата превышает 10000, и вывести их имя, фамилию и название департамента:

SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE employees.salary > 10000;


//Найти сотрудников, департаменты которых относятся к региону 'Americas', и вывести их имя и фамилию:
SELECT employees.first_name, employees.last_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id
JOIN countries ON locations.country_id = countries.country_id
JOIN regions ON countries.region_id = regions.region_id
WHERE regions.region_name = 'Americas';



//Найти департаменты, в которых есть сотрудники с зарплатой менее 15000:
SELECT DISTINCT departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE employees.salary < 15000;


//Найти департаменты, которые находятся в городе 'Seattle', отсортировать их по названию и вывести первые три:
SELECT departments.department_name
FROM departments
JOIN locations ON departments.location_id = locations.location_id
WHERE locations.city = 'Seattle'
ORDER BY departments.department_name
LIMIT 3;



//Найти сотрудника с максимальной зарплатой из департамента 'Finance' и вывести его данные (имя и фамилию):
SELECT employees.first_name, employees.last_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE departments.department_name = 'Finance'
ORDER BY employees.salary DESC
LIMIT 1;



