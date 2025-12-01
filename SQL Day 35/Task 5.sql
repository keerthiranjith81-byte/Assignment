select 
first_name,
phone,
replace(phone,'-','')as replaced_number
from employees;