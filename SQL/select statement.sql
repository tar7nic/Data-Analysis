select * from customers 
where contactLastName <> 'Young';

select  customerName, contactFirstName, contactLastName, phone,city, country
from customers
where country = 'USA' and contactFirstName = 'Julie';

select contactFirstName, contactLastName, city, country
from customers
where country = 'Norway'
or country = 'Sweden';
