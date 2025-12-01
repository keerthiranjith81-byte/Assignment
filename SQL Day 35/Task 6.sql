select 
first_name,
phone,
email,
lower(trim(email)) as Trimmed_email,
replace(replace(replace(replace(phone,'-',''),'.',''),')',''),'(','')as replaced_number
from employees;