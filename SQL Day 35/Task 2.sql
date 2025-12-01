select 
first_name,
hire_date,
datediff(now(),hire_date) as day_worked 
from employees where emp_id=1;