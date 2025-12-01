select 
first_name,
email,
trim(email) as trim_email
from employees
where trim(email)<>email;