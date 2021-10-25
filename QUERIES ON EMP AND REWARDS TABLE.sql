drop table employee;
CREATE TABLE employee(
	emp_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	f_name VARCHAR(10),
	l_name VARCHAR(10),
	salary DECIMAL(8,0),
	joining_date DATE,
	Department VARCHAR(15)
);
INSERT INTO employee (f_name,l_name,salary,joining_date,Department) VALUES('bob','kinto',1000000,'2019-01-01','Finance');

select * from employee;
INSERT INTO employee (f_name,l_name,salary,joining_date,Department) VALUES('jerry','abraham',2200000,'2019-06-20','Finance');
INSERT INTO employee (f_name,l_name,salary,joining_date,Department) VALUES('philip','mathew',8900000,'2019-01-15','IT');
INSERT INTO employee (f_name,l_name,salary,joining_date,Department) VALUES('john','soso',6000000,'2019-02-05','Banking');
INSERT INTO employee (f_name,l_name,salary,joining_date,Department) VALUES('michael','jose',4000000,'2019-02-25','Insurance');
INSERT INTO employee (f_name,l_name,salary,joining_date,Department) VALUES('chreketo','kinto',1230000,'2019-02-28','Finance');
INSERT INTO employee (f_name,l_name,salary,joining_date,Department) VALUES('philip','jeans',9000000,'2019-02-28','Finance');

CREATE TABLE reward(
	emp_ref_id INT,
	FOREIGN KEY (emp_ref_id) REFERENCES employee(emp_id),
	date_reward DATE,
	amount DECIMAL(4)
);

INSERT INTO reward VALUES(1,'2019-05-11',1000);


INSERT INTO reward VALUES(2,'2019-02-15',5000);
INSERT INTO reward VALUES(3,'2019-04-22',2000);
INSERT INTO reward VALUES(1,'2019-06-20',8000);
SELECT * FROM reward;

SELECT f_name AS Employee_Name
FROM employee;

SELECT LOWER(l_name) AS LAST_NAME FROM employee;

SELECT DISTINCT Department FROM employee;

SELECT UPPER(SUBSTRING(f_name,1,4)) FROM employee;

SELECT LOCATE('h',f_name) FROM employee WHERE f_name='john';

SELECT LENGTH(f_name) FROM employee;

SELECT CONCAT(f_name,"_",l_name) AS FULL_NAME FROM employee;

SELECT YEAR(joining_date), MONTH(joining_date), DAY(joining_date) FROM employee;

SELECT * FROM employee
ORDER BY f_name ASC;

SELECT * FROM employee
ORDER BY f_name ASC, salary DESC;

SELECT * FROM employee WHERE f_name IN ('Bob','Alex');

SELECT * FROM employee WHERE f_name NOT IN ('Bob','Alex');

SELECT * FROM employee
WHERE f_name LIKE ('c%');

SELECT * FROM employee
WHERE f_name LIKE ('%c%');

SELECT * FROM employee
WHERE f_name LIKE ('___n');

SELECT * FROM employee 
WHERE salary BETWEEN 2000000 AND 5000000;

SELECT * FROM employee 
WHERE YEAR(joining_date) = '2018';

SELECT * FROM employee 
WHERE MONTH(joining_date) = '06';

SELECT * FROM employee 
WHERE joining_date < '2019-5-01';


SELECT reward.date_reward - employee.joining_date
from employee 
INNER JOIN reward
ON employee.emp_id = reward.emp_ref_id;

SELECT NOW();


SELECT department, SUM(salary) AS TOTAL
FROM employee
GROUP BY department;

SELECT department, SUM(salary) AS TOTAL
FROM employee
GROUP BY department
ORDER BY TOTAL ASC;

SELECT department, SUM(salary) AS TOTAL, COUNT(emp_id) AS NUMBER_OF_EMP
FROM employee
GROUP BY department
ORDER BY TOTAL DESC;

SELECT department, AVG(salary) 
FROM employee
GROUP BY department
ORDER BY AVG(salary) DESC;

SELECT department, MAX(salary) 
FROM employee
GROUP BY department
ORDER BY MAX(salary) DESC;

SELECT COUNT(*)
FROM employee;



SELECT YEAR(joining_date),MONTH(joining_date), count(*)
FROM employee
GROUP BY YEAR(joining_date),MONTH(joining_date);


SELECT e.* FROM employee AS e
WHERE EXISTS(
         SELECT r.emp_ref_id FROM reward AS r 
         WHERE e.emp_id = r.emp_ref_id
);
desc reward;

SELECT e.emp_id FROM employee as e WHERE e.emp_id NOT IN (SELECT r.emp_ref_id FROM reward as r);

SELECT f_name, 
CASE f_name 
   WHEN 'bob' THEN salary * .20 
   WHEN 'john' THEN salary * .10 
   ELSE salary * .15 
END 
AS "Gross salary" 
FROM employee;


INSERT INTO employee (l_name) VALUES ('Alex''');

select * from employee;

UPDATE reward 
SET amount ='1000' 
WHERE emp_ref_id = (
SELECT emp_id 
FROM employee 
WHERE f_name='Bob'
);

select * from reward;

desc employee;

SELECT f_name, amount 
FROM employee E 
INNER JOIN reward R 
ON E.emp_id = R.emp_ref_id;