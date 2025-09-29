-- DISTINCT
select distinct country
from customers;

-- LIKE
select * from customers
where city like '%New%';

select distinct city from customers
where city like '%New%';

-- ORDER BY
select * from employees
order by lastName;   -- + desc for descending order
