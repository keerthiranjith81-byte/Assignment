select
id,
emp_code,
lpad(emp_code,4,'0') as emp_code_padded
from employees;