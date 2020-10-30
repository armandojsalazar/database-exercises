USE employees;

#SHows what database you are in
SELECT database();

#combines what you put into the brackets
SELECT CONCAT('1','2');

#Shows you the current time and date
SELECT NOW();

#Shows you the current date or current time or both
SELECT CURDATE();
SELECT CURTIME();
SELECT CURRENT_TIMESTAMP();

#Shows you the time in milliseconds
SELECT UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP('2020-07-20 09:00:00');

#Rounds up to the nearest digit
SELECT CEILING(505.505);
#Rounds down to the nearest digit
SELECT FLOOR(505.505);
#Rounds up to the nearest digit
SELECT ROUND(505.505);

#Shows PI
SELECT PI();

#Shows the AVG of salaries form employees database
SELECT AVG(salary)
FROM salaries
WHERE to_date = '9999-01-01';

#Shows the minimum salary from employee database
SELECT MIN(salary)
FROM salaries
WHERE to_date = '9999-01-01';

#Shows the sum of all the salaries from employee database
SELECT SUM(salary)
FROM salaries
WHERE to_date = '9999-01-01';