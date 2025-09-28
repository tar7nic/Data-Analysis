-- select * from employees
-- where upper(email) = 'DMURPHY@CLASSICMODELCARS.COM'

select *, upper(firstName) as uppercaseName
from employees ;

select * from employees 
where lower(firstName) = 'leslie';

