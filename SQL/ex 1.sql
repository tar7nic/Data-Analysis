select A.contactFirstName, A.contactLastName, B.orderDate, B.status from customers A
inner join orders B
on A.customerNumber = B.customerNumber;
