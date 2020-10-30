USE employees;

SELECT *
FROM employees
-- WHERE first_name IN ('Irena', 'Vidya', 'Maya');
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
ORDER BY first_name DESC, last_name DESC;

SELECT CONCAT(first_name, ' ', last_name) AS fullname
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%' '%E';

SELECT emp_no, CONCAT(first_name, ' ',last_name) AS fullname, DATEDIFF(CURDATE(), '1900-01-01')
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;