select customerName, count(orderNumber) as orders from orders t1
join customers t2
on t1.customerNumber = t2.customerNumber
group by customerName 
order by count(orderNumber) desc
limit 1;

select customerName, min(orderDate) as first, max(orderDate) as last 
from orders t1 
join customers t2
on t1.customerNumber = t2.customerNumber
group by customerName;