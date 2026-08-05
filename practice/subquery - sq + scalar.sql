-- Q1. Find all employees who earn less than the average salary. Show their name, job role, and salary.
-- Q2. Find all employees whose age is greater than the average age of all employees. Show their name, age, and department.
-- Q3. Find all employees whose rating is above the average rating. Show their name, rating, and city.
-- Q4. Find all employees who have more years of experience than the average years of experience across the company. Show their name, years_exp, and job_role.
-- Q5. Find all employees whose salary is between 5000 below and 5000 above the average salary. Show their name, department, and salary. 
-- (Hint: you'll need the scalar subquery twice, or use a derived approach)

-- 1
select name, job_role, salary from employees
where salary < (Select avg(salary) from employees);

-- 2
select name, age, department from employees
where age > (select avg(age) from employees);

-- 3
select name, rating, city from employees
where rating > (select avg(rating) from employees);

-- 4
select name, years_exp, job_role from employees
where years_exp > (select avg(years_exp) from employees);

-- 5.1
SELECT name, department, salary FROM employees
WHERE salary BETWEEN (SELECT AVG(salary) FROM employees) - 5000 
                 AND (SELECT AVG(salary) FROM employees) + 5000;
      
-- 5.2
SELECT name, department, salary
FROM employees
WHERE ABS(salary - (SELECT AVG(salary) FROM employees)) <= 5000;

