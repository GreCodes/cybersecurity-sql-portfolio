
-- Retrieve after hours failed login attempts

SELECT *
FROM log_in_attempts
WHERE login_time > '18:00'
AND success = 0;


-- Retrieve login attempts on specific dates

SELECT *
FROM log_in_attempts
WHERE login_date = '2022-05-09'
OR login_date = '2022-05-08';


-- Retrieve login attempts outside Mexico

SELECT *
FROM log_in_attempts
WHERE NOT country LIKE 'MEX%';


-- Retrieve Marketing employees in East building

SELECT *
FROM employees
WHERE department = 'Marketing'
AND office LIKE 'East%';


-- Retrieve Finance or Sales employees

SELECT *
FROM employees
WHERE department = 'Finance'
OR department = 'Sales';


-- Retrieve employees not in IT

SELECT *
FROM employees
WHERE NOT department = 'Information Technology';
