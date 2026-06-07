select a.contactFirstName, a.contactLastName, b.orderDate, b.orderNumber
from customers a 
left join orders b
on a.customerNumber = b.customerNumber
-- where orderNumber is null