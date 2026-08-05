-- Using a CTE, find the total salary paid per department and then list only departments where the total salary exceeds 5,00,000.

with cte as(
	select department, 
		SUM(salary) as total_salary
    from employees
    group by department
)
select department, total_salary
from cte 
where total_salary > 500000
order by total_salary DESC;