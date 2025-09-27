-- exercise q1
-- select * from customers
-- where country = 'USA' 
-- and contactLastName = 'Brown';

-- suppose now you want all customers with surname brown from USA and uk then you have to do the following:

select * from customers
where (country = 'USA' or country = 'UK') -- bracket nahi lagaya toh and statement kaam nahi karega and it will show output of people form usa and uk
and contactLastName = 'Brown';

-- exercise q2
select email from employees where jobtitle = 'Sales Rep';